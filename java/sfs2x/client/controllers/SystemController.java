package sfs2x.client.controllers;

import com.facebook.widget.PlacePickerFragment;
import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.HashMap;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.bitswarm.BaseController;
import sfs2x.client.bitswarm.BitSwarmClient;
import sfs2x.client.bitswarm.IMessage;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.SFSRoom;
import sfs2x.client.entities.SFSUser;
import sfs2x.client.entities.User;
import sfs2x.client.entities.managers.IRoomManager;
import sfs2x.client.entities.variables.SFSUserVariable;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.game.InviteUsersRequest;

public class SystemController extends BaseController {
    private static final String RES_HANDLERS_PACKAGE = "sfs2x.client.controllers.system.";
    private BitSwarmClient bitSwarm;
    private Map<String, IResHandler> responseHandlerCache;
    private Map<Integer, String> responseHandlers;
    private ISmartFox sfs;

    public SystemController() {
        initRequestHandlers();
    }

    public SystemController(ISmartFox sfs) {
        this();
        this.sfs = sfs;
    }

    public SystemController(BitSwarmClient bitSwarm) {
        this();
        this.bitSwarm = bitSwarm;
        this.sfs = bitSwarm.getSfs();
    }

    private void initRequestHandlers() {
        this.responseHandlers = new HashMap();
        this.responseHandlerCache = new HashMap();
        this.responseHandlers.put(Integer.valueOf(0), "ResHandshake");
        this.responseHandlers.put(Integer.valueOf(1), "ResLogin");
        this.responseHandlers.put(Integer.valueOf(2), "ResLogout");
        this.responseHandlers.put(Integer.valueOf(4), "ResJoinRoom");
        this.responseHandlers.put(Integer.valueOf(6), "ResCreateRoom");
        this.responseHandlers.put(Integer.valueOf(7), "ResGenericMessage");
        this.responseHandlers.put(Integer.valueOf(8), "ResChangeRoomName");
        this.responseHandlers.put(Integer.valueOf(9), "ResChangeRoomPassword");
        this.responseHandlers.put(Integer.valueOf(19), "ResChangeRoomCapacity");
        this.responseHandlers.put(Integer.valueOf(11), "ResSetRoomVariables");
        this.responseHandlers.put(Integer.valueOf(12), "ResSetUserVariables");
        this.responseHandlers.put(Integer.valueOf(13), "ResCallExtension");
        this.responseHandlers.put(Integer.valueOf(15), "ResSubscribeRoomGroup");
        this.responseHandlers.put(Integer.valueOf(16), "ResUnsubscribeRoomGroup");
        this.responseHandlers.put(Integer.valueOf(17), "ResSpectatorToPlayer");
        this.responseHandlers.put(Integer.valueOf(18), "ResPlayerToSpectator");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.InitBuddyList), "ResInitBuddyList");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.AddBuddy), "ResAddBuddy");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.RemoveBuddy), "ResRemoveBuddy");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.BlockBuddy), "ResBlockBuddy");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.GoOnline), "ResGoOnline");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.SetBuddyVariables), "ResSetBuddyVariables");
        this.responseHandlers.put(Integer.valueOf(27), "ResFindRooms");
        this.responseHandlers.put(Integer.valueOf(28), "ResFindUsers");
        this.responseHandlers.put(Integer.valueOf(InviteUsersRequest.MAX_EXPIRY_TIME), "ResInviteUsers");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.InvitationReply), "ResInvitationReply");
        this.responseHandlers.put(Integer.valueOf(BaseRequest.QuickJoinGame), "ResQuickJoinGame");
        this.responseHandlers.put(Integer.valueOf(29), "ResPingPong");
        this.responseHandlers.put(Integer.valueOf(30), "ResSetUserPosition");
        this.responseHandlers.put(Integer.valueOf(PlacePickerFragment.DEFAULT_RADIUS_IN_METERS), "ResUserEnterRoom");
        this.responseHandlers.put(Integer.valueOf(1001), "ResUserCountChange");
        this.responseHandlers.put(Integer.valueOf(1002), "ResUserLost");
        this.responseHandlers.put(Integer.valueOf(1003), "ResRoomLost");
        this.responseHandlers.put(Integer.valueOf(1004), "ResUserExitRoom");
        this.responseHandlers.put(Integer.valueOf(1005), "ResClientDisconnect");
        this.responseHandlers.put(Integer.valueOf(1006), "ResReconnectionFailure");
        this.responseHandlers.put(Integer.valueOf(1007), "ResSetMMOItemVariable");
    }

    public void handleMessage(IMessage message) {
        if (this.sfs.isDebug()) {
            this.log.info("Message: " + getEvtName(message.getId()) + " " + message);
        }
        String resHandlerName = (String) this.responseHandlers.get(Integer.valueOf(message.getId()));
        if (resHandlerName != null) {
            try {
                IResHandler resHandler;
                if (this.responseHandlerCache.containsKey(resHandlerName)) {
                    resHandler = (IResHandler) this.responseHandlerCache.get(resHandlerName);
                } else {
                    resHandler = (IResHandler) Class.forName(new StringBuilder(RES_HANDLERS_PACKAGE).append(resHandlerName).toString()).newInstance();
                    this.responseHandlerCache.put(resHandlerName, resHandler);
                }
                resHandler.handleResponse(this.sfs, this, message);
                return;
            } catch (ClassNotFoundException e) {
                this.log.warn(String.format("Cannot instantiate handler for eventId: %s, %s, Class: %s.%s", new Object[]{Integer.valueOf(message.getId()), resHandlerName, RES_HANDLERS_PACKAGE, resHandlerName}));
                return;
            } catch (Exception e2) {
                this.log.warn("Error in handling event: " + e2);
                e2.printStackTrace();
                return;
            }
        }
        this.log.warn("Unknown message id: " + message.getId());
    }

    private String getEvtName(int id) {
        return (String) this.responseHandlers.get(Integer.valueOf(id));
    }

    public void populateRoomList(ISFSArray roomList) throws SFSException {
        IRoomManager roomManager = this.sfs.getRoomManager();
        for (int j = 0; j < roomList.size(); j++) {
            roomManager.replaceRoom(SFSRoom.fromSFSArray(roomList.getSFSArray(j)));
        }
    }

    public User getOrCreateUser(ISFSArray userObj, boolean addToGlobalManager, Room room) throws SFSException {
        User user = this.sfs.getUserManager().getUserById(userObj.getInt(0).intValue());
        if (user == null) {
            user = SFSUser.fromSFSArray(userObj, room);
            user.setUserManager(this.sfs.getUserManager());
        } else if (room != null) {
            user.setPlayerId(userObj.getShort(3).shortValue(), room);
            ISFSArray uVars = userObj.getSFSArray(4);
            for (int i = 0; i < uVars.size(); i++) {
                user.setVariable(SFSUserVariable.fromSFSArray(uVars.getSFSArray(i)));
            }
        }
        if (addToGlobalManager) {
            this.sfs.getUserManager().addUser(user);
        }
        return user;
    }
}
