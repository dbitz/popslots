package sfs2x.client.requests;

public class MessageRecipientMode {
    public static final int TO_GROUP = 2;
    public static final int TO_ROOM = 1;
    public static final int TO_USER = 0;
    public static final int TO_ZONE = 3;
    private int mode;
    private Object target;

    public MessageRecipientMode(int mode, Object target) {
        if (mode < 0 || mode > TO_ZONE) {
            throw new IllegalArgumentException("Illegal recipient mode: " + mode);
        }
        this.mode = mode;
        this.target = target;
    }

    public int getMode() {
        return this.mode;
    }

    public Object getTarget() {
        return this.target;
    }
}
