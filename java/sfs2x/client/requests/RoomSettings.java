package sfs2x.client.requests;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import sfs2x.client.entities.SFSConstants;
import sfs2x.client.entities.variables.RoomVariable;

public class RoomSettings {
    private RoomEvents events;
    private RoomExtension extension;
    private String groupId = SFSConstants.DEFAULT_GROUP_ID;
    private boolean isGame = false;
    private int maxSpectators = 0;
    private int maxUsers = 10;
    private int maxVariables = 5;
    private String name;
    private String password = "";
    private RoomPermissions permissions;
    private List<RoomVariable> variables = new ArrayList();

    public RoomSettings(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isGame() {
        return this.isGame;
    }

    public void setGame(boolean game) {
        this.isGame = game;
    }

    public int getMaxUsers() {
        return this.maxUsers;
    }

    public void setMaxUsers(int maxUsers) {
        this.maxUsers = maxUsers;
    }

    public int getMaxVariables() {
        return this.maxVariables;
    }

    public void setMaxVariables(int maxVariables) {
        this.maxVariables = maxVariables;
    }

    public int getMaxSpectators() {
        return this.maxSpectators;
    }

    public void setMaxSpectators(int maxSpectators) {
        this.maxSpectators = maxSpectators;
    }

    public List<RoomVariable> getVariables() {
        return this.variables;
    }

    public void setVariables(List<RoomVariable> variables) {
        this.variables = Collections.unmodifiableList(new ArrayList(variables));
    }

    public RoomPermissions getPermissions() {
        return this.permissions;
    }

    public void setPermissions(RoomPermissions permissions) {
        this.permissions = permissions;
    }

    public RoomEvents getEvents() {
        return this.events;
    }

    public void setEvents(RoomEvents events) {
        this.events = events;
    }

    public RoomExtension getExtension() {
        return this.extension;
    }

    public void setExtension(RoomExtension extension) {
        this.extension = extension;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }
}
