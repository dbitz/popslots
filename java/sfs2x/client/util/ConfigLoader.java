package sfs2x.client.util;

import com.facebook.internal.ServerProtocol;
import com.helpshift.support.model.ErrorReport;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.core.EventDispatcher;
import sfs2x.client.core.SFSEvent;
import sfs2x.client.requests.game.CreateSFSGameRequest;

public class ConfigLoader {
    private EventDispatcher dispatcher = new EventDispatcher(this);
    private Document xmldoc;

    public EventDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public void loadConfig(String filePath) {
        try {
            this.xmldoc = new SAXBuilder(false).build(new File(filePath));
            tryParse();
        } catch (Exception ex) {
            ex.printStackTrace();
            onConfigLoadFailure("Error loading config file: " + ex.getMessage());
        }
    }

    private void tryParse() {
        Logger log = LoggerFactory.getLogger(getClass());
        ConfigData cfgData = new ConfigData();
        try {
            Element configNode = this.xmldoc.getRootElement();
            if (configNode.getChild(CreateSFSGameRequest.KEY_INVITATION_PARAMS) == null || configNode.getChild(CreateSFSGameRequest.KEY_INVITATION_PARAMS).getText().equals("")) {
                log.error("Required config node missing: ip");
            }
            if (configNode.getChild(Values.PORT) == null || configNode.getChild(Values.PORT).getText().equals("")) {
                log.error("Required config node missing: port");
            }
            if (configNode.getChild("udpIp") == null || configNode.getChild("udpIp").getText().equals("")) {
                log.error("Required config node missing: udpIp");
            }
            if (configNode.getChild("udpPort") == null || configNode.getChild("udpPort").getText().equals("")) {
                log.error("Required config node missing: udpPort");
            }
            if (configNode.getChild("zone") == null || configNode.getChild("zone").getText().equals("")) {
                log.error("Required config node missing: zone");
            }
            cfgData.setHost(configNode.getChild(CreateSFSGameRequest.KEY_INVITATION_PARAMS).getText());
            cfgData.setPort(Integer.valueOf(configNode.getChild(Values.PORT).getText()).intValue());
            cfgData.setUdpHost(configNode.getChild("udpIp").getText());
            cfgData.setUdpPort(Integer.valueOf(configNode.getChild("udpPort").getText()).intValue());
            cfgData.setZone(configNode.getChild("zone").getText());
            if (!(configNode.getChild("debug") == null || configNode.getChild("debug").getText().equals(""))) {
                cfgData.setDebug(configNode.getChild("debug").getText().toLowerCase().equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
            }
            if (!(configNode.getChild("useBlueBox") == null || configNode.getChild("useBlueBox").getText().equals(""))) {
                cfgData.setUseBBox(configNode.getChild("useBlueBox").getText().toLowerCase().equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));
            }
            if (!(configNode.getChild("httpPort") == null || configNode.getChild("httpPort").getText().equals(""))) {
                cfgData.setHttpPort(Integer.valueOf(configNode.getChild("httpPort").getText()).intValue());
            }
            if (!(configNode.getChild("httpsPort") == null || configNode.getChild("httpsPort").getText().equals(""))) {
                cfgData.setHttpsPort(Integer.valueOf(configNode.getChild("httpsPort").getText()).intValue());
            }
            if (!(configNode.getChild("blueBoxPollingRate") == null || configNode.getChild("blueBoxPollingRate").getText().equals(""))) {
                cfgData.setBboxPollingRate(Integer.valueOf(configNode.getChild("blueBoxPollingRate").getText()).intValue());
            }
            Map<String, Object> data = new HashMap();
            data.put("cfg", cfgData);
            this.dispatcher.dispatchEvent(new SFSEvent(SFSEvent.CONFIG_LOAD_SUCCESS, data));
        } catch (Exception ex) {
            ex.printStackTrace();
            onConfigLoadFailure("Error parsing config file: " + ex.getMessage() + " " + ex.getStackTrace());
        }
    }

    private void onConfigLoadFailure(String msg) {
        Map<String, Object> data = new HashMap();
        data.put(ErrorReport.KEY_MESSAGE, msg);
        this.dispatcher.dispatchEvent(new SFSEvent(SFSEvent.CONFIG_LOAD_FAILURE, data));
    }
}
