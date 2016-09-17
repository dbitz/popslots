package org.jboss.netty.channel.socket.http;

import java.io.IOException;
import java.io.PushbackInputStream;
import java.net.SocketAddress;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.channel.local.DefaultLocalClientChannelFactory;
import org.jboss.netty.channel.local.LocalAddress;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class HttpTunnelingServlet extends HttpServlet {
    static final /* synthetic */ boolean $assertionsDisabled = (!HttpTunnelingServlet.class.desiredAssertionStatus() ? true : $assertionsDisabled);
    private static final String ENDPOINT = "endpoint";
    static final InternalLogger logger = InternalLoggerFactory.getInstance(HttpTunnelingServlet.class);
    private static final long serialVersionUID = 4259910275899756070L;
    private volatile ChannelFactory channelFactory;
    private volatile SocketAddress remoteAddress;

    private static final class OutboundConnectionHandler extends SimpleChannelUpstreamHandler {
        private final ServletOutputStream out;

        public OutboundConnectionHandler(ServletOutputStream out) {
            this.out = out;
        }

        public void messageReceived(ChannelHandlerContext ctx, MessageEvent e) throws Exception {
            ChannelBuffer buffer = (ChannelBuffer) e.getMessage();
            synchronized (this) {
                buffer.readBytes(this.out, buffer.readableBytes());
                this.out.flush();
            }
        }

        public void exceptionCaught(ChannelHandlerContext ctx, ExceptionEvent e) throws Exception {
            HttpTunnelingServlet.logger.warn("Unexpected exception while HTTP tunneling", e.getCause());
            e.getChannel().close();
        }
    }

    public void init() throws ServletException {
        String endpoint = getServletConfig().getInitParameter(ENDPOINT);
        if (endpoint == null) {
            throw new ServletException("init-param 'endpoint' must be specified.");
        }
        try {
            this.remoteAddress = parseEndpoint(endpoint.trim());
            try {
                this.channelFactory = createChannelFactory(this.remoteAddress);
            } catch (ServletException e) {
                throw e;
            } catch (Exception e2) {
                throw new ServletException("Failed to create a channel factory.", e2);
            }
        } catch (ServletException e3) {
            throw e3;
        } catch (Exception e22) {
            throw new ServletException("Failed to parse an endpoint.", e22);
        }
    }

    protected SocketAddress parseEndpoint(String endpoint) throws Exception {
        if (endpoint.startsWith("local:")) {
            return new LocalAddress(endpoint.substring(6).trim());
        }
        throw new ServletException("Invalid or unknown endpoint: " + endpoint);
    }

    protected ChannelFactory createChannelFactory(SocketAddress remoteAddress) throws Exception {
        if (remoteAddress instanceof LocalAddress) {
            return new DefaultLocalClientChannelFactory();
        }
        throw new ServletException("Unsupported remote address type: " + remoteAddress.getClass().getName());
    }

    public void destroy() {
        try {
            destroyChannelFactory(this.channelFactory);
        } catch (Exception e) {
            logger.warn("Failed to destroy a channel factory.", e);
        }
    }

    protected void destroyChannelFactory(ChannelFactory factory) throws Exception {
        factory.releaseExternalResources();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void service(javax.servlet.http.HttpServletRequest r14, javax.servlet.http.HttpServletResponse r15) throws javax.servlet.ServletException, java.io.IOException {
        /*
        r13 = this;
        r10 = "POST";
        r11 = r14.getMethod();
        r10 = r10.equalsIgnoreCase(r11);
        if (r10 != 0) goto L_0x0030;
    L_0x000d:
        r10 = logger;
        r11 = new java.lang.StringBuilder;
        r11.<init>();
        r12 = "Unallowed method: ";
        r11 = r11.append(r12);
        r12 = r14.getMethod();
        r11 = r11.append(r12);
        r11 = r11.toString();
        r10.warn(r11);
        r10 = 405; // 0x195 float:5.68E-43 double:2.0E-321;
        r15.sendError(r10);
    L_0x002f:
        return;
    L_0x0030:
        r9 = org.jboss.netty.channel.Channels.pipeline();
        r8 = r15.getOutputStream();
        r5 = new org.jboss.netty.channel.socket.http.HttpTunnelingServlet$OutboundConnectionHandler;
        r5.<init>(r8);
        r10 = "handler";
        r9.addLast(r10, r5);
        r10 = r13.channelFactory;
        r2 = r10.newChannel(r9);
        r10 = r13.remoteAddress;
        r10 = r2.connect(r10);
        r4 = r10.awaitUninterruptibly();
        r10 = r4.isSuccess();
        if (r10 != 0) goto L_0x0080;
    L_0x0059:
        r1 = r4.getCause();
        r10 = logger;
        r11 = new java.lang.StringBuilder;
        r11.<init>();
        r12 = "Endpoint unavailable: ";
        r11 = r11.append(r12);
        r12 = r1.getMessage();
        r11 = r11.append(r12);
        r11 = r11.toString();
        r10.warn(r11, r1);
        r10 = 503; // 0x1f7 float:7.05E-43 double:2.485E-321;
        r15.sendError(r10);
        goto L_0x002f;
    L_0x0080:
        r7 = 0;
        r10 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r15.setStatus(r10);	 Catch:{ all -> 0x00c5 }
        r10 = "Content-Type";
        r11 = "application/octet-stream";
        r15.setHeader(r10, r11);	 Catch:{ all -> 0x00c5 }
        r10 = "Content-Transfer-Encoding";
        r11 = "binary";
        r15.setHeader(r10, r11);	 Catch:{ all -> 0x00c5 }
        r8.flush();	 Catch:{ all -> 0x00c5 }
        r6 = new java.io.PushbackInputStream;	 Catch:{ all -> 0x00c5 }
        r10 = r14.getInputStream();	 Catch:{ all -> 0x00c5 }
        r6.<init>(r10);	 Catch:{ all -> 0x00c5 }
    L_0x00a4:
        r10 = r2.isConnected();	 Catch:{ all -> 0x00c5 }
        if (r10 == 0) goto L_0x00b0;
    L_0x00aa:
        r0 = read(r6);	 Catch:{ EOFException -> 0x00b7 }
        if (r0 != 0) goto L_0x00b9;
    L_0x00b0:
        if (r7 != 0) goto L_0x00be;
    L_0x00b2:
        r2.close();
        goto L_0x002f;
    L_0x00b7:
        r3 = move-exception;
        goto L_0x00b0;
    L_0x00b9:
        r7 = r2.write(r0);	 Catch:{ all -> 0x00c5 }
        goto L_0x00a4;
    L_0x00be:
        r10 = org.jboss.netty.channel.ChannelFutureListener.CLOSE;
        r7.addListener(r10);
        goto L_0x002f;
    L_0x00c5:
        r10 = move-exception;
        if (r7 != 0) goto L_0x00cc;
    L_0x00c8:
        r2.close();
    L_0x00cb:
        throw r10;
    L_0x00cc:
        r11 = org.jboss.netty.channel.ChannelFutureListener.CLOSE;
        r7.addListener(r11);
        goto L_0x00cb;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.http.HttpTunnelingServlet.service(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse):void");
    }

    private static ChannelBuffer read(PushbackInputStream in) throws IOException {
        byte[] buf;
        int readBytes;
        int bytesToRead = in.available();
        if (bytesToRead > 0) {
            buf = new byte[bytesToRead];
            readBytes = in.read(buf);
        } else if (bytesToRead != 0) {
            return null;
        } else {
            int b = in.read();
            if (b < 0 || in.available() < 0) {
                return null;
            }
            in.unread(b);
            buf = new byte[in.available()];
            readBytes = in.read(buf);
        }
        if (!$assertionsDisabled && readBytes <= 0) {
            throw new AssertionError();
        } else if (readBytes == buf.length) {
            return ChannelBuffers.wrappedBuffer(buf);
        } else {
            return ChannelBuffers.wrappedBuffer(buf, 0, readBytes);
        }
    }
}
