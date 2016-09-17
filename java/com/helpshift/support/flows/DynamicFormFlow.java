package com.helpshift.support.flows;

import com.helpshift.support.controllers.SupportController;
import java.util.List;

public class DynamicFormFlow implements Flow {
    private final List<Flow> flowList;
    private final int labelResId;
    private SupportController supportController;

    public DynamicFormFlow(int labelResId, List<Flow> flowList) {
        this.labelResId = labelResId;
        this.flowList = flowList;
    }

    public void setSupportController(SupportController supportController) {
        this.supportController = supportController;
    }

    public int getLabelResId() {
        return this.labelResId;
    }

    public void performAction() {
        this.supportController.startDynamicForm(this.flowList, true);
    }
}
