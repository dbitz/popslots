package com.helpshift.support.flows;

import com.helpshift.support.SupportInternal;
import com.helpshift.support.controllers.SupportController;
import java.util.HashMap;
import java.util.Map;

public class FAQsFlow implements Flow {
    private final HashMap config;
    private final int labelResId;
    private SupportController supportController;

    public FAQsFlow(int labelResId) {
        this(labelResId, new HashMap());
    }

    public FAQsFlow(int labelResId, Map config) {
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
        this.supportController.startFaqFlow(SupportInternal.cleanConfig(this.config), true);
    }
}
