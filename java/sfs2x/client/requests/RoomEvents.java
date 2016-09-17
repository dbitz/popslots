package sfs2x.client.requests;

public class RoomEvents {
    private boolean allowUserCountChange = false;
    private boolean allowUserEnter = false;
    private boolean allowUserExit = false;
    private boolean allowUserVariablesUpdate = false;

    public boolean getAllowUserEnter() {
        return this.allowUserEnter;
    }

    public void setAllowUserEnter(boolean allowUserEnter) {
        this.allowUserEnter = allowUserEnter;
    }

    public boolean getAllowUserExit() {
        return this.allowUserExit;
    }

    public void setAllowUserExit(boolean allowUserExit) {
        this.allowUserExit = allowUserExit;
    }

    public boolean getAllowUserCountChange() {
        return this.allowUserCountChange;
    }

    public void setAllowUserCountChange(boolean allowUserCountChange) {
        this.allowUserCountChange = allowUserCountChange;
    }

    public boolean getAllowUserVariablesUpdate() {
        return this.allowUserVariablesUpdate;
    }

    public void setAllowUserVariablesUpdate(boolean allowUserVariablesUpdate) {
        this.allowUserVariablesUpdate = allowUserVariablesUpdate;
    }
}
