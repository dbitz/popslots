package com.helpshift.support.util;

import com.helpshift.support.HSFunnel;
import com.helpshift.support.res.values.HSConsts;
import java.util.HashMap;
import org.slf4j.Marker;
import sfs2x.client.entities.variables.SFSBuddyVariable;
import sfs2x.client.requests.BanUserRequest;
import sfs2x.client.requests.ChangeRoomCapacityRequest;
import sfs2x.client.requests.CreateRoomRequest;
import sfs2x.client.requests.ExtensionRequest;
import sfs2x.client.requests.FindUsersRequest;
import sfs2x.client.requests.KickUserRequest;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.UnsubscribeRoomGroupRequest;
import sfs2x.client.requests.buddylist.GoOnlineRequest;
import sfs2x.client.requests.buddylist.InitBuddyListRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.requests.game.QuickGameJoinRequest;
import sfs2x.client.requests.mmo.SetMMOItemVariables;
import sfs2x.client.requests.mmo.SetUserPositionRequest;

public class HSCharacters16 {
    HashMap<Integer, String[]> characters = new HashMap();

    public HSCharacters16() {
        this.characters.put(Integer.valueOf(215), new String[]{"hwen", "hwenj", "hwenh", "hwed", "hwel", "hwelg", "hwelm", "hwelb", "hwels", "hwelt", "hwelp", "hwelh", "hwem", "hweb", "hwebs", "hwes", "hwess", "hweng", "hwej", "hwec", "hwek", "hwet", "hwep", "hweh", "hwi", "hwig", "hwigg", "hwigs", "hwin", "hwinj", "hwinh", "hwid", "hwil", "hwilg", "hwilm", "hwilb", "hwils", "hwilt", "hwilp", "hwilh", "hwim", "hwib", "hwibs", "hwis", "hwiss", "hwing", "hwij", "hwic", "hwik", "hwit", "hwip", "hwih", "hyu", "hyug", "hyugg", "hyugs", "hyun", "hyunj", "hyunh", "hyud", "hyul", "hyulg", "hyulm", "hyulb", "hyuls", "hyult", "hyulp", "hyulh", "hyum", "hyub", "hyubs", "hyus", "hyuss", "hyung", "hyuj", "hyuc", "hyuk", "hyut", "hyup", "hyuh", "heu", "heug", "heugg", "heugs", "heun", "heunj", "heunh", "heud", "heul", "heulg", "heulm", "heulb", "heuls", "heult", "heulp", "heulh", "heum", "heub", "heubs", "heus", "heuss", "heung", "heuj", "heuc", "heuk", "heut", "heup", "heuh", "hyi", "hyig", "hyigg", "hyigs", "hyin", "hyinj", "hyinh", "hyid", "hyil", "hyilg", "hyilm", "hyilb", "hyils", "hyilt", "hyilp", "hyilh", "hyim", "hyib", "hyibs", "hyis", "hyiss", "hying", "hyij", "hyic", "hyik", "hyit", "hyip", "hyih", "hi", "hig", "higg", "higs", "hin", "hinj", "hinh", "hid", "hil", "hilg", "hilm", "hilb", "hils", "hilt", "hilp", "hilh", "him", "hib", "hibs", "his", "hiss", "hing", "hij", "hic", "hik", "hit", "hip", "hih", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]"});
        this.characters.put(Integer.valueOf(249), new String[]{"Kay ", "Kayng ", "Ke ", "Ko ", "Kol ", "Koc ", "Kwi ", "Kwi ", "Kyun ", "Kul ", "Kum ", "Na ", "Na ", "Na ", "La ", "Na ", "Na ", "Na ", "Na ", "Na ", "Nak ", "Nak ", "Nak ", "Nak ", "Nak ", "Nak ", "Nak ", "Nan ", "Nan ", "Nan ", "Nan ", "Nan ", "Nan ", "Nam ", "Nam ", "Nam ", "Nam ", "Nap ", "Nap ", "Nap ", "Nang ", "Nang ", "Nang ", "Nang ", "Nang ", "Nay ", "Nayng ", "No ", "No ", "No ", "No ", "No ", "No ", "No ", "No ", "No ", "No ", "No ", "No ", "Nok ", "Nok ", "Nok ", "Nok ", "Nok ", "Nok ", "Non ", "Nong ", "Nong ", "Nong ", "Nong ", "Noy ", "Noy ", "Noy ", "Noy ", "Nwu ", "Nwu ", "Nwu ", "Nwu ", "Nwu ", "Nwu ", "Nwu ", "Nwu ", "Nuk ", "Nuk ", "Num ", "Nung ", "Nung ", "Nung ", "Nung ", "Nung ", "Twu ", "La ", "Lak ", "Lak ", "Lan ", "Lyeng ", "Lo ", "Lyul ", "Li ", "Pey ", "Pen ", "Pyen ", "Pwu ", "Pwul ", "Pi ", "Sak ", "Sak ", "Sam ", "Sayk ", "Sayng ", "Sep ", "Sey ", "Sway ", "Sin ", "Sim ", "Sip ", "Ya ", "Yak ", "Yak ", "Yang ", "Yang ", "Yang ", "Yang ", "Yang ", "Yang ", "Yang ", "Yang ", "Ye ", "Ye ", "Ye ", "Ye ", "Ye ", "Ye ", "Ye ", "Ye ", "Ye ", "Ye ", "Ye ", "Yek ", "Yek ", "Yek ", "Yek ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yen ", "Yel ", "Yel ", "Yel ", "Yel ", "Yel ", "Yel ", "Yem ", "Yem ", "Yem ", "Yem ", "Yem ", "Yep ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yeng ", "Yey ", "Yey ", "Yey ", "Yey ", "O ", "Yo ", "Yo ", "Yo ", "Yo ", "Yo ", "Yo ", "Yo ", "Yo ", "Yo ", "Yo ", "Yong ", "Wun ", "Wen ", "Yu ", "Yu ", "Yu ", "Yu ", "Yu ", "Yu ", "Yu ", "Yu ", "Yu ", "Yu ", "Yuk ", "Yuk ", "Yuk ", "Yun ", "Yun ", "Yun ", "Yun ", "Yul ", "Yul ", "Yul ", "Yul ", "Yung ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "I ", "Ik ", "Ik ", "In ", "In ", "In ", "In ", "In ", "In ", "In ", "Im ", "Im ", "Im ", "Ip ", "Ip ", "Ip ", "Cang ", "Cek ", "Ci ", "Cip ", "Cha ", "Chek "});
        this.characters.put(Integer.valueOf(250), new String[]{"Chey ", "Thak ", "Thak ", "Thang ", "Thayk ", "Thong ", "Pho ", "Phok ", "Hang ", "Hang ", "Hyen ", "Hwak ", "Wu ", "Huo ", "[?] ", "[?] ", "Zhong ", "[?] ", "Qing ", "[?] ", "[?] ", "Xi ", "Zhu ", "Yi ", "Li ", "Shen ", "Xiang ", "Fu ", "Jing ", "Jing ", "Yu ", "[?] ", "Hagi ", "[?] ", "Zhu ", "[?] ", "[?] ", "Yi ", "Du ", "[?] ", "[?] ", "[?] ", "Fan ", "Si ", "Guan ", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]"});
        this.characters.put(Integer.valueOf(251), new String[]{"ff", "fi", HSFunnel.LINK_VIA_FAQ, "ffi", "ffl", "st", "st", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "mn", QuickGameJoinRequest.KEY_MATCH_EXPRESSION, "mi", "vn", "mkh", "[?]", "[?]", "[?]", "[?]", "[?]", "yi", "", "ay", "`", "", KickUserRequest.KEY_DELAY, HSFunnel.MARKED_HELPFUL, "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_USER_LIST, InviteUsersRequest.KEY_TIME, Marker.ANY_NON_NULL_MARKER, "sh", ChangeRoomCapacityRequest.KEY_SPEC_SIZE, "sh", ChangeRoomCapacityRequest.KEY_SPEC_SIZE, "a", "a", "", BanUserRequest.KEY_BAN_MODE, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, KickUserRequest.KEY_DELAY, HSFunnel.MARKED_HELPFUL, SetUserPositionRequest.KEY_VEC3D, "z", "[?]", InviteUsersRequest.KEY_TIME, HSFunnel.RESOLUTION_ACCEPTED, "k", "k", FindUsersRequest.KEY_LIMIT, "[?]", FindUsersRequest.KEY_LIMIT, "[?]", SetUserPositionRequest.KEY_MINUS_ITEM_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, "[?]", SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_USER_LIST, "[?]", "ts", "ts", SetUserPositionRequest.KEY_ROOM, "sh", InviteUsersRequest.KEY_TIME, "vo", BanUserRequest.KEY_BAN_MODE, "k", SetUserPositionRequest.KEY_PLUS_USER_LIST, FindUsersRequest.KEY_LIMIT, "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""});
        this.characters.put(Integer.valueOf(252), new String[]{"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""});
        this.characters.put(Integer.valueOf(253), new String[]{"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "[?]", "[?]", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "", "", "", "", "", "", "", "", "", "", "", "", "[?]", "[?]", "[?]"});
        this.characters.put(Integer.valueOf(254), new String[]{"[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "", "", "", "~", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "..", "--", "-", "_", "_", "(", ") ", "{", "} ", "[", "] ", "[(", ")] ", "<<", ">> ", "<", "> ", "[", "] ", "{", "}", "[?]", "[?]", "[?]", "[?]", "", "", "", "", "", "", "", ",", ",", ".", "", ";", ":", "?", "!", "-", "(", ")", "{", "}", "{", "}", "#", "&", Marker.ANY_MARKER, Marker.ANY_NON_NULL_MARKER, "-", "<", ">", "=", "", "\\", SFSBuddyVariable.OFFLINE_PREFIX, "%", "@", "[?]", "[?]", "[?]", "[?]", "", "", "", "[?]", "", "[?]", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "[?]", "[?]", ""});
        this.characters.put(Integer.valueOf(255), new String[]{"[?]", "!", "\"", "#", SFSBuddyVariable.OFFLINE_PREFIX, "%", "&", "'", "(", ")", Marker.ANY_MARKER, Marker.ANY_NON_NULL_MARKER, ",", "-", ".", "/", HSConsts.STATUS_NEW, HSConsts.STATUS_INPROGRESS, HSConsts.STATUS_RESOLVED, HSConsts.STATUS_REJECTED, "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "{", "|", "}", "~", "[?]", "[?]", ".", "[", "]", ",", Marker.ANY_MARKER, "wo", "a", SetMMOItemVariables.KEY_ITEM_ID, InviteUsersRequest.KEY_USER, FindUsersRequest.KEY_EXPRESSION, GoOnlineRequest.KEY_ONLINE, "ya", "yu", "yo", "tu", Marker.ANY_NON_NULL_MARKER, "a", SetMMOItemVariables.KEY_ITEM_ID, InviteUsersRequest.KEY_USER, FindUsersRequest.KEY_EXPRESSION, GoOnlineRequest.KEY_ONLINE, "ka", "ki", "ku", "ke", "ko", "sa", "si", "su", "se", "so", HSFunnel.TICKET_AVOIDED, "ti", "tu", "te", "to", "na", "ni", "nu", "ne", "no", "ha", "hi", "hu", "he", "ho", "ma", "mi", CreateRoomRequest.KEY_MAXUSERS, QuickGameJoinRequest.KEY_MATCH_EXPRESSION, "mo", "ya", "yu", "yo", "ra", InviteUsersRequest.KEY_REPLY_ID, "ru", "re", "ro", "wa", SetUserPositionRequest.KEY_MINUS_ITEM_LIST, ":", ";", "", UnsubscribeRoomGroupRequest.KEY_GROUP_ID, "gg", "gs", SetUserPositionRequest.KEY_MINUS_ITEM_LIST, "nj", "nh", KickUserRequest.KEY_DELAY, "dd", SetUserPositionRequest.KEY_ROOM, "lg", "lm", "lb", "ls", "lt", "lp", "rh", SetUserPositionRequest.KEY_MINUS_USER_LIST, BanUserRequest.KEY_BAN_MODE, "bb", InitBuddyListRequest.KEY_BUDDY_STATES, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, "ss", "", "j", "jj", ExtensionRequest.KEY_CMD, "k", InviteUsersRequest.KEY_TIME, SetUserPositionRequest.KEY_PLUS_USER_LIST, HSFunnel.MARKED_HELPFUL, "[?]", "[?]", "[?]", "a", "ae", "ya", "yae", "eo", FindUsersRequest.KEY_EXPRESSION, "[?]", "[?]", "yeo", "ye", GoOnlineRequest.KEY_ONLINE, "wa", "wae", "oe", "[?]", "[?]", "yo", InviteUsersRequest.KEY_USER, "weo", "we", "wi", "yu", "[?]", "[?]", "eu", "yi", SetMMOItemVariables.KEY_ITEM_ID, "[?]", "[?]", "[?]", "/C", "PS", "!", "-", "|", "Y=", "W=", "[?]", "|", "-", "|", "-", "|", "#", "O", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "[?]", "{", "|", "}", "", "", "", ""});
        this.characters.put(Integer.valueOf(468), new String[]{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, "", SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "", "C", "D", "", "", "G", "", "", "J", "K", "", "", "N", "O", "P", "Q", "", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, "", HSFunnel.READ_FAQ, "", HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, "", SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D});
        this.characters.put(Integer.valueOf(469), new String[]{"w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "", "D", "E", "F", "G", "", "", "J", "K", "L", "M", "N", "O", "P", "Q", "", "S", "T", "U", "V", "W", "X", "Y", "", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "", "D", "E", "F", "G", "", "I", "J", "K", "L", "M", "", "O", "", "", "", "S", "T", "U", "V", "W", "X", "Y", "", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM});
        this.characters.put(Integer.valueOf(470), new String[]{ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", BanUserRequest.KEY_BAN_MODE, ExtensionRequest.KEY_CMD, KickUserRequest.KEY_DELAY, FindUsersRequest.KEY_EXPRESSION, HSFunnel.READ_FAQ, UnsubscribeRoomGroupRequest.KEY_GROUP_ID, HSFunnel.MARKED_HELPFUL, SetMMOItemVariables.KEY_ITEM_ID, "j", "k", FindUsersRequest.KEY_LIMIT, SetUserPositionRequest.KEY_MINUS_USER_LIST, SetUserPositionRequest.KEY_MINUS_ITEM_LIST, GoOnlineRequest.KEY_ONLINE, SetUserPositionRequest.KEY_PLUS_USER_LIST, SetUserPositionRequest.KEY_PLUS_ITEM_LIST, SetUserPositionRequest.KEY_ROOM, ChangeRoomCapacityRequest.KEY_SPEC_SIZE, InviteUsersRequest.KEY_TIME, InviteUsersRequest.KEY_USER, SetUserPositionRequest.KEY_VEC3D, "w", HSFunnel.OPEN_INBOX, HSFunnel.RESOLUTION_ACCEPTED, "z", SetMMOItemVariables.KEY_ITEM_ID, "j", "", "", "Alpha", "Beta", "Gamma", "Delta", "Epsilon", "Zeta", "Eta", "Theta", "Iota", "Kappa", "Lamda", "Mu", "Nu", "Xi", "Omicron", "Pi", "Rho", "Theta", "Sigma", "Tau", "Upsilon", "Phi", "Chi", "Psi", "Omega", "nabla", "alpha", "beta", "gamma", "delta", "epsilon", "zeta", "eta", "theta", "iota", "kappa", "lamda", CreateRoomRequest.KEY_MAXUSERS, "nu", "xi", "omicron", LoginRequest.KEY_PRIVILEGE_ID, "rho", "sigma", "sigma", "tai", "upsilon", "phi", "chi", "psi", "omega", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""});
        this.characters.put(Integer.valueOf(471), new String[]{"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", HSConsts.STATUS_NEW, HSConsts.STATUS_INPROGRESS, HSConsts.STATUS_RESOLVED, HSConsts.STATUS_REJECTED, "4", "5", "6", "7", "8", "9", HSConsts.STATUS_NEW, HSConsts.STATUS_INPROGRESS, HSConsts.STATUS_RESOLVED, HSConsts.STATUS_REJECTED, "4", "5", "6", "7", "8", "9", HSConsts.STATUS_NEW, HSConsts.STATUS_INPROGRESS, HSConsts.STATUS_RESOLVED, HSConsts.STATUS_REJECTED, "4", "5", "6", "7", "8", "9", HSConsts.STATUS_NEW, HSConsts.STATUS_INPROGRESS, HSConsts.STATUS_RESOLVED, HSConsts.STATUS_REJECTED, "4", "5", "6", "7", "8", "9", HSConsts.STATUS_NEW, HSConsts.STATUS_INPROGRESS, HSConsts.STATUS_RESOLVED, HSConsts.STATUS_REJECTED, "4", "5", "6", "7", "8", "1d7ff"});
    }

    public boolean containsKey(int high, int low) {
        String[] entries = (String[]) this.characters.get(Integer.valueOf(high));
        return entries != null && low < entries.length && entries[low].length() > 0;
    }

    public String get(int high, int low) {
        String[] entries = (String[]) this.characters.get(Integer.valueOf(high));
        if (entries == null) {
            return "";
        }
        return entries[low];
    }
}