package com.scene53.smartfox;

import android.app.Activity;
import android.util.Log;
import com.facebook.Response;
import com.facebook.internal.ServerProtocol;
import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.entities.data.SFSDataType;
import com.smartfoxserver.v2.entities.data.SFSObject;
import com.smartfoxserver.v2.exceptions.SFSException;
import sfs2x.client.SmartFox;
import sfs2x.client.core.BaseEvent;
import sfs2x.client.core.IEventListener;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.requests.ExtensionRequest;
import sfs2x.client.requests.LoginRequest;

public class SmartFoxImpl implements IEventListener {
    public static Activity s_activity;
    static SmartFoxImpl s_instance = null;
    static ISFSObject s_loginParams;
    static String s_password;
    static String s_serverIP;
    static int s_serverPort;
    static String s_userName;
    static String s_zoneName;
    SmartFox m_sfsClient;

    public native void onSFSClientConnected();

    public native void onSFSClientConnectionError();

    public native void onSFSClientConnectionLost();

    public native void onSFSClientExtensionResponse(ISFSObject iSFSObject);

    public native void onSFSClientLoggedIn();

    public native void onSFSClientLoginError();

    public native void onSFSClientRoomJoined();

    public static SmartFoxImpl getInstance() {
        if (s_instance == null) {
            s_instance = new SmartFoxImpl();
        }
        return s_instance;
    }

    public static void initSmartFox() {
        s_activity.runOnUiThread(new Runnable() {
            public void run() {
                SmartFoxImpl.getInstance().initSmartFoxInstance();
            }
        });
    }

    public static void connectSmartFox(String serverIP, int serverPort) {
        s_serverIP = serverIP;
        s_serverPort = serverPort;
        s_activity.runOnUiThread(new Runnable() {
            public void run() {
                SmartFoxImpl.getInstance().connectInstance(SmartFoxImpl.s_serverIP, SmartFoxImpl.s_serverPort);
            }
        });
    }

    public static void disconnectSmartFox() {
        s_activity.runOnUiThread(new Runnable() {
            public void run() {
                SmartFoxImpl.getInstance().disconnectInstance();
            }
        });
    }

    public static void killConnectionSmartFox() {
        s_activity.runOnUiThread(new Runnable() {
            public void run() {
                SmartFoxImpl.getInstance().killConnectionInstance();
            }
        });
    }

    public static void loginSmartFox(String userName, String password, String zoneName, ISFSObject params) {
        s_userName = userName;
        s_password = password;
        s_zoneName = zoneName;
        s_loginParams = params;
        s_activity.runOnUiThread(new Runnable() {
            public void run() {
                SmartFoxImpl.getInstance().loginInstance(SmartFoxImpl.s_userName, SmartFoxImpl.s_password, SmartFoxImpl.s_zoneName, SmartFoxImpl.s_loginParams);
            }
        });
    }

    public static void sendRequestSmartFox(String reqName, ISFSObject params) {
        final String innerReqName = reqName;
        final ISFSObject innerParams = params;
        s_activity.runOnUiThread(new Runnable() {
            public void run() {
                SmartFoxImpl.getInstance().sendRequest(innerReqName, innerParams);
            }
        });
    }

    public void initSmartFoxInstance() {
        this.m_sfsClient = new SmartFox(false);
        this.m_sfsClient.addEventListener(SFSEvent.CONNECTION, this);
        this.m_sfsClient.addEventListener(SFSEvent.CONNECTION_LOST, this);
        this.m_sfsClient.addEventListener(SFSEvent.LOGIN, this);
        this.m_sfsClient.addEventListener(SFSEvent.LOGIN_ERROR, this);
        this.m_sfsClient.addEventListener(SFSEvent.ROOM_JOIN, this);
        this.m_sfsClient.addEventListener(SFSEvent.HANDSHAKE, this);
        this.m_sfsClient.addEventListener(SFSEvent.SOCKET_ERROR, this);
        this.m_sfsClient.addEventListener(SFSEvent.EXTENSION_RESPONSE, this);
        Log.v("SFSImpl", "SFS initialized " + this.m_sfsClient.getVersion());
        Log.v("SFSImpl", "initSmartFoxInstance threadId (UITHREAD): " + Thread.currentThread().getId());
    }

    public void connectInstance(String serverIP, int serverPort) {
        this.m_sfsClient.connect(serverIP, serverPort);
        Log.v("SFSImpl", "SFS connecting...");
    }

    public void disconnectInstance() {
        this.m_sfsClient.disconnect();
        Log.v("SFSImpl", "SFS disconnecting...");
    }

    public void killConnectionInstance() {
        this.m_sfsClient.killConnection();
    }

    public void loginInstance(String userName, String password, String zoneName, ISFSObject params) {
        this.m_sfsClient.send(new LoginRequest(userName, password, zoneName, params));
        Log.v("SFSImpl", "SFS loggin start...");
    }

    public void sendRequest(String cmdName, ISFSObject params) {
        this.m_sfsClient.send(new ExtensionRequest(cmdName, params));
    }

    public void destroySmartFoxInstance() {
        disconnect();
        this.m_sfsClient.removeAllEventListeners();
    }

    public void disconnect() {
        if (this.m_sfsClient.isConnected()) {
            this.m_sfsClient.disconnect();
        }
    }

    public void dispatch(final BaseEvent event) throws SFSException {
        s_activity.runOnUiThread(new Runnable() {
            public void run() {
                if (event.getType().equalsIgnoreCase(SFSEvent.CONNECTION)) {
                    if (event.getArguments().get(Response.SUCCESS_KEY).equals(Boolean.valueOf(true))) {
                        Log.v("SFSImpl", "SFS connected!!!");
                        SmartFoxImpl.this.onSFSClientConnected();
                        return;
                    }
                    SmartFoxImpl.this.onSFSClientConnectionError();
                } else if (event.getType().equalsIgnoreCase(SFSEvent.CONNECTION_LOST)) {
                    SmartFoxImpl.this.onSFSClientConnectionLost();
                } else if (!event.getType().equalsIgnoreCase(SFSEvent.LOGIN)) {
                    if (event.getType().equalsIgnoreCase(SFSEvent.LOGIN_ERROR)) {
                        SmartFoxImpl.this.onSFSClientLoginError();
                    } else if (event.getType().equalsIgnoreCase(SFSEvent.ROOM_JOIN)) {
                        SmartFoxImpl.this.onSFSClientRoomJoined();
                    } else if (event.getType().equalsIgnoreCase(SFSEvent.EXTENSION_RESPONSE)) {
                        ISFSObject resObj = new SFSObject();
                        SmartFoxImpl.this.onSFSClientExtensionResponse((ISFSObject) event.getArguments().get("params"));
                    }
                }
            }
        });
    }

    public static short getSFSObjectShort(ISFSObject obj, String key) {
        return obj.getShort(key).shortValue();
    }

    public static boolean getSFSObjectBoolean(ISFSObject obj, String key) {
        if (obj.get(key).getTypeId() == SFSDataType.UTF_STRING) {
            String strVal = obj.getUtfString(key);
            Log.i("Scene53", "getSFSObjectBoolean " + key + " / " + strVal);
            return ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(strVal);
        }
        Boolean bObj = obj.getBool(key);
        Log.i("Scene53", "getSFSObjectBoolean " + key + " / " + bObj);
        return bObj.booleanValue();
    }

    public static int getSFSObjectInt(ISFSObject obj, String key) {
        return obj.getInt(key).intValue();
    }

    public static float getSFSObjectFloat(ISFSObject obj, String key) {
        return obj.getFloat(key).floatValue();
    }

    public static double getSFSObjectDouble(ISFSObject obj, String key) {
        return obj.getDouble(key).doubleValue();
    }

    public static long getSFSObjectLong(ISFSObject obj, String key) {
        return obj.getLong(key).longValue();
    }

    public static ISFSObject getSFSObjectFromArray(ISFSArray arr, int index) {
        return arr.getSFSObject(index);
    }

    public static int getArraySize(ISFSArray arr) {
        return arr.size();
    }

    public static double getDoubleFromArray(ISFSArray arr, int index) {
        return arr.getDouble(index).doubleValue();
    }

    public static String[] getSFSObjectKeys(ISFSObject obj) {
        return (String[]) obj.getKeys().toArray(new String[0]);
    }

    public static int[] getIntArrayFromSFSObject(SFSObject obj, String key) {
        Integer[] objArr = (Integer[]) obj.getIntArray(key).toArray(new Integer[0]);
        int[] arr = new int[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            arr[i] = objArr[i].intValue();
        }
        return arr;
    }

    public static boolean[] getBoolArrayFromSFSObject(SFSObject obj, String key) {
        Boolean[] objArr = (Boolean[]) obj.getBoolArray(key).toArray(new Boolean[0]);
        boolean[] arr = new boolean[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            arr[i] = objArr[i].booleanValue();
        }
        return arr;
    }

    public static double[] getDoubleArrayFromSFSObject(ISFSObject obj, String key) {
        Double[] objArr = (Double[]) obj.getDoubleArray(key).toArray(new Double[0]);
        double[] arr = new double[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            arr[i] = objArr[i].doubleValue();
        }
        return arr;
    }
}
