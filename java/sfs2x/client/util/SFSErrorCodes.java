package sfs2x.client.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class SFSErrorCodes {
    private static List<String> errorsByCode = new ArrayList(Arrays.asList(new String[]{"Client API version is obsolete: %s; required version: %s", "Requested Zone %s does not exist", "User name %s is not recognized", "Wrong password for user %s", "User %s is banned", "Zone %s is full", "User %s is already logged in Zone %s", "The server is full", "Zone %s is currently inactive", "User name %s contains bad words; filtered: %s", "Guest users not allowed in Zone %s", "IP address %s is banned", "A Room with the same name already exists: %s", "Requested Group is not available - Room: %s; Group: %s", "Bad Room name length -  Min: %s; max: %s; passed name length: %s", "Room name contains bad words: %s", "Zone is full; can't add Rooms anymore", "You have exceeded the number of Rooms that you can create per session: %s", "Room creation failed, wrong parameter: %s", "User %s already joined in Room", "Room %s is full", "Wrong password for Room %s", "Requested Room does not exist", "Room %s is locked", "Group %s is already subscribed", "Group %s does not exist", "Group %s is not subscribed", "Group %s does not exist", "%s", "Room permission error; Room %s cannot be renamed", "Room permission error; Room %s cannot change password state", "Room permission error; Room %s cannot change capacity", "Switch user error; no player slots available in Room %s", "Switch user error; no spectator slots available in Room %s", "Switch user error; Room %s is not a Game Room", "Switch user error; you are not joined in Room %s", "Buddy Manager initialization error, could not load buddy list: %s", "Buddy Manager error, your buddy list is full; size is %s", "Buddy Manager error, was not able to block buddy %s because offline", "Buddy Manager error, you are attempting to set too many Buddy Variables; limit is %s", "Game %s access denied, user does not match access criteria", "QuickJoinGame action failed: no matching Rooms were found", "Your previous invitation reply was invalid or arrived too late"}));

    public static void setErrorMessage(short code, String message) {
        errorsByCode.set(code, message);
    }

    public static String getErrorMessage(short code, Object[] args) {
        try {
            return String.format((String) errorsByCode.get(code), args);
        } catch (Exception e) {
            return "Error in converting error code to text for code: " + code + ". Cause: " + e.getMessage();
        }
    }
}
