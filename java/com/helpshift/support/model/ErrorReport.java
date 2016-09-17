package com.helpshift.support.model;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.HSStorage;
import com.helpshift.support.Log;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.util.Meta;
import com.helpshift.util.TimeUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ErrorReport {
    public static final long BATCH_TIME = 86400000;
    public static final String KEY_ACTIVE_CONVERSATION_ID = "active_conversation_id";
    public static final String KEY_ACTIVE_MESSAGE_IDS = "active_message_ids";
    public static final String KEY_BREAD_CRUMBS = "bread_crumbs";
    public static final String KEY_CAUSE = "cause";
    public static final String KEY_CLASS_NAME = "class_name";
    public static final String KEY_CONVERSATION_CONTEXT = "conversation_context";
    public static final String KEY_DEVICE_INFO = "device_info";
    public static final String KEY_ERROR_DATA = "error_data";
    public static final String KEY_EXCEPTION_DETAIL = "exception_detail";
    public static final String KEY_FUNNEL = "funnel";
    public static final String KEY_HELPSHIFT_CONTEXT = "helpshift_context";
    public static final String KEY_LINE_NO = "line_no";
    public static final String KEY_MESSAGE = "message";
    public static final String KEY_METHOD_NAME = "method_name";
    public static final String KEY_PROFILE_ID = "profile_id";
    public static final String KEY_REPORT_TYPE = "report_type";
    public static final String KEY_THREAD_INFO = "thread_info";
    public static final String KEY_TIMESTAMP = "timestamp";
    public static final String KEY_TRACE = "trace";
    private static String TAG = Meta.TAG;
    private Map<String, String> conversationContext;
    private JSONObject deviceInfo;
    private Map<String, Object> errorData;
    private Map<String, String> helpshiftContext;
    private String reportId;
    private String reportType;

    public ErrorReport() {
        this.reportId = "";
        this.reportType = "";
        this.deviceInfo = new JSONObject();
        this.helpshiftContext = new HashMap();
        this.conversationContext = new HashMap();
        this.errorData = new HashMap();
    }

    public ErrorReport(Context context, HSApiData hsApiData, String reportType, Thread thread, Throwable throwable) {
        this();
        this.reportType = reportType;
        HSStorage hsStorage = hsApiData.storage;
        String timestamp = String.valueOf(TimeUtil.getAdjustedTimeInMillis(hsStorage.getServerTimeDelta()));
        this.reportId = "hs_error_report_" + UUID.randomUUID().toString();
        try {
            this.deviceInfo = Meta.getMinimalDeviceInfo(context);
            JSONArray jsonArrayFunnel = HSFunnel.getActions();
            JSONArray jsonArrayBreadCrumbs = hsStorage.getBreadCrumbs();
            if (jsonArrayFunnel == null) {
                this.helpshiftContext.put(KEY_FUNNEL, "[]");
            } else {
                this.helpshiftContext.put(KEY_FUNNEL, jsonArrayFunnel.toString());
            }
            this.helpshiftContext.put(KEY_BREAD_CRUMBS, jsonArrayBreadCrumbs.toString());
            String profileId = hsApiData.getProfileId();
            this.conversationContext.put(KEY_PROFILE_ID, profileId);
            String activeConversationId = null;
            if (!TextUtils.isEmpty(profileId)) {
                activeConversationId = hsStorage.getActiveConversation(profileId);
            }
            this.conversationContext.put(KEY_ACTIVE_CONVERSATION_ID, activeConversationId);
            this.conversationContext.put(KEY_ACTIVE_MESSAGE_IDS, new JSONArray(IssuesDataSource.getMessageIds(activeConversationId)).toString());
            String threadInfo = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            if (thread != null) {
                threadInfo = thread.toString();
            }
            this.errorData.put(KEY_THREAD_INFO, threadInfo);
            this.errorData.put(KEY_TIMESTAMP, timestamp);
            this.errorData.put(KEY_EXCEPTION_DETAIL, throwable);
        } catch (JSONException e) {
            Log.d(TAG, "Error parsing JSON", e);
        }
    }

    public static byte[] throwableToBytes(Throwable throwable) {
        IOException e;
        Throwable th;
        if (throwable == null) {
            return null;
        }
        byte[] bytes = null;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutput objectOutput = null;
        try {
            ObjectOutput objectOutput2 = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutput2.writeObject(throwable);
                bytes = byteArrayOutputStream.toByteArray();
                if (objectOutput2 != null) {
                    try {
                        objectOutput2.close();
                        byteArrayOutputStream.close();
                        objectOutput = objectOutput2;
                        return bytes;
                    } catch (IOException e2) {
                        Log.d(TAG, "Error converting throwableToBytes", e2);
                        objectOutput = objectOutput2;
                        return bytes;
                    }
                }
                return bytes;
            } catch (IOException e3) {
                e2 = e3;
                objectOutput = objectOutput2;
                try {
                    Log.d(TAG, "Error converting throwableToBytes", e2);
                    if (objectOutput != null) {
                        return bytes;
                    }
                    try {
                        objectOutput.close();
                        byteArrayOutputStream.close();
                        return bytes;
                    } catch (IOException e22) {
                        Log.d(TAG, "Error converting throwableToBytes", e22);
                        return bytes;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (objectOutput != null) {
                        try {
                            objectOutput.close();
                            byteArrayOutputStream.close();
                        } catch (IOException e222) {
                            Log.d(TAG, "Error converting throwableToBytes", e222);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                objectOutput = objectOutput2;
                if (objectOutput != null) {
                    objectOutput.close();
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        } catch (IOException e4) {
            e222 = e4;
            Log.d(TAG, "Error converting throwableToBytes", e222);
            if (objectOutput != null) {
                return bytes;
            }
            objectOutput.close();
            byteArrayOutputStream.close();
            return bytes;
        }
    }

    public static Throwable bytesToThrowable(byte[] bytes) {
        Exception e;
        Exception e2;
        Throwable th;
        if (bytes == null || bytes.length == 0) {
            return null;
        }
        Throwable throwable = null;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
        ObjectInput objectInput = null;
        try {
            ObjectInput objectInput2 = new ObjectInputStream(byteArrayInputStream);
            try {
                throwable = (Throwable) objectInput2.readObject();
                if (objectInput2 != null) {
                    try {
                        objectInput2.close();
                        byteArrayInputStream.close();
                        objectInput = objectInput2;
                        return throwable;
                    } catch (IOException e3) {
                        Log.d(TAG, "Error converting bytesToThrowable", e3);
                        objectInput = objectInput2;
                        return throwable;
                    }
                }
                return throwable;
            } catch (IOException e4) {
                e = e4;
                objectInput = objectInput2;
                e2 = e;
                try {
                    Log.d(TAG, "Error converting bytesToThrowable", e2);
                    if (objectInput == null) {
                        return throwable;
                    }
                    try {
                        objectInput.close();
                        byteArrayInputStream.close();
                        return throwable;
                    } catch (IOException e32) {
                        Log.d(TAG, "Error converting bytesToThrowable", e32);
                        return throwable;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (objectInput != null) {
                        try {
                            objectInput.close();
                            byteArrayInputStream.close();
                        } catch (IOException e322) {
                            Log.d(TAG, "Error converting bytesToThrowable", e322);
                        }
                    }
                    throw th;
                }
            } catch (ClassNotFoundException e5) {
                e = e5;
                objectInput = objectInput2;
                e2 = e;
                Log.d(TAG, "Error converting bytesToThrowable", e2);
                if (objectInput == null) {
                    return throwable;
                }
                objectInput.close();
                byteArrayInputStream.close();
                return throwable;
            } catch (Throwable th3) {
                th = th3;
                objectInput = objectInput2;
                if (objectInput != null) {
                    objectInput.close();
                    byteArrayInputStream.close();
                }
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            e2 = e;
            Log.d(TAG, "Error converting bytesToThrowable", e2);
            if (objectInput == null) {
                return throwable;
            }
            objectInput.close();
            byteArrayInputStream.close();
            return throwable;
        } catch (ClassNotFoundException e7) {
            e = e7;
            e2 = e;
            Log.d(TAG, "Error converting bytesToThrowable", e2);
            if (objectInput == null) {
                return throwable;
            }
            objectInput.close();
            byteArrayInputStream.close();
            return throwable;
        }
    }

    private JSONObject throwableToJSON(Throwable throwable) {
        if (throwable == null) {
            return null;
        }
        JSONObject jsonObjectException = new JSONObject();
        try {
            jsonObjectException.put(KEY_MESSAGE, throwable.getMessage());
            JSONArray jsonArrayStackTrace = new JSONArray();
            for (StackTraceElement stackTraceElement : throwable.getStackTrace()) {
                JSONObject jsonObjectTraceElement = new JSONObject();
                jsonObjectTraceElement.put(KEY_CLASS_NAME, stackTraceElement.getClassName());
                jsonObjectTraceElement.put(KEY_METHOD_NAME, stackTraceElement.getMethodName());
                jsonObjectTraceElement.put(KEY_LINE_NO, stackTraceElement.getLineNumber());
                jsonArrayStackTrace.put(jsonObjectTraceElement);
            }
            jsonObjectException.put(KEY_TRACE, jsonArrayStackTrace);
            jsonObjectException.put(KEY_CAUSE, throwableToJSON(throwable.getCause()));
            return jsonObjectException;
        } catch (JSONException e) {
            Log.d(TAG, "Error parsing JSON in throwableToJSON", e);
            return jsonObjectException;
        }
    }

    public String getReportId() {
        return this.reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId;
    }

    public String getReportType() {
        return this.reportType;
    }

    public void setReportType(String reportType) {
        this.reportType = reportType;
    }

    public JSONObject getDeviceInfo() {
        return this.deviceInfo;
    }

    public void setDeviceInfo(String deviceInfo) {
        try {
            this.deviceInfo = new JSONObject(deviceInfo);
        } catch (JSONException e) {
            Log.d(TAG, "Error parsing JSON in setDeviceInfo", e);
        }
    }

    public Map<String, String> getHelpshiftContext() {
        return this.helpshiftContext;
    }

    public void setHelpshiftContext(Map<String, String> helpshiftContext) {
        this.helpshiftContext = helpshiftContext;
    }

    public Map<String, String> getConversationContext() {
        return this.conversationContext;
    }

    public void setConversationContext(Map<String, String> conversationContext) {
        this.conversationContext = conversationContext;
    }

    public Map<String, Object> getErrorData() {
        return this.errorData;
    }

    public void setErrorData(Map<String, Object> errorData) {
        this.errorData = errorData;
    }

    public JSONObject getJSONObject() {
        JSONObject errorReport = new JSONObject();
        try {
            errorReport.put(KEY_REPORT_TYPE, this.reportType);
            errorReport.put(KEY_DEVICE_INFO, this.deviceInfo);
            errorReport.put(KEY_HELPSHIFT_CONTEXT, new JSONObject(this.helpshiftContext).toString());
            errorReport.put(KEY_CONVERSATION_CONTEXT, new JSONObject(this.conversationContext).toString());
            JSONObject jsonObjectErrorData = new JSONObject();
            jsonObjectErrorData.put(KEY_THREAD_INFO, this.errorData.get(KEY_THREAD_INFO));
            jsonObjectErrorData.put(KEY_TIMESTAMP, this.errorData.get(KEY_TIMESTAMP));
            jsonObjectErrorData.put(KEY_EXCEPTION_DETAIL, throwableToJSON((Throwable) this.errorData.get(KEY_EXCEPTION_DETAIL)));
            errorReport.put(KEY_ERROR_DATA, jsonObjectErrorData.toString());
        } catch (JSONException e) {
            Log.d(TAG, "Error parsing JSON in getJSONObject", e);
        }
        return errorReport;
    }
}
