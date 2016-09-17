package sfs2x.client.requests;

public class RoomPermissions {
    private boolean allowNameChange;
    private boolean allowPasswordStateChange;
    private boolean allowPublicMessages;
    private boolean allowResizing;

    public boolean getAllowNameChange() {
        return this.allowNameChange;
    }

    public void setAllowNameChange(boolean allowNameChange) {
        this.allowNameChange = allowNameChange;
    }

    public boolean getAllowPasswordStateChange() {
        return this.allowPasswordStateChange;
    }

    public void setAllowPasswordStateChange(boolean allowPasswordStateChange) {
        this.allowPasswordStateChange = allowPasswordStateChange;
    }

    public boolean getAllowPublicMessages() {
        return this.allowPublicMessages;
    }

    public void setAllowPublicMessages(boolean allowPublicMessages) {
        this.allowPublicMessages = allowPublicMessages;
    }

    public boolean getAllowResizing() {
        return this.allowResizing;
    }

    public void setAllowResizing(boolean allowResizing) {
        this.allowResizing = allowResizing;
    }
}
