package sfs2x.client.util;

public class ConfigData {
    private String bboxHost;
    private int bboxPollingRate = 700;
    private boolean debug = false;
    private String host = "127.0.0.1";
    private int httpPort = 8080;
    private int httpsPort = 8443;
    private int port = 9933;
    private String udpHost = "127.0.0.1";
    private int udpPort = 9933;
    private boolean useBBox = true;
    private String zone;

    public boolean isDebug() {
        return this.debug;
    }

    public void setDebug(boolean debug) {
        this.debug = debug;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public int getPort() {
        return this.port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getUdpHost() {
        return this.udpHost;
    }

    public void setUdpHost(String udpHost) {
        this.udpHost = udpHost;
    }

    public int getUdpPort() {
        return this.udpPort;
    }

    public void setUdpPort(int udpPort) {
        this.udpPort = udpPort;
    }

    public boolean isUseBBox() {
        return this.useBBox;
    }

    public void setUseBBox(boolean useBBox) {
        this.useBBox = useBBox;
    }

    public String getBboxHost() {
        return this.bboxHost;
    }

    public void setBboxHost(String bboxHost) {
        this.bboxHost = bboxHost;
    }

    public int getBboxPollingRate() {
        return this.bboxPollingRate;
    }

    public void setBboxPollingRate(int bboxPollingRate) {
        this.bboxPollingRate = bboxPollingRate;
    }

    public int getHttpPort() {
        return this.httpPort;
    }

    public void setHttpPort(int httpPort) {
        this.httpPort = httpPort;
    }

    public String getZone() {
        return this.zone;
    }

    public void setZone(String zone) {
        this.zone = zone;
    }

    public int getHttpsPort() {
        return this.httpsPort;
    }

    public void setHttpsPort(int httpsPort) {
        this.httpsPort = httpsPort;
    }
}
