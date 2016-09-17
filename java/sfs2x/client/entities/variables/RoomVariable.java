package sfs2x.client.entities.variables;

public interface RoomVariable extends UserVariable {
    boolean isPersistent();

    boolean isPrivate();

    void setPersistent(boolean z);

    void setPrivate(boolean z);
}
