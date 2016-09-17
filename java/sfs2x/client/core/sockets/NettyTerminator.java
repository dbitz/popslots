package sfs2x.client.core.sockets;

import java.util.Timer;
import java.util.TimerTask;
import org.jboss.netty.bootstrap.ClientBootstrap;

public final class NettyTerminator extends TimerTask {
    private ClientBootstrap cb;
    private final Timer timer = new Timer(false);

    public NettyTerminator(ClientBootstrap cb) {
        this.cb = cb;
        this.timer.schedule(this, 2500);
    }

    public void run() {
        this.cb.releaseExternalResources();
        this.timer.cancel();
    }
}
