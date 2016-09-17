package sfs2x.client.net;

public interface IConnectionEventHandler {
    void onConnect(Exception exception);

    void onData(Object obj);

    void onDisconnect();

    void onError(Throwable th);
}
