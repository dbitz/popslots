package sfs2x.client.entities;

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import sfs2x.client.entities.data.Vec3D;

public class MMORoom extends SFSRoom {
    private Vec3D defaultAOI;
    private Vec3D higherMapLimit;
    private Map<Integer, IMMOItem> itemsById = Collections.synchronizedMap(new HashMap());
    private Vec3D lowerMapLimit;

    public MMORoom(int id, String name) {
        super(id, name);
    }

    public MMORoom(int id, String name, String groupId) {
        super(id, name, groupId);
    }

    public Vec3D getDefaultAOI() {
        return this.defaultAOI;
    }

    public Vec3D getLowerMapLimit() {
        return this.lowerMapLimit;
    }

    public Vec3D getHigherMapLimit() {
        return this.higherMapLimit;
    }

    public void setDefaultAOI(Vec3D defaultAOI) {
        if (this.defaultAOI != null) {
            throw new IllegalArgumentException("This value is read-only");
        }
        this.defaultAOI = defaultAOI;
    }

    public void setLowerMapLimit(Vec3D lowerMapLimit) {
        if (this.lowerMapLimit != null) {
            throw new IllegalArgumentException("This value is read-only");
        }
        this.lowerMapLimit = lowerMapLimit;
    }

    public void setHigherMapLimit(Vec3D higherMapLimit) {
        if (this.higherMapLimit != null) {
            throw new IllegalArgumentException("This value is read-only");
        }
        this.higherMapLimit = higherMapLimit;
    }

    public IMMOItem getMMOItem(int id) {
        return (IMMOItem) this.itemsById.get(Integer.valueOf(id));
    }

    public List<IMMOItem> getMMOItems() {
        Throwable th;
        synchronized (this.itemsById) {
            try {
                List<IMMOItem> items = new LinkedList(this.itemsById.values());
                try {
                    return items;
                } catch (Throwable th2) {
                    th = th2;
                    List<IMMOItem> list = items;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }

    public void addMMOItem(IMMOItem item) {
        this.itemsById.put(Integer.valueOf(item.getId()), item);
    }

    public void RemoveItem(int id) {
        this.itemsById.remove(Integer.valueOf(id));
    }
}
