package com.helpshift.support.flows;

import android.os.Bundle;
import com.helpshift.support.SupportInternal;
import com.helpshift.support.controllers.SupportController;
import com.helpshift.support.fragments.SupportFragment;
import java.util.HashMap;
import java.util.Map;

public class SingleFAQFlow implements Flow {
    private final HashMap config;
    private final int labelResId;
    private final String questionPublishId;
    private SupportController supportController;

    public SingleFAQFlow(int labelResId, String questionPublishId) {
        this(labelResId, questionPublishId, new HashMap());
    }

    public SingleFAQFlow(int labelResId, String questionPublishId, Map config) {
        this.labelResId = labelResId;
        this.questionPublishId = questionPublishId;
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
        bundle.putString("questionPublishId", this.questionPublishId);
        bundle.putInt(SupportFragment.SUPPORT_MODE, 3);
        this.supportController.startFaqFlow(bundle, true);
    }
}
