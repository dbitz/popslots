package sfs2x.fsm;

import java.util.ArrayList;
import java.util.List;

public class FiniteStateMachine {
    private int currentStateName;
    private Object locker = new Object();
    private List<FSMState> states = new ArrayList();

    public void addState(int st) {
        int stateName = st;
        FSMState state = new FSMState();
        state.setStateName(stateName);
        this.states.add(state);
    }

    public void addStateTransition(int from, int to, int tr) {
        int transition = tr;
        findStateObjByName(from).addTransition(transition, to);
    }

    public int applyTransition(int tr) {
        int i;
        synchronized (this.locker) {
            int transition = tr;
            int startStateName = this.currentStateName;
            this.currentStateName = findStateObjByName(this.currentStateName).applyTransition(transition);
            i = this.currentStateName;
        }
        return i;
    }

    public int getCurrentState() {
        int i;
        synchronized (this.locker) {
            i = this.currentStateName;
        }
        return i;
    }

    public void setCurrentState(int state) {
        this.currentStateName = state;
    }

    private FSMState findStateObjByName(int st) {
        int stateName = st;
        for (FSMState state : this.states) {
            if (stateName == state.getStateName()) {
                return state;
            }
        }
        return null;
    }

    public void addAllStates(int count) {
        for (int i = 0; i < count; i++) {
            addState(i);
        }
    }
}
