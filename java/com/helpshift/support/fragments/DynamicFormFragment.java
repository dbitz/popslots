package com.helpshift.support.fragments;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.helpshift.R;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.adapters.FlowListAdapter;
import com.helpshift.support.controllers.SupportController;
import com.helpshift.support.flows.ConversationFlow;
import com.helpshift.support.flows.DynamicFormFlow;
import com.helpshift.support.flows.FAQSectionFlow;
import com.helpshift.support.flows.FAQsFlow;
import com.helpshift.support.flows.Flow;
import com.helpshift.support.flows.SingleFAQFlow;
import java.util.List;

public class DynamicFormFragment extends MainFragment implements OnClickListener {
    private List<Flow> flowList;
    private RecyclerView flowListView;
    private boolean sendAnalyticsEvent = true;
    private SupportController supportController;

    public static DynamicFormFragment newInstance(Bundle bundle, List<Flow> flowList, SupportController supportController) {
        DynamicFormFragment dynamicFormFragment = new DynamicFormFragment();
        dynamicFormFragment.setArguments(bundle);
        dynamicFormFragment.flowList = flowList;
        dynamicFormFragment.supportController = supportController;
        return dynamicFormFragment;
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__dynamic_form_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState == null) {
            this.flowListView = (RecyclerView) view.findViewById(R.id.flow_list);
            this.flowListView.setLayoutManager(new LinearLayoutManager(view.getContext()));
        }
    }

    public void onResume() {
        super.onResume();
        showFlows();
    }

    private void showFlows() {
        if (this.flowList != null) {
            this.flowListView.setAdapter(new FlowListAdapter(this.flowList, this));
        }
    }

    public void onClick(View view) {
        Flow flow = (Flow) this.flowList.get(((Integer) view.getTag()).intValue());
        this.sendAnalyticsEvent = false;
        performAction(flow);
    }

    private void performAction(Flow flow) {
        if (flow instanceof ConversationFlow) {
            ((ConversationFlow) flow).setSupportController(this.supportController);
        } else if (flow instanceof FAQSectionFlow) {
            ((FAQSectionFlow) flow).setSupportController(this.supportController);
        } else if (flow instanceof SingleFAQFlow) {
            ((SingleFAQFlow) flow).setSupportController(this.supportController);
        } else if (flow instanceof DynamicFormFlow) {
            ((DynamicFormFlow) flow).setSupportController(this.supportController);
        } else if (flow instanceof FAQsFlow) {
            ((FAQsFlow) flow).setSupportController(this.supportController);
        }
        flow.performAction();
    }

    public void onStart() {
        super.onStart();
        if (!isChangingConfigurations() && this.sendAnalyticsEvent) {
            HSFunnel.pushEvent(HSFunnel.DYNAMIC_FORM_OPEN);
        }
        this.sendAnalyticsEvent = true;
    }

    public void onStop() {
        super.onStop();
        if (!isChangingConfigurations() && this.sendAnalyticsEvent) {
            HSFunnel.pushEvent(HSFunnel.DYNAMIC_FORM_CLOSE);
        }
    }
}
