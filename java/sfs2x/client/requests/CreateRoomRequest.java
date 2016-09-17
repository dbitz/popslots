package sfs2x.client.requests;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.SFSArray;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.variables.RoomVariable;
import sfs2x.client.exceptions.SFSValidationException;
import sfs2x.client.requests.mmo.MMORoomSettings;

public class CreateRoomRequest extends BaseRequest {
    public static final String KEY_AUTOJOIN = "aj";
    public static final String KEY_EVENTS = "ev";
    public static final String KEY_EXTCLASS = "xc";
    public static final String KEY_EXTID = "xn";
    public static final String KEY_EXTPROP = "xp";
    public static final String KEY_GROUP_ID = "g";
    public static final String KEY_ISGAME = "ig";
    public static final String KEY_MAXSPECTATORS = "ms";
    public static final String KEY_MAXUSERS = "mu";
    public static final String KEY_MAXVARS = "mv";
    public static final String KEY_MMO_DEFAULT_AOI = "maoi";
    public static final String KEY_MMO_MAP_HIGH_LIMIT = "mlhm";
    public static final String KEY_MMO_MAP_LOW_LIMIT = "mllm";
    public static final String KEY_MMO_PROXIMITY_UPDATE_MILLIS = "mpum";
    public static final String KEY_MMO_SEND_ENTRY_POINT = "msep";
    public static final String KEY_MMO_USER_MAX_LIMBO_SECONDS = "muls";
    public static final String KEY_NAME = "n";
    public static final String KEY_PASSWORD = "p";
    public static final String KEY_PERMISSIONS = "pm";
    public static final String KEY_ROOM = "r";
    public static final String KEY_ROOMVARS = "rv";
    public static final String KEY_ROOM_TO_LEAVE = "rl";
    private boolean autoJoin;
    private Room roomToLeave;
    private RoomSettings settings;

    public CreateRoomRequest(RoomSettings settings, boolean autoJoin, Room roomToLeave) {
        super(6);
        this.settings = settings;
        this.autoJoin = autoJoin;
        this.roomToLeave = roomToLeave;
    }

    public CreateRoomRequest(RoomSettings settings, boolean autoJoin) {
        this(settings, autoJoin, null);
    }

    public CreateRoomRequest(RoomSettings settings) {
        this(settings, false, null);
    }

    public void validate(ISmartFox sfs) throws SFSValidationException {
        boolean z = true;
        List<String> errors = new ArrayList();
        if (this.settings.getName() == null || this.settings.getName().length() == 0) {
            errors.add("Missing room name");
        }
        if (this.settings.getMaxUsers() <= 0) {
            errors.add("maxUsers must be > 0");
        }
        if (this.settings.getExtension() != null) {
            if (this.settings.getExtension().getClassName() == null || this.settings.getExtension().getClassName().length() == 0) {
                errors.add("Missing Extension class name");
            }
            if (this.settings.getExtension().getId() == null || this.settings.getExtension().getId().length() == 0) {
                errors.add("Missing Extension id");
            }
        }
        if (this.settings instanceof MMORoomSettings) {
            boolean z2;
            MMORoomSettings mmoSettings = this.settings;
            if (mmoSettings.getDefaultAOI() == null) {
                errors.add("Missing default AOI (area of interest)");
            }
            if (mmoSettings.getMapLimits() != null && (mmoSettings.getMapLimits().getLowerLimit() == null || mmoSettings.getMapLimits().getHigherLimit() == null)) {
                errors.add("Map limits must be both defined");
            }
            PrintStream printStream = System.out;
            String str = "---> %s AND (%s OR %s)";
            Object[] objArr = new Object[3];
            if (mmoSettings.getMapLimits() != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            objArr[0] = Boolean.valueOf(z2);
            objArr[1] = Boolean.valueOf(mmoSettings.getMapLimits().getLowerLimit() == null);
            if (mmoSettings.getMapLimits().getHigherLimit() != null) {
                z = false;
            }
            objArr[2] = Boolean.valueOf(z);
            printStream.println(String.format(str, objArr));
        }
        if (!errors.isEmpty()) {
            throw new SFSValidationException("CreateRoom request error", errors);
        }
    }

    public void execute(ISmartFox sfs) {
        this.sfso.putUtfString(KEY_NAME, this.settings.getName());
        this.sfso.putUtfString(KEY_GROUP_ID, this.settings.getGroupId());
        this.sfso.putUtfString(KEY_PASSWORD, this.settings.getPassword());
        this.sfso.putBool(KEY_ISGAME, this.settings.isGame());
        this.sfso.putShort(KEY_MAXUSERS, (short) this.settings.getMaxUsers());
        this.sfso.putShort(KEY_MAXSPECTATORS, (short) this.settings.getMaxSpectators());
        this.sfso.putShort(KEY_MAXVARS, (short) this.settings.getMaxVariables());
        if (this.settings.getVariables() != null && this.settings.getVariables().size() > 0) {
            ISFSArray roomVars = SFSArray.newInstance();
            for (RoomVariable rVar : this.settings.getVariables()) {
                roomVars.addSFSArray(rVar.toSFSArray());
            }
            this.sfso.putSFSArray(KEY_ROOMVARS, roomVars);
        }
        if (this.settings.getPermissions() != null) {
            List<Boolean> sfsPermissions = new ArrayList();
            sfsPermissions.add(Boolean.valueOf(this.settings.getPermissions().getAllowNameChange()));
            sfsPermissions.add(Boolean.valueOf(this.settings.getPermissions().getAllowPasswordStateChange()));
            sfsPermissions.add(Boolean.valueOf(this.settings.getPermissions().getAllowPublicMessages()));
            sfsPermissions.add(Boolean.valueOf(this.settings.getPermissions().getAllowResizing()));
            this.sfso.putBoolArray(KEY_PERMISSIONS, sfsPermissions);
        }
        if (this.settings.getEvents() != null) {
            List<Boolean> sfsEvents = new ArrayList();
            sfsEvents.add(Boolean.valueOf(this.settings.getEvents().getAllowUserEnter()));
            sfsEvents.add(Boolean.valueOf(this.settings.getEvents().getAllowUserExit()));
            sfsEvents.add(Boolean.valueOf(this.settings.getEvents().getAllowUserCountChange()));
            sfsEvents.add(Boolean.valueOf(this.settings.getEvents().getAllowUserVariablesUpdate()));
            this.sfso.putBoolArray(KEY_EVENTS, sfsEvents);
        }
        if (this.settings.getExtension() != null) {
            this.sfso.putUtfString(KEY_EXTID, this.settings.getExtension().getId());
            this.sfso.putUtfString(KEY_EXTCLASS, this.settings.getExtension().getClassName());
            if (this.settings.getExtension().getPropertiesFile() != null && this.settings.getExtension().getPropertiesFile().length() > 0) {
                this.sfso.putUtfString(KEY_EXTPROP, this.settings.getExtension().getPropertiesFile());
            }
        }
        if (this.settings instanceof MMORoomSettings) {
            MMORoomSettings mmoSettings = this.settings;
            if (mmoSettings.getDefaultAOI().isFloat()) {
                this.sfso.putFloatArray(KEY_MMO_DEFAULT_AOI, mmoSettings.getDefaultAOI().toFloatArray());
                if (mmoSettings.getMapLimits() != null) {
                    this.sfso.putFloatArray(KEY_MMO_MAP_LOW_LIMIT, mmoSettings.getMapLimits().getLowerLimit().toFloatArray());
                    this.sfso.putFloatArray(KEY_MMO_MAP_HIGH_LIMIT, mmoSettings.getMapLimits().getHigherLimit().toFloatArray());
                }
            } else {
                this.sfso.putIntArray(KEY_MMO_DEFAULT_AOI, mmoSettings.getDefaultAOI().toIntArray());
                if (mmoSettings.getMapLimits() != null) {
                    this.sfso.putIntArray(KEY_MMO_MAP_LOW_LIMIT, mmoSettings.getMapLimits().getLowerLimit().toIntArray());
                    this.sfso.putIntArray(KEY_MMO_MAP_HIGH_LIMIT, mmoSettings.getMapLimits().getHigherLimit().toIntArray());
                }
            }
            this.sfso.putShort(KEY_MMO_USER_MAX_LIMBO_SECONDS, (short) mmoSettings.getUserMaxLimboSeconds());
            this.sfso.putShort(KEY_MMO_PROXIMITY_UPDATE_MILLIS, (short) mmoSettings.getProximityListUpdateMillis());
            this.sfso.putBool(KEY_MMO_SEND_ENTRY_POINT, mmoSettings.isSendAOIEntryPoint());
        }
        this.sfso.putBool(KEY_AUTOJOIN, this.autoJoin);
        if (this.roomToLeave != null) {
            this.sfso.putInt(KEY_ROOM_TO_LEAVE, this.roomToLeave.getId());
        }
    }
}
