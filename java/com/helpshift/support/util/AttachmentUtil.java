package com.helpshift.support.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.helpshift.R;
import com.helpshift.support.D.string;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSStorage;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.model.Issue;
import com.helpshift.support.model.Message;
import com.helpshift.support.storage.IssuesDataSource;
import com.helpshift.support.viewstructs.HSMsg;
import com.helpshift.util.HSFormat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;

public final class AttachmentUtil {
    public static final int ATTACH_SCR_ASK_PERMISSION_REQ_CODE = 89;
    public static final int DOWNLOAD_ATTACHMENT_ASK_PERMSSION_REQ_CODE = 90;
    private static final String FILE_TYPE_AUDIO = "audio/";
    private static final String FILE_TYPE_CSV = "text/csv";
    private static final String FILE_TYPE_MS_OFFICE_SUBSCRIPT = "vnd.openxmlformats-officedocument";
    private static final String FILE_TYPE_PDF = "application/pdf";
    private static final String FILE_TYPE_RTF = "text/rtf";
    private static final String FILE_TYPE_TEXT = "text/";
    private static final String FILE_TYPE_VIDEO = "video/";
    public static final String LOCAL_RSC_MSG_ID_PREFIX = "localRscMessage_";
    public static final int SCREENSHOT_ATTACH_REQ_CODE = 0;
    private static final String TAG = "HelpShiftDebug";

    private static void showScreenshotErrorToast(Activity activity) {
        SnackbarUtil.showSnackbar(activity.getWindow().getDecorView(), R.string.hs__screenshot_cloud_attach_error, -1);
    }

    private static void showScreenshotNotOfImageTypeErrorToast(Activity activity) {
        SnackbarUtil.showSnackbar(activity.getWindow().getDecorView(), R.string.hs__screenshot_upload_error_msg, -1);
    }

    private static String getPath(Activity activity, Uri selectedImageUri) {
        Cursor cursor = activity.managedQuery(selectedImageUri, new String[]{"_data"}, null, null, null);
        int column_index = cursor.getColumnIndexOrThrow("_data");
        cursor.moveToFirst();
        return cursor.getString(column_index);
    }

    public static String getPath(Activity activity, Intent dataIntent) {
        try {
            String screenshot = getPath(activity, dataIntent.getData());
            File screenshotFile = new File(screenshot);
            if (screenshotFile.exists()) {
                if (screenshotFile.length() <= Long.valueOf(5242880).longValue()) {
                    return screenshot;
                }
                SnackbarUtil.showSnackbar(activity.getWindow().getDecorView(), String.format(activity.getResources().getString(string.hs__screenshot_limit_error), new Object[]{Float.valueOf(((float) screenshotLimit.longValue()) / 1048576.0f)}), -1);
                return null;
            }
            showScreenshotErrorToast(activity);
            return null;
        } catch (NullPointerException e) {
            showScreenshotErrorToast(activity);
            return null;
        }
    }

    public static Bitmap getBitmap(String path, int scale) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        Options options = new Options();
        options.inSampleSize = 4;
        Bitmap bitmap = BitmapFactory.decodeFile(path, options);
        if (scale <= 0 || bitmap == null) {
            return bitmap;
        }
        return Bitmap.createScaledBitmap(bitmap, scale, (int) (((float) scale) * (((float) options.outHeight) / ((float) options.outWidth))), false);
    }

    public static Bitmap getUnscaledBitmap(String path) {
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        Options options = new Options();
        options.inScaled = false;
        return BitmapFactory.decodeFile(path, options);
    }

    public static Bitmap getBitmapFromDrawable(Context context, int resourceId) {
        return BitmapFactory.decodeResource(context.getResources(), resourceId);
    }

    public static String copyAttachment(Context context, HSApiData hsApiData, String filename, String messageId, int attachId) throws IOException {
        String absolutePath;
        NullPointerException e;
        Throwable th;
        InputStream input = null;
        FileOutputStream output = null;
        try {
            String outputName = messageId + attachId + "-thumbnail";
            File outputFile = new File(context.getFilesDir(), outputName);
            absolutePath = outputFile.getAbsolutePath();
            if (!outputFile.exists()) {
                hsApiData.storeFile(outputName);
                InputStream input2 = new FileInputStream(new File(filename));
                try {
                    output = context.openFileOutput(outputName, SCREENSHOT_ATTACH_REQ_CODE);
                    byte[] data = new byte[1024];
                    while (true) {
                        int read = input2.read(data);
                        if (read == -1) {
                            break;
                        }
                        output.write(data, SCREENSHOT_ATTACH_REQ_CODE, read);
                    }
                    input = input2;
                } catch (NullPointerException e2) {
                    e = e2;
                    input = input2;
                    try {
                        Log.d(TAG, "NPE", e);
                        absolutePath = null;
                        if (output != null) {
                            output.close();
                        }
                        if (input != null) {
                            input.close();
                        }
                        return absolutePath;
                    } catch (Throwable th2) {
                        th = th2;
                        if (output != null) {
                            output.close();
                        }
                        if (input != null) {
                            input.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    input = input2;
                    if (output != null) {
                        output.close();
                    }
                    if (input != null) {
                        input.close();
                    }
                    throw th;
                }
            }
            if (output != null) {
                output.close();
            }
            if (input != null) {
                input.close();
            }
        } catch (NullPointerException e3) {
            e = e3;
            Log.d(TAG, "NPE", e);
            absolutePath = null;
            if (output != null) {
                output.close();
            }
            if (input != null) {
                input.close();
            }
            return absolutePath;
        }
        return absolutePath;
    }

    public static HSMsg addAndGetLocalRscMsg(HSStorage storage, String issueId, String screenshot) {
        return addAndGetLocalRscMsg(storage, issueId, screenshot, false);
    }

    public static HSMsg addAndGetLocalRscMsg(HSStorage storage, String issueId, String screenshot, boolean inProgress) {
        try {
            String messageId = LOCAL_RSC_MSG_ID_PREFIX + UUID.randomUUID().toString();
            String date = resolveTimestamp(IssuesDataSource.getIssue(issueId));
            String body = "Attaching Screenshot...";
            JSONObject message = new JSONObject();
            message.put(LoginRequest.KEY_ID, messageId);
            message.put(MessageColumns.ISSUE_ID, issueId);
            message.put(MessageColumns.TYPE, "rsc");
            message.put(MessageColumns.ORIGIN, "admin");
            message.put(MessageColumns.BODY, body);
            message.put(MessageColumns.INVISIBLE, false);
            message.put(MessageColumns.SCREENSHOT, screenshot);
            message.put("state", SCREENSHOT_ATTACH_REQ_CODE);
            message.put("inProgress", inProgress);
            message.put(MessageColumns.CREATED_AT, date);
            message.put("seen", true);
            message.put(MessageColumns.AUTHOR, new JSONObject());
            message.put(MessageColumns.META, new JSONObject());
            JSONArray messages = new JSONArray();
            messages.put(message);
            IssuesDataSource.storeMessages(IssuesUtil.jsonArrayToMessageList(messages));
            return new HSMsg(messageId, "rsc", "admin", body, date, Boolean.valueOf(false), screenshot, SCREENSHOT_ATTACH_REQ_CODE, Boolean.valueOf(false), "");
        } catch (JSONException e) {
            Log.d(TAG, "addAndGetLocalRscMessage", e);
            return null;
        }
    }

    private static String resolveTimestamp(Issue issue) {
        Date localTs = new Date();
        try {
            List<Message> messageList = issue.getMessageList();
            Date lastMessageTs = HSFormat.issueTsFormat.parse(((Message) messageList.get(messageList.size() - 1)).getCreatedAt());
            if (localTs.before(lastMessageTs)) {
                localTs.setTime(lastMessageTs.getTime() + 3000);
            }
        } catch (ParseException e) {
            Log.d(TAG, "resolveDate", e);
        }
        return HSFormat.issueTsFormat.format(localTs);
    }

    public static boolean isImageUri(Activity activity, Intent dataIntent) {
        if (new HashSet(Arrays.asList(new String[]{"image/jpeg", "image/png", "image/gif", "image/x-png", "image/x-citrix-pjpeg", "image/x-citrix-gif", "image/pjpeg"})).contains(activity.getContentResolver().getType(dataIntent.getData()))) {
            return true;
        }
        showScreenshotNotOfImageTypeErrorToast(activity);
        return false;
    }

    public static String getFileType(Context context, String contentType, String fileName) {
        if (contentType.contains(FILE_TYPE_AUDIO)) {
            return context.getResources().getString(string.hs__file_type_audio);
        }
        if (contentType.contains(FILE_TYPE_VIDEO)) {
            return context.getResources().getString(string.hs__file_type_video);
        }
        if (contentType.contains(FILE_TYPE_PDF)) {
            return context.getResources().getString(string.hs__file_type_pdf);
        }
        if (contentType.contains(FILE_TYPE_MS_OFFICE_SUBSCRIPT)) {
            return context.getResources().getString(string.hs__file_type_ms_office);
        }
        if (contentType.equals(FILE_TYPE_RTF)) {
            return context.getResources().getString(string.hs__file_type_rtf);
        }
        if (contentType.equals(FILE_TYPE_CSV)) {
            return context.getResources().getString(string.hs__file_type_csv);
        }
        if (contentType.equals(FILE_TYPE_TEXT)) {
            return context.getResources().getString(string.hs__file_type_text);
        }
        String[] split = fileName.split("\\.");
        if (split.length > 0) {
            return split[split.length - 1];
        }
        split = contentType.split("/");
        if (split.length > 0) {
            return split[split.length - 1];
        }
        return context.getResources().getString(string.hs__file_type_unknown);
    }

    public static String getFileName(String filePath) {
        String fileName = "";
        if (filePath != null) {
            return new File(filePath).getName();
        }
        return fileName;
    }

    public static String getFileSizeString(String filePath) {
        String fileSize = "";
        if (filePath == null) {
            return fileSize;
        }
        long size = new File(filePath).length();
        if (size < 1024) {
            return size + " B";
        }
        if (size < 1048576) {
            return (size / 1024) + " KB";
        }
        return String.format("%.1f", new Object[]{Float.valueOf(((float) size) / 1048576.0f)}) + " MB";
    }
}
