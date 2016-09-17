package com.helpshift.support.fragments;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.helpshift.R;
import com.helpshift.support.compositions.FaqFragment;
import com.helpshift.support.contracts.FaqFlowView;
import com.helpshift.support.controllers.FaqFlowController;
import com.helpshift.support.util.FragmentUtil;

public class FaqFlowFragment extends MainFragment implements FaqFlowView {
    private FaqFlowController faqFlowController;
    private View selectQuestionView;
    private View verticalDivider;

    public static FaqFlowFragment newInstance(Bundle bundle) {
        FaqFlowFragment faqFlowFragment = new FaqFlowFragment();
        faqFlowFragment.setArguments(bundle);
        return faqFlowFragment;
    }

    public FaqFlowController getFaqFlowController() {
        return this.faqFlowController;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (this.faqFlowController == null) {
            this.faqFlowController = new FaqFlowController(this, context, getRetainedChildFragmentManager(), getArguments());
            getSupportFragment().setSearchListeners(this.faqFlowController);
        }
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__faq_flow_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.verticalDivider = view.findViewById(R.id.vertical_divider);
        this.selectQuestionView = view.findViewById(R.id.select_question_view);
    }

    public void onResume() {
        super.onResume();
        this.faqFlowController.start();
        this.faqFlowController.startPoller();
        updateSelectQuestionUI();
    }

    public void updateSelectQuestionUI() {
        if (isScreenLarge() && this.selectQuestionView != null) {
            if (getRetainedChildFragmentManager().findFragmentById(R.id.details_fragment_container) == null) {
                updateSelectQuestionUI(true);
            } else {
                updateSelectQuestionUI(false);
            }
        }
    }

    public void updateSelectQuestionUI(boolean visible) {
        if (this.selectQuestionView == null) {
            return;
        }
        if (visible) {
            this.selectQuestionView.setVisibility(0);
        } else {
            this.selectQuestionView.setVisibility(8);
        }
    }

    public void onPause() {
        super.onPause();
        this.faqFlowController.stopPoller();
    }

    public void onDestroy() {
        super.onDestroy();
        this.faqFlowController.quitPoller();
    }

    public SupportFragment getSupportFragment() {
        return (SupportFragment) getParentFragment();
    }

    public void showVerticalDivider(boolean visible) {
        if (this.verticalDivider == null) {
            return;
        }
        if (visible) {
            this.verticalDivider.setVisibility(0);
        } else {
            this.verticalDivider.setVisibility(8);
        }
    }

    public void retryGetSections() {
        FaqFragment faqFragment = FragmentUtil.getFaqFragment(getRetainedChildFragmentManager());
        if (faqFragment != null) {
            faqFragment.retryGetSections();
        }
    }
}
