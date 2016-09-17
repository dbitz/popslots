package com.helpshift.support.flows;

import android.os.Bundle;
import com.helpshift.support.SupportInternal;
import com.helpshift.support.controllers.SupportController;
import com.helpshift.support.fragments.SupportFragment;
import java.util.HashMap;
import java.util.Map;

public class FAQSectionFlow implements Flow {
    private final HashMap config;
    private final int labelResId;
    private final String sectionPublishId;
    private SupportController supportController;

    public FAQSectionFlow(int labelResId, String sectionPublishId) {
        this(labelResId, sectionPublishId, new HashMap());
    }

    public FAQSectionFlow(int labelResId, String sectionPublishId, Map config) {
        this.labelResId = labelResId;
        this.sectionPublishId = sectionPublishId;
        this.config = new HashMap(config);
    }

    public void setSupportController(SupportController supportController) {
        this.supportController = supportController;
    }

    public int getLabelResId() {
        return this.labelResId;
    }

    public void performAction() {
        Bundle bundle = SupportInternal.cleanConfig(SupportInternal.removeFAQFlowUnsupportedConfigs(this.config));
        bundle.putString("sectionPublishId", this.sectionPublishId);
        bundle.putInt(SupportFragment.SUPPORT_MODE, 2);
        this.supportController.startFaqFlow(bundle, true);
    }
}
