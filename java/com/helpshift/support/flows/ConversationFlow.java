package com.helpshift.support.flows;

import android.os.Bundle;
import com.helpshift.support.SupportInternal;
import com.helpshift.support.controllers.SupportController;
import com.helpshift.support.res.values.HSConsts;
import java.util.HashMap;
import java.util.Map;

public class ConversationFlow implements Flow {
    private final HashMap config;
    private final int labelResId;
    private SupportController supportController;

    public ConversationFlow(int labelResId) {
        this(labelResId, new HashMap());
    }

    public ConversationFlow(int labelResId, Map config) {
        this.labelResId = labelResId;
        this.config = new HashMap(config);
    }

    public void setSupportController(SupportController supportController) {
        this.supportController = supportController;
    }

    public int getLabelResId() {
        return this.labelResId;
    }

    public void performAction() {
        Bundle cleanConfig = SupportInternal.cleanConfig(this.config);
        cleanConfig.putString("chatLaunchSource", HSConsts.SRC_SUPPORT);
        this.supportController.startConversationFlow(cleanConfig, true);
    }
}
