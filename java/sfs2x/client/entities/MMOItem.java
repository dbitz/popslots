package sfs2x.client.entities;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import sfs2x.client.entities.data.Vec3D;
import sfs2x.client.entities.variables.IMMOItemVariable;
import sfs2x.client.entities.variables.MMOItemVariable;

public class MMOItem implements IMMOItem {
    private Vec3D aoiEntryPoint;
    private final int id;
    private final Map<String, IMMOItemVariable> variables = new HashMap();

    public static IMMOItem fromSFSArray(ISFSArray encodedItem) {
        IMMOItem item = new MMOItem(encodedItem.getInt(0).intValue());
        ISFSArray encodedVars = encodedItem.getSFSArray(1);
        for (int i = 0; i < encodedVars.size(); i++) {
            item.setVariable(MMOItemVariable.fromSFSArray(encodedVars.getSFSArray(i)));
        }
        return item;
    }

    public MMOItem(int id) {
        this.id = id;
    }

    public boolean containsVariable(String name) {
        boolean found;
        synchronized (this.variables) {
            found = this.variables.containsKey(name);
        }
        return found;
    }

    public Vec3D getAOIEntryPoint() {
        return this.aoiEntryPoint;
    }

    public void setAOIEntryPoint(Vec3D aoiEntryPoint) {
        this.aoiEntryPoint = aoiEntryPoint;
    }

    public int getId() {
        return this.id;
    }

    public IMMOItemVariable getVariable(String name) {
        return (IMMOItemVariable) this.variables.get(name);
    }

    public List<IMMOItemVariable> getVariables() {
        Throwable th;
        synchronized (this.variables) {
            try {
                List<IMMOItemVariable> vars = new LinkedList(this.variables.values());
                try {
                    return vars;
                } catch (Throwable th2) {
                    th = th2;
                    List<IMMOItemVariable> list = vars;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }

    public void setVariable(IMMOItemVariable var) {
        synchronized (this.variables) {
            this.variables.put(var.getName(), var);
        }
    }

    public void setVariables(List<IMMOItemVariable> varList) {
        synchronized (this.variables) {
            for (IMMOItemVariable itemVar : varList) {
                this.variables.put(itemVar.getName(), itemVar);
            }
        }
    }

    public String toString() {
        return String.format("[id: %s, %s ]", new Object[]{Integer.valueOf(this.id), this.variables});
    }
}
