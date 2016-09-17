package sfs2x.client.entities;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sfs2x.client.entities.variables.BuddyVariable;
import sfs2x.client.entities.variables.ReservedBuddyVariables;
import sfs2x.client.entities.variables.SFSBuddyVariable;

public class SFSBuddy implements Buddy {
    protected int id;
    protected boolean isBlocked;
    protected boolean isTemp;
    protected String name;
    protected Map<String, BuddyVariable> variables;

    public static Buddy fromSFSArray(ISFSArray arr) {
        boolean z = false;
        int intValue = arr.getInt(0).intValue();
        String utfString = arr.getUtfString(1);
        boolean booleanValue = arr.getBool(2).booleanValue();
        if (arr.size() > 4) {
            z = arr.getBool(4).booleanValue();
        }
        Buddy buddy = new SFSBuddy(intValue, utfString, booleanValue, z);
        ISFSArray bVarsData = arr.getSFSArray(3);
        for (int j = 0; j < bVarsData.size(); j++) {
            buddy.setVariable(SFSBuddyVariable.fromSFSArray(bVarsData.getSFSArray(j)));
        }
        return buddy;
    }

    public SFSBuddy(int id, String name, boolean isBlocked, boolean isTemp) {
        this.variables = new HashMap();
        this.name = name;
        this.id = id;
        this.isBlocked = isBlocked;
        this.isTemp = isTemp;
        this.variables = new HashMap();
    }

    public SFSBuddy(int id, String name, boolean isBlocked) {
        this(id, name, isBlocked, false);
    }

    public SFSBuddy(int id, String name) {
        this(id, name, false, false);
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public boolean isBlocked() {
        return this.isBlocked;
    }

    public boolean isOnline() {
        BuddyVariable bv = getVariable(ReservedBuddyVariables.BV_ONLINE);
        if (!(bv == null ? true : bv.getBoolValue().booleanValue()) || this.id <= -1) {
            return false;
        }
        return true;
    }

    public boolean isTemp() {
        return this.isTemp;
    }

    public String getState() {
        BuddyVariable bv = getVariable(ReservedBuddyVariables.BV_STATE);
        return bv == null ? null : bv.getStringValue();
    }

    public String getNickName() {
        BuddyVariable bv = getVariable(ReservedBuddyVariables.BV_NICKNAME);
        return bv == null ? null : bv.getStringValue();
    }

    public List<BuddyVariable> getVariables() {
        return new ArrayList(this.variables.values());
    }

    public BuddyVariable getVariable(String varName) {
        if (this.variables.containsKey(varName)) {
            return (BuddyVariable) this.variables.get(varName);
        }
        return null;
    }

    public boolean containsVariable(String varName) {
        return this.variables.containsKey(varName);
    }

    public List<BuddyVariable> getOfflineVariables() {
        List<BuddyVariable> offlineVars = new ArrayList();
        for (BuddyVariable item : this.variables.values()) {
            if (item.getName().startsWith(SFSBuddyVariable.OFFLINE_PREFIX)) {
                offlineVars.add(item);
            }
        }
        return offlineVars;
    }

    public List<BuddyVariable> getOnlineVariables() {
        List<BuddyVariable> onlineVars = new ArrayList();
        for (BuddyVariable item : this.variables.values()) {
            if (!item.getName().startsWith(SFSBuddyVariable.OFFLINE_PREFIX)) {
                onlineVars.add(item);
            }
        }
        return onlineVars;
    }

    public void setVariable(BuddyVariable bVar) {
        this.variables.put(bVar.getName(), bVar);
    }

    public void setVariables(List<BuddyVariable> variables) {
        for (BuddyVariable bVar : variables) {
            setVariable(bVar);
        }
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setBlocked(boolean blocked) {
        this.isBlocked = blocked;
    }

    public void removeVariable(String varName) {
        this.variables.remove(varName);
    }

    public void clearVolatileVariables() {
        Iterator<BuddyVariable> it = this.variables.values().iterator();
        while (it.hasNext()) {
            if (!((BuddyVariable) it.next()).getName().startsWith(SFSBuddyVariable.OFFLINE_PREFIX)) {
                it.remove();
            }
        }
    }

    public String toString() {
        return "[Buddy: " + this.name + ", id: " + this.id + "]";
    }
}
