package com.helpshift.support.util;

import android.util.Log;
import com.helpshift.constants.Tables;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.constants.SectionsColumns;
import com.helpshift.support.model.Issue;
import com.helpshift.support.model.IssueBuilder;
import com.helpshift.support.model.Message;
import com.helpshift.support.model.MessageBuilder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;

public class IssuesUtil {
    private static final String TAG = "HelpShiftDebug";

    public static List<Issue> jsonArrayToIssueList(String profileId, JSONArray issues) {
        List<Issue> issueList = new ArrayList();
        int i = 0;
        while (i < issues.length()) {
            try {
                issueList.add(jsonObjectToIssue(profileId, issues.getJSONObject(i)));
                i++;
            } catch (JSONException e) {
                Log.d(TAG, "storeMessages", e);
            }
        }
        return issueList;
    }

    private static Issue jsonObjectToIssue(String profileId, JSONObject object) throws JSONException {
        return new IssueBuilder(profileId, object.getString(LoginRequest.KEY_ID), object.getString(MessageColumns.BODY), object.getString(SectionsColumns.TITLE), object.getString(MessageColumns.CREATED_AT), object.getString(IssueColumns.UPDATED_AT), object.getInt(IssueColumns.STATUS), object.optBoolean("show-agent-name", true)).setMessageList(jsonArrayToMessageList(object.getJSONArray(Tables.MESSAGES))).build();
    }

    public static List<Message> jsonArrayToMessageList(JSONArray messages) {
        List<Message> messageList = new ArrayList();
        int i = 0;
        while (i < messages.length()) {
            try {
                messageList.add(jsonObjectToMessage(messages.getJSONObject(i)));
                i++;
            } catch (JSONException e) {
                Log.d(TAG, "storeMessages", e);
            }
        }
        return messageList;
    }

    private static Message jsonObjectToMessage(JSONObject object) throws JSONException {
        return new MessageBuilder(object.getString(MessageColumns.ISSUE_ID), object.getString(LoginRequest.KEY_ID), object.getString(MessageColumns.BODY), object.getString(MessageColumns.ORIGIN), object.getString(MessageColumns.TYPE), object.getString(MessageColumns.CREATED_AT), object.getJSONObject(MessageColumns.AUTHOR).toString(), object.getJSONObject(MessageColumns.META).toString()).setScreenshot(object.optString(MessageColumns.SCREENSHOT)).setMessageSeen(object.optBoolean("seen")).setInvisible(object.optBoolean(MessageColumns.INVISIBLE)).setInProgress(object.optBoolean("inProgress")).build();
    }

    public static JSONArray messageListToJSONArray(List<Message> messageList) {
        JSONArray messages = new JSONArray();
        for (Message message : messageList) {
            JSONObject messageObject = new JSONObject();
            try {
                messageObject.put(MessageColumns.ISSUE_ID, message.getIssueId());
                messageObject.put(LoginRequest.KEY_ID, message.getMessageId());
                messageObject.put(MessageColumns.BODY, message.getBody());
                messageObject.put(MessageColumns.ORIGIN, message.getOrigin());
                messageObject.put(MessageColumns.TYPE, message.getType());
                messageObject.put(MessageColumns.CREATED_AT, message.getCreatedAt());
                messageObject.put(MessageColumns.AUTHOR, new JSONObject(message.getAuthor()));
                messageObject.put(MessageColumns.META, new JSONObject(message.getMeta()));
                messageObject.put(MessageColumns.SCREENSHOT, message.getScreenshot());
                messageObject.put("seen", message.isMessageSeen());
                messageObject.put(MessageColumns.INVISIBLE, message.isInvisible());
                messageObject.put("inProgress", message.isInProgress());
            } catch (JSONException e) {
                Log.d(TAG, "messageListToJSONArray", e);
            }
            messages.put(messageObject);
        }
        return messages;
    }
}
