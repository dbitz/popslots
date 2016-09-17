package sfs2x.client.entities.match;

public final class RoomProperties {
    public static String GROUP_ID = "${G}";
    public static String HAS_FREE_PLAYER_SLOTS = "${HFP}";
    public static String IS_GAME = "${ISG}";
    public static String IS_PRIVATE = UserProperties.IS_PLAYER;
    public static String IS_TYPE_SFSGAME = "${IST}";
    public static String MAX_SPECTATORS = "${MXS}";
    public static String MAX_USERS = "${MXU}";
    public static String NAME = UserProperties.NAME;
    public static String SPECTATOR_COUNT = "${SC}";
    public static String USER_COUNT = "${UC}";

    private RoomProperties() {
    }
}
