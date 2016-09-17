package com.helpshift.support.fragments;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.helpshift.R;
import com.helpshift.network.HttpStatus;
import com.helpshift.support.Faq;
import com.helpshift.support.FaqTagFilter;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.Section;
import com.helpshift.support.adapters.QuestionListAdapter;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.contracts.FaqFragmentListener;
import com.helpshift.support.util.FragmentUtil;
import com.helpshift.support.util.SnackbarUtil;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.BanUserRequest;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.util.BuddyOnlineState;

public class QuestionListFragment extends MainFragment {
    private static final String TAG = QuestionListFragment.class.getSimpleName();
    private HSApiData data;
    private boolean eventSent = false;
    private FaqFragmentListener faqFragmentListener;
    private FaqTagFilter faqTagFilter;
    private boolean isConfigurationChanged = false;
    private OnClickListener onQuestionClickedListener;
    private RecyclerView questionList;
    private String sectionId;
    private String sectionTitle;

    private static class SectionFailureHandler extends Handler {
        private final WeakReference<QuestionListFragment> questionListFragmentWeakReference;

        public SectionFailureHandler(QuestionListFragment fragment) {
            this.questionListFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            QuestionListFragment questionListFragment = (QuestionListFragment) this.questionListFragmentWeakReference.get();
            if (questionListFragment != null && !questionListFragment.isDetached()) {
                SnackbarUtil.showErrorSnackbar(((Integer) msg.obj.get(IssueColumns.STATUS)).intValue(), questionListFragment.getView());
            }
        }
    }

    private static class SectionSuccessHandler extends Handler {
        private final WeakReference<QuestionListFragment> questionListFragmentWeakReference;

        public SectionSuccessHandler(QuestionListFragment fragment) {
            this.questionListFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            QuestionListFragment questionListFragment = (QuestionListFragment) this.questionListFragmentWeakReference.get();
            if (questionListFragment != null && !questionListFragment.isDetached()) {
                if (msg.obj != null) {
                    questionListFragment.updateSectionData(msg.obj);
                } else {
                    SnackbarUtil.showErrorSnackbar(HttpStatus.SC_NOT_FOUND, questionListFragment.getView());
                }
            }
        }
    }

    public static QuestionListFragment newInstance(Bundle bundle, FaqFragmentListener faqFragmentListener) {
        QuestionListFragment questionListFragment = new QuestionListFragment();
        questionListFragment.setArguments(bundle);
        questionListFragment.faqFragmentListener = faqFragmentListener;
        return questionListFragment;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle extras = getActivity(this).getIntent().getExtras();
        if (extras != null) {
            this.faqTagFilter = (FaqTagFilter) extras.getSerializable("withTagsMatching");
        }
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__question_list_fragment, container, false);
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.data = new HSApiData(context);
        this.sectionTitle = getString(R.string.hs__help_header);
    }

    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.questionList = (RecyclerView) view.findViewById(R.id.question_list);
        this.questionList.setLayoutManager(new LinearLayoutManager(view.getContext()));
        this.onQuestionClickedListener = new OnClickListener() {
            public void onClick(View v) {
                QuestionListFragment.this.faqFragmentListener.onQuestionSelected((String) v.getTag(), null);
            }
        };
        String sectionPublishId = getArguments().getString("sectionPublishId");
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            supportFragment.setFaqLoaded(false);
        }
        if (isScreenLarge()) {
            getSectionTitle(sectionPublishId);
        }
        SectionSuccessHandler sectionSuccessHandler = new SectionSuccessHandler(this);
        SectionFailureHandler sectionFailHandler = new SectionFailureHandler(this);
        switch (getArguments().getInt(SupportFragment.SUPPORT_MODE, 0)) {
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                this.data.getSection(sectionPublishId, sectionSuccessHandler, sectionFailHandler, this.faqTagFilter);
                return;
            default:
                this.data.getSectionSync(sectionPublishId, sectionSuccessHandler, sectionFailHandler);
                return;
        }
    }

    private void updateSectionData(Section section) {
        List<Faq> questions = this.data.getFaqsForSection(section.getPublishId(), this.faqTagFilter);
        if (questions != null && !questions.isEmpty()) {
            this.questionList.setAdapter(new QuestionListAdapter(questions, this.onQuestionClickedListener));
            SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
            if (supportFragment != null) {
                supportFragment.setFaqLoaded(true);
            }
            if (TextUtils.isEmpty(this.sectionId)) {
                getSectionId(getArguments().getString("sectionPublishId"));
            }
            if (getUserVisibleHint() && !TextUtils.isEmpty(this.sectionId) && !this.eventSent && !this.isConfigurationChanged) {
                try {
                    JSONObject eventData = new JSONObject();
                    eventData.put(LoginRequest.KEY_ID, this.sectionId);
                    HSFunnel.pushEvent(BanUserRequest.KEY_BAN_MODE, eventData);
                    this.eventSent = true;
                } catch (JSONException e) {
                    Log.d(TAG, e.toString(), e);
                }
            }
        } else if (!isDetached()) {
            SnackbarUtil.showErrorSnackbar(HttpStatus.SC_NOT_FOUND, getView());
        }
    }

    private void getSectionTitle(String sectionPublishId) {
        Section section = this.data.getSection(sectionPublishId);
        if (section != null) {
            this.sectionTitle = section.getTitle();
        }
    }

    private void getSectionId(String sectionPublishId) {
        Section section = this.data.getSection(sectionPublishId);
        if (section != null) {
            this.sectionId = section.getSectionId();
        }
    }

    public void onResume() {
        super.onResume();
        if (isScreenLarge()) {
            setToolbarTitle(this.sectionTitle);
        }
    }

    public void onStart() {
        super.onStart();
        this.isConfigurationChanged = isChangingConfigurations();
        this.eventSent = false;
        if (getParentFragment() instanceof FaqFlowFragment) {
            addVisibleFragment();
        }
    }

    public void onStop() {
        if (isScreenLarge()) {
            setToolbarTitle(getString(R.string.hs__help_header));
        }
        if (getParentFragment() instanceof FaqFlowFragment) {
            removeVisibleFragment();
        }
        super.onStop();
    }

    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && !TextUtils.isEmpty(this.sectionId) && !this.isConfigurationChanged) {
            try {
                JSONObject eventData = new JSONObject();
                eventData.put(LoginRequest.KEY_ID, this.sectionId);
                HSFunnel.pushEvent(BanUserRequest.KEY_BAN_MODE, eventData);
                this.eventSent = true;
            } catch (JSONException e) {
                Log.d(TAG, e.toString(), e);
            }
        }
    }
}
