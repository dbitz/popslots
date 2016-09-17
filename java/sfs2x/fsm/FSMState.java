package sfs2x.fsm;

import java.util.HashMap;
import java.util.Map;

public class FSMState {
    private int stateName;
    private Map<Integer, Integer> transitions = new HashMap();

    public void setStateName(int newStateName) {
        this.stateName = newStateName;
    }

    public int getStateName() {
        return this.stateName;
    }

    public void addTransition(int transition, int outputState) {
        this.transitions.put(Integer.valueOf(transition), Integer.valueOf(outputState));
    }

    public int applyTransition(int transition) {
        int outputStateName = this.stateName;
        if (this.transitions.containsKey(Integer.valueOf(transition))) {
            return ((Integer) this.transitions.get(Integer.valueOf(transition))).intValue();
        }
        return outputStateName;
    }
}
