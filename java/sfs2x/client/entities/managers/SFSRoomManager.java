package sfs2x.client.entities.managers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Room;
import sfs2x.client.entities.User;

public class SFSRoomManager implements IRoomManager {
    private List<String> groups = new ArrayList();
    private String ownerZone;
    private Map<Integer, Room> roomsById = new HashMap();
    private Map<String, Room> roomsByName = new HashMap();
    protected ISmartFox smartFox;

    public SFSRoomManager(ISmartFox smartFox) {
        this.smartFox = smartFox;
    }

    public String getOwnerZone() {
        return this.ownerZone;
    }

    public void addRoom(Room room) {
        addRoom(room, true);
    }

    public void addRoom(Room room, boolean addGroupIfMissing) {
        this.roomsById.put(Integer.valueOf(room.getId()), room);
        this.roomsByName.put(room.getName(), room);
        if (!addGroupIfMissing) {
            room.setManaged(false);
        } else if (!containsGroup(room.getGroupId())) {
            addGroup(room.getGroupId());
        }
    }

    public void addGroup(String groupId) {
        this.groups.add(groupId);
    }

    public Room replaceRoom(Room room) {
        return replaceRoom(room, true);
    }

    public Room replaceRoom(Room room, boolean addToGroupIfMissing) {
        Room oldRoom = getRoomById(room.getId());
        if (oldRoom != null) {
            oldRoom.merge(room);
            return oldRoom;
        }
        addRoom(room, addToGroupIfMissing);
        return room;
    }

    public void removeGroup(String groupId) {
        this.groups.remove(groupId);
        for (Room room : getRoomListFromGroup(groupId)) {
            if (room.isJoined()) {
                room.setManaged(false);
            } else {
                removeRoom(room);
            }
        }
    }

    public boolean containsGroup(String groupId) {
        return this.groups.contains(groupId);
    }

    public boolean containsRoom(int id) {
        return this.roomsById.containsKey(Integer.valueOf(id));
    }

    public boolean containsRoom(String name) {
        return this.roomsByName.containsKey(name);
    }

    public boolean containsRoomInGroup(int roomId, String groupId) {
        for (Room room : getRoomListFromGroup(groupId)) {
            if (room.getId() == roomId) {
                return true;
            }
        }
        return false;
    }

    public boolean containsRoomInGroup(String roomName, String groupId) {
        for (Room room : getRoomListFromGroup(groupId)) {
            if (room.getName().equals(roomName)) {
                return true;
            }
        }
        return false;
    }

    public void changeRoomName(Room room, String newName) {
        String oldName = room.getName();
        room.setName(newName);
        this.roomsByName.put(newName, room);
        this.roomsByName.remove(oldName);
    }

    public void changeRoomPasswordState(Room room, boolean isPassProtected) {
        room.setPasswordProtected(isPassProtected);
    }

    public void changeRoomCapacity(Room room, int maxUsers, int maxSpect) {
        room.setMaxUsers(maxUsers);
        room.setMaxSpectators(maxSpect);
    }

    public Room getRoomById(int id) {
        if (this.roomsById.containsKey(Integer.valueOf(id))) {
            return (Room) this.roomsById.get(Integer.valueOf(id));
        }
        return null;
    }

    public Room getRoomByName(String name) {
        if (this.roomsByName.containsKey(name)) {
            return (Room) this.roomsByName.get(name);
        }
        return null;
    }

    public List<Room> getRoomList() {
        return new ArrayList(this.roomsById.values());
    }

    public int getRoomCount() {
        return this.roomsById.size();
    }

    public List<String> getRoomGroups() {
        return this.groups;
    }

    public List<Room> getRoomListFromGroup(String groupId) {
        List<Room> roomList = new ArrayList();
        for (Room room : this.roomsById.values()) {
            if (room.getGroupId().equals(groupId)) {
                roomList.add(room);
            }
        }
        return roomList;
    }

    public List<Room> getJoinedRooms() {
        List<Room> rooms = new ArrayList();
        for (Room room : this.roomsById.values()) {
            if (room.isJoined()) {
                rooms.add(room);
            }
        }
        return rooms;
    }

    public List<Room> getUserRooms(User user) {
        List<Room> rooms = new ArrayList();
        for (Room room : this.roomsById.values()) {
            if (room.containsUser(user)) {
                rooms.add(room);
            }
        }
        return rooms;
    }

    public void removeRoom(Room room) {
        removeRoom(room.getId(), room.getName());
    }

    public void removeRoomById(int id) {
        if (this.roomsById.containsKey(Integer.valueOf(id))) {
            removeRoom(id, ((Room) this.roomsById.get(Integer.valueOf(id))).getName());
        }
    }

    public void removeRoomByName(String name) {
        if (this.roomsByName.containsKey(name)) {
            removeRoom(((Room) this.roomsByName.get(name)).getId(), name);
        }
    }

    public void removeUser(User user) {
        for (Room room : this.roomsById.values()) {
            if (room.containsUser(user)) {
                room.removeUser(user);
            }
        }
    }

    public ISmartFox getSmartFox() {
        return this.smartFox;
    }

    private void removeRoom(int id, String name) {
        this.roomsById.remove(Integer.valueOf(id));
        this.roomsByName.remove(name);
    }
}
