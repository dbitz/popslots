package sfs2x.client.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EventDispatcher {
    private Map<String, List<IEventListener>> listeners = new HashMap();
    private Logger log;
    private Object target;

    public EventDispatcher(Object target) {
        this.target = target;
        this.log = LoggerFactory.getLogger(getClass());
    }

    public void addEventListener(String eventType, IEventListener listener) {
        List<IEventListener> list = (List) this.listeners.get(eventType);
        if (list == null) {
            list = new ArrayList();
            this.listeners.put(eventType, list);
        }
        if (!list.contains(listener)) {
            list.add(listener);
        }
    }

    public void removeEventListener(String eventType, IEventListener listener) {
        List<IEventListener> list = (List) this.listeners.get(eventType);
        if (list != null) {
            list.remove(listener);
        }
    }

    public void dispatchEvent(BaseEvent evt) {
        List<IEventListener> list = (List) this.listeners.get(evt.getType());
        if (list != null) {
            evt.setTarget(this.target);
            if (this.log.isDebugEnabled()) {
                this.log.debug("Dispatching event " + evt.getType() + " to " + list.size() + " listeners");
            }
            try {
                for (IEventListener listener : list) {
                    listener.dispatch(evt);
                }
            } catch (Exception ex) {
                this.log.error("Error dispatching event " + evt.getType() + " :" + ex.getLocalizedMessage());
                ex.printStackTrace();
            }
        }
    }

    public void removeAll() {
        this.listeners.clear();
    }
}
