package com.helpshift.support.res.values;

import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.helpshift.support.HSStorage;
import com.helpshift.support.constants.SectionsColumns;
import com.helpshift.util.HelpshiftContext;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.JoinRoomRequest;
import sfs2x.client.requests.game.InviteUsersRequest;

public final class HSConfig {
    public static final String TAG = "HelpShiftDebug";
    public static Map<String, Object> configData = new HashMap();
    public static Map<String, String> themeData = new HashMap();

    static {
        themeData.put(SectionsColumns.TITLE, "Help");
        themeData.put(JoinRoomRequest.KEY_AS_SPECTATOR, "Describe your problem");
        themeData.put("hc", "516B90");
        themeData.put("tc", "535353");
        themeData.put("hl", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        configData.put("bcl", Integer.valueOf(10));
        configData.put("dbgl", Integer.valueOf(0));
        configData.put("rurl", "");
        configData.put(InviteUsersRequest.KEY_TIME, themeData);
        configData.put("pfe", Boolean.valueOf(true));
        configData.put("pr", null);
        configData.put("rne", Boolean.valueOf(false));
        configData.put("dia", Boolean.valueOf(false));
        configData.put("csat", Boolean.valueOf(false));
        configData.put("san", Boolean.valueOf(true));
    }

    public static void updateThemeData(JSONObject theme) throws JSONException {
        themeData.put(SectionsColumns.TITLE, theme.getString(SectionsColumns.TITLE));
        themeData.put(JoinRoomRequest.KEY_AS_SPECTATOR, theme.getString(JoinRoomRequest.KEY_AS_SPECTATOR));
        themeData.put("hc", theme.getString("hc"));
        themeData.put("tc", theme.getString("tc"));
        themeData.put("hl", theme.getString("hl"));
        new HSStorage(HelpshiftContext.getApplicationContext()).updateDisableHelpshiftBranding();
    }

    public static void updateConfig(JSONObject config) {
        configData.put("rurl", config.optString("rurl", ""));
        configData.put("bcl", Integer.valueOf(config.optInt("bcl", 10)));
        configData.put("dbgl", Integer.valueOf(config.optInt("dbgl", 25)));
        configData.put("pr", config.optJSONObject("pr"));
        configData.put("pfe", Boolean.valueOf(config.optBoolean("pfe", true)));
        configData.put("rne", Boolean.valueOf(config.optBoolean("rne", false)));
        configData.put("dia", Boolean.valueOf(config.optBoolean("dia", false)));
        configData.put("csat", Boolean.valueOf(config.optBoolean("csat", false)));
        configData.put("san", Boolean.valueOf(config.optBoolean("san", true)));
        try {
            if (config.has(InviteUsersRequest.KEY_TIME)) {
                updateThemeData(config.getJSONObject(InviteUsersRequest.KEY_TIME));
            }
        } catch (JSONException e) {
            Log.d(TAG, e.toString(), e);
        }
    }
}
