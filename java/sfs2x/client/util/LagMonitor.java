package sfs2x.client.util;

import com.facebook.widget.PlacePickerFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import sfs2x.client.SmartFox;
import sfs2x.client.requests.PingPongRequest;

public class LagMonitor {
    private int interval;
    private volatile boolean isPollRunning;
    private long lastReqTime;
    private Timer pollTimer;
    private int queueSize;
    private SmartFox sfs;
    private List<Integer> valueQueue;

    class PollTimerTask extends TimerTask {
        PollTimerTask() {
        }

        public void run() {
            LagMonitor.this.lastReqTime = System.currentTimeMillis();
            LagMonitor.this.sfs.send(new PingPongRequest());
        }
    }

    public LagMonitor(SmartFox sfs) {
        this(sfs, 4, 10);
    }

    public LagMonitor(SmartFox sfs, int interval) {
        this(sfs, interval, 10);
    }

    public LagMonitor(SmartFox sfs, int interval, int queueSize) {
        this.isPollRunning = false;
        if (interval < 1) {
            interval = 1;
        }
        this.sfs = sfs;
        this.valueQueue = new ArrayList(queueSize);
        this.interval = interval * PlacePickerFragment.DEFAULT_RADIUS_IN_METERS;
        this.queueSize = queueSize;
    }

    public void start() {
        if (!isRunning().booleanValue()) {
            this.pollTimer = new Timer();
            this.pollTimer.scheduleAtFixedRate(new PollTimerTask(), 0, (long) this.interval);
            this.isPollRunning = true;
        }
    }

    public void stop() {
        if (isRunning().booleanValue() && this.pollTimer != null) {
            this.pollTimer.cancel();
            this.pollTimer = null;
        }
    }

    public Boolean isRunning() {
        return Boolean.valueOf(this.isPollRunning);
    }

    public synchronized int onPingPong() {
        int lagValue = (int) (System.currentTimeMillis() - this.lastReqTime);
        if (this.valueQueue.size() >= this.queueSize) {
            this.valueQueue.remove(0);
        }
        this.valueQueue.add(Integer.valueOf(lagValue));
        return getAveragePingTime();
    }

    public synchronized int getLastPingTime() {
        int intValue;
        if (this.valueQueue.size() > 0) {
            intValue = ((Integer) this.valueQueue.get(this.valueQueue.size() - 1)).intValue();
        } else {
            intValue = 0;
        }
        return intValue;
    }

    public synchronized int getAveragePingTime() {
        int i;
        if (this.valueQueue.size() == 0) {
            i = 0;
        } else {
            int lagAverage = 0;
            for (Integer intValue : this.valueQueue) {
                lagAverage += intValue.intValue();
            }
            i = lagAverage / this.valueQueue.size();
        }
        return i;
    }
}
