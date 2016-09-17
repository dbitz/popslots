package sfs2x.client.entities.managers;

import com.smartfoxserver.v2.exceptions.SFSException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sfs2x.client.ISmartFox;
import sfs2x.client.entities.Buddy;
import sfs2x.client.entities.variables.BuddyVariable;
import sfs2x.client.entities.variables.ReservedBuddyVariables;
import sfs2x.client.entities.variables.SFSBuddyVariable;

public class SFSBuddyManager implements IBuddyManager {
    protected Map<String, Buddy> buddiesByName = new HashMap();
    private List<String> buddyStates;
    protected boolean inited = false;
    protected boolean myOnlineState;
    protected Map<String, BuddyVariable> myVariables = new HashMap();
    private ISmartFox sfs;

    public SFSBuddyManager(ISmartFox sfs) {
        this.sfs = sfs;
    }

    public boolean isInited() {
        return this.inited;
    }

    public void setInited(boolean inited) {
        this.inited = inited;
    }

    public void addBuddy(Buddy buddy) {
        this.buddiesByName.put(buddy.getName(), buddy);
    }

    public Buddy removeBuddyById(int id) {
        Buddy buddy = getBuddyById(id);
        if (buddy != null) {
            this.buddiesByName.remove(buddy.getName());
        }
        return buddy;
    }

    public Buddy removeBuddyByName(String name) {
        Buddy buddy = getBuddyByName(name);
        if (buddy != null) {
            this.buddiesByName.remove(buddy.getName());
        }
        return buddy;
    }

    public boolean containsBuddy(String name) {
        return this.buddiesByName.containsKey(name);
    }

    public Buddy getBuddyById(int id) {
        if (id > -1) {
            for (Buddy buddy : this.buddiesByName.values()) {
                if (buddy.getId() == id) {
                    return buddy;
                }
            }
        }
        return null;
    }

    public Buddy getBuddyByName(String name) {
        if (this.buddiesByName.containsKey(name)) {
            return (Buddy) this.buddiesByName.get(name);
        }
        return null;
    }

    public Buddy getBuddyByNickName(String nickName) {
        for (Buddy buddy : this.buddiesByName.values()) {
            if (buddy.getNickName().equals(nickName)) {
                return buddy;
            }
        }
        return null;
    }

    public List<Buddy> getOfflineBuddies() {
        List<Buddy> buddies = new ArrayList();
        for (Buddy buddy : this.buddiesByName.values()) {
            if (!buddy.isOnline()) {
                buddies.add(buddy);
            }
        }
        return buddies;
    }

    public List<Buddy> getOnlineBuddies() {
        List<Buddy> buddies = new ArrayList();
        for (Buddy buddy : this.buddiesByName.values()) {
            if (buddy.isOnline()) {
                buddies.add(buddy);
            }
        }
        return buddies;
    }

    public List<Buddy> getBuddyList() {
        return new ArrayList(this.buddiesByName.values());
    }

    public List<String> getBuddyStates() {
        return this.buddyStates;
    }

    public BuddyVariable getMyVariable(String varName) {
        if (this.myVariables.containsKey(varName)) {
            return (BuddyVariable) this.myVariables.get(varName);
        }
        return null;
    }

    public List<BuddyVariable> getMyVariables() {
        return new ArrayList(this.myVariables.values());
    }

    public boolean getMyOnlineState() {
        if (!this.inited) {
            return false;
        }
        BuddyVariable onlineVar = getMyVariable(ReservedBuddyVariables.BV_ONLINE);
        if (onlineVar != null) {
            return onlineVar.getBoolValue().booleanValue();
        }
        return true;
    }

    public String getMyNickName() {
        BuddyVariable nickNameVar = getMyVariable(ReservedBuddyVariables.BV_NICKNAME);
        return nickNameVar != null ? nickNameVar.getStringValue() : null;
    }

    public String getMyState() {
        BuddyVariable stateVar = getMyVariable(ReservedBuddyVariables.BV_STATE);
        return stateVar != null ? stateVar.getStringValue() : null;
    }

    public void setMyVariable(BuddyVariable bVar) {
        this.myVariables.put(bVar.getName(), bVar);
    }

    public void setMyVariables(List<BuddyVariable> variables) {
        for (BuddyVariable bVar : variables) {
            setMyVariable(bVar);
        }
    }

    public void setMyOnlineState(boolean isOnline) throws SFSException {
        setMyVariable(new SFSBuddyVariable(ReservedBuddyVariables.BV_ONLINE, Boolean.valueOf(isOnline)));
    }

    public void setMyNickName(String nickName) throws SFSException {
        setMyVariable(new SFSBuddyVariable(ReservedBuddyVariables.BV_NICKNAME, nickName));
    }

    public void setMyState(String state) throws SFSException {
        setMyVariable(new SFSBuddyVariable(ReservedBuddyVariables.BV_STATE, state));
    }

    public void setBuddyStates(List<String> states) {
        this.buddyStates = states;
    }

    public void clearAll() {
        this.buddiesByName.clear();
    }
}
