package org.jboss.netty.channel;

import com.helpshift.support.res.values.HSConsts;
import java.net.SocketAddress;
import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.util.internal.ConcurrentHashMap;
import org.jdom.filter.ContentFilter;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public abstract class AbstractChannel implements Channel {
    static final /* synthetic */ boolean $assertionsDisabled = (!AbstractChannel.class.desiredAssertionStatus());
    private static final IdDeallocator ID_DEALLOCATOR = new IdDeallocator();
    static final ConcurrentMap<Integer, Channel> allChannels = new ConcurrentHashMap();
    private final ChannelCloseFuture closeFuture = new ChannelCloseFuture();
    private final ChannelFactory factory;
    private final Integer id;
    private volatile int interestOps = 1;
    private final Channel parent;
    private final ChannelPipeline pipeline;
    private String strVal;
    private boolean strValConnected;
    private final ChannelFuture succeededFuture = new SucceededChannelFuture(this);

    private final class ChannelCloseFuture extends DefaultChannelFuture {
        public ChannelCloseFuture() {
            super(AbstractChannel.this, false);
        }

        public boolean setSuccess() {
            return false;
        }

        public boolean setFailure(Throwable cause) {
            return false;
        }

        boolean setClosed() {
            return super.setSuccess();
        }
    }

    private static final class IdDeallocator implements ChannelFutureListener {
        IdDeallocator() {
        }

        public void operationComplete(ChannelFuture future) throws Exception {
            AbstractChannel.allChannels.remove(future.getChannel().getId());
        }
    }

    private static Integer allocateId(Channel channel) {
        Integer id = Integer.valueOf(System.identityHashCode(channel));
        while (allChannels.putIfAbsent(id, channel) != null) {
            id = Integer.valueOf(id.intValue() + 1);
        }
        return id;
    }

    protected AbstractChannel(Channel parent, ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink) {
        this.parent = parent;
        this.factory = factory;
        this.pipeline = pipeline;
        this.id = allocateId(this);
        this.closeFuture.addListener(ID_DEALLOCATOR);
        pipeline.attach(this, sink);
    }

    protected AbstractChannel(Integer id, Channel parent, ChannelFactory factory, ChannelPipeline pipeline, ChannelSink sink) {
        this.id = id;
        this.parent = parent;
        this.factory = factory;
        this.pipeline = pipeline;
        pipeline.attach(this, sink);
    }

    public final Integer getId() {
        return this.id;
    }

    public Channel getParent() {
        return this.parent;
    }

    public ChannelFactory getFactory() {
        return this.factory;
    }

    public ChannelPipeline getPipeline() {
        return this.pipeline;
    }

    protected ChannelFuture getSucceededFuture() {
        return this.succeededFuture;
    }

    protected ChannelFuture getUnsupportedOperationFuture() {
        return new FailedChannelFuture(this, new UnsupportedOperationException());
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final boolean equals(Object o) {
        return this == o;
    }

    public final int compareTo(Channel o) {
        return getId().compareTo(o.getId());
    }

    public boolean isOpen() {
        return !this.closeFuture.isDone();
    }

    protected boolean setClosed() {
        return this.closeFuture.setClosed();
    }

    public ChannelFuture bind(SocketAddress localAddress) {
        return Channels.bind(this, localAddress);
    }

    public ChannelFuture unbind() {
        return Channels.unbind(this);
    }

    public ChannelFuture close() {
        ChannelCloseFuture returnedCloseFuture = Channels.close(this);
        if ($assertionsDisabled || this.closeFuture == returnedCloseFuture) {
            return this.closeFuture;
        }
        throw new AssertionError();
    }

    public ChannelFuture getCloseFuture() {
        return this.closeFuture;
    }

    public ChannelFuture connect(SocketAddress remoteAddress) {
        return Channels.connect(this, remoteAddress);
    }

    public ChannelFuture disconnect() {
        return Channels.disconnect(this);
    }

    public int getInterestOps() {
        return this.interestOps;
    }

    public ChannelFuture setInterestOps(int interestOps) {
        return Channels.setInterestOps(this, interestOps);
    }

    protected void setInterestOpsNow(int interestOps) {
        this.interestOps = interestOps;
    }

    public boolean isReadable() {
        return (getInterestOps() & 1) != 0;
    }

    public boolean isWritable() {
        return (getInterestOps() & 4) == 0;
    }

    public ChannelFuture setReadable(boolean readable) {
        if (readable) {
            return setInterestOps(getInterestOps() | 1);
        }
        return setInterestOps(getInterestOps() & -2);
    }

    public ChannelFuture write(Object message) {
        return Channels.write(this, message);
    }

    public ChannelFuture write(Object message, SocketAddress remoteAddress) {
        return Channels.write((Channel) this, message, remoteAddress);
    }

    public String toString() {
        boolean connected = isConnected();
        if (this.strValConnected == connected && this.strVal != null) {
            return this.strVal;
        }
        StringBuilder buf = new StringBuilder(ContentFilter.DOCTYPE);
        buf.append("[id: 0x");
        buf.append(getIdString());
        SocketAddress localAddress = getLocalAddress();
        SocketAddress remoteAddress = getRemoteAddress();
        if (remoteAddress != null) {
            buf.append(", ");
            if (getParent() == null) {
                buf.append(localAddress);
                buf.append(connected ? " => " : " :> ");
                buf.append(remoteAddress);
            } else {
                buf.append(remoteAddress);
                buf.append(connected ? " => " : " :> ");
                buf.append(localAddress);
            }
        } else if (localAddress != null) {
            buf.append(", ");
            buf.append(localAddress);
        }
        buf.append(']');
        String strVal = buf.toString();
        this.strVal = strVal;
        this.strValConnected = connected;
        return strVal;
    }

    private String getIdString() {
        String answer = Integer.toHexString(this.id.intValue());
        switch (answer.length()) {
            case Base64.NO_OPTIONS /*0*/:
                return "00000000";
            case BuddyOnlineState.OFFLINE /*1*/:
                return "0000000" + answer;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return "000000" + answer;
            case MessageRecipientMode.TO_ZONE /*3*/:
                return "00000" + answer;
            case Base64.DONT_GUNZIP /*4*/:
                return "0000" + answer;
            case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                return "000" + answer;
            case BaseRequest.CreateRoom /*6*/:
                return "00" + answer;
            case BaseRequest.GenericMessage /*7*/:
                return HSConsts.STATUS_NEW + answer;
            default:
                return answer;
        }
    }
}
