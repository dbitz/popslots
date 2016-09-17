package sfs2x.client.core;

import java.util.HashMap;
import java.util.Map;

public class BaseEvent {
    private Map<String, Object> arguments;
    protected Object target;
    protected String type;

    public Object getTarget() {
        return this.target;
    }

    public void setTarget(Object target) {
        this.target = target;
    }

    public String getType() {
        return this.type;
    }

    public String toString() {
        return this.type + " [ " + (this.target != null ? this.target.toString() : "null") + "]";
    }

    public BaseEvent clone() {
        return new BaseEvent(this.type, getArguments());
    }

    public BaseEvent(String type) {
        this.type = type;
        if (getArguments() == null) {
            setArguments(new HashMap());
        }
    }

    public BaseEvent(String type, Map<String, Object> arguments) {
        this.type = type;
        setArguments(arguments);
        if (getArguments() == null) {
            setArguments(new HashMap());
        }
    }

    public void setArguments(Map<String, Object> arguments) {
        this.arguments = arguments;
    }

    public Map<String, Object> getArguments() {
        return this.arguments;
    }
}
