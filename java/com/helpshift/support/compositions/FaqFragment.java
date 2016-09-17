package com.helpshift.support.compositions;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.helpshift.R;
import com.helpshift.constants.Tables;
import com.helpshift.support.FaqTagFilter;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.Section;
import com.helpshift.support.constants.GetSectionsCallBackStatus;
import com.helpshift.support.contracts.FaqFragmentListener;
import com.helpshift.support.fragments.FaqFlowFragment;
import com.helpshift.support.fragments.MainFragment;
import com.helpshift.support.fragments.QuestionListFragment;
import com.helpshift.support.fragments.SectionListFragment;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.support.util.FragmentUtil;
import com.helpshift.support.util.SnackbarUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import sfs2x.client.requests.FindUsersRequest;

public class FaqFragment extends MainFragment {
    private static int sectionsSize = 0;
    private HSApiData data;
    private FaqFragmentListener faqFragmentListener;
    private FaqTagFilter faqTagFilter;

    private static class Failure extends Handler {
        private final WeakReference<FaqFragment> faqFragmentWeakReference;

        public Failure(FaqFragment fragment) {
            this.faqFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            FaqFragment faqFragment = (FaqFragment) this.faqFragmentWeakReference.get();
            if (faqFragment != null && !faqFragment.isDetached()) {
                SnackbarUtil.showSnackbar(faqFragment.getView(), faqFragment.getString(R.string.hs__network_error_msg), -1);
                if (FaqFragment.sectionsSize == 0) {
                    faqFragment.updateFaqLoadingUI(3);
                } else {
                    faqFragment.updateFaqLoadingUI(1);
                }
            }
        }
    }

    public static class FaqLoadingStatus {
        public static final int ERROR = 3;
        public static final int HIDE = 1;
        public static final int IN_PROGRESS = 0;
        public static final int NO_FAQS = 2;
    }

    private static class Success extends Handler {
        private final WeakReference<FaqFragment> faqFragmentWeakReference;

        public Success(FaqFragment fragment) {
            this.faqFragmentWeakReference = new WeakReference(fragment);
        }

        public void handleMessage(Message msg) {
            FaqFragment faqFragment = (FaqFragment) this.faqFragmentWeakReference.get();
            if (faqFragment != null) {
                ArrayList<Section> sections = msg.obj;
                int status = msg.what;
                if (sections != null) {
                    sections = faqFragment.removeEmptySections(sections);
                    FaqFragment.sectionsSize = sections.size();
                }
                if (status == GetSectionsCallBackStatus.DATABASE_SUCCESS) {
                    if (FaqFragment.sectionsSize != 0) {
                        faqFragment.updateFaqLoadingUI(1);
                        faqFragment.updateFragment(faqFragment, sections);
                    }
                } else if (status == GetSectionsCallBackStatus.API_SUCCESS_NEW_DATA) {
                    if (FaqFragment.sectionsSize == 0) {
                        faqFragment.updateFaqLoadingUI(2);
                        return;
                    }
                    faqFragment.updateFaqLoadingUI(1);
                    faqFragment.updateFragment(faqFragment, sections);
                } else if (status == GetSectionsCallBackStatus.API_SUCCESS_NO_NEW_DATA && FaqFragment.sectionsSize == 0) {
                    faqFragment.updateFaqLoadingUI(2);
                }
            }
        }
    }

    public static FaqFragment newInstance(Bundle bundle, FaqFragmentListener faqFragmentListener) {
        FaqFragment faqFragment = new FaqFragment();
        faqFragment.setArguments(bundle);
        faqFragment.faqFragmentListener = faqFragmentListener;
        return faqFragment;
    }

    private void updateFragment(FaqFragment faqFragment, ArrayList<Section> sections) {
        sections = faqFragment.data.getPopulatedSections(sections, faqFragment.faqTagFilter);
        Bundle bundle;
        if (sections.size() == 1) {
            bundle = new Bundle();
            bundle.putString("sectionPublishId", ((Section) sections.get(0)).getPublishId());
            try {
                FragmentUtil.startFragment(faqFragment.getRetainedChildFragmentManager(), R.id.faq_fragment_container, QuestionListFragment.newInstance(bundle, faqFragment.faqFragmentListener), null, null, false);
            } catch (IllegalStateException e) {
            }
        } else {
            bundle = faqFragment.getBundle();
            bundle.putParcelableArrayList(Tables.SECTIONS, sections);
            try {
                FragmentUtil.startFragment(faqFragment.getRetainedChildFragmentManager(), R.id.faq_fragment_container, SectionListFragment.newInstance(bundle, faqFragment.faqFragmentListener), null, null, false);
            } catch (IllegalStateException e2) {
            }
        }
        sendFaqLoadedEvent();
    }

    private void sendFaqLoadedEvent() {
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            supportFragment.setFaqLoaded(true);
        }
    }

    public void updateFaqLoadingUI(int state) {
        FaqFlowFragment faqFlowFragment = (FaqFlowFragment) getParentFragment();
        SupportFragment supportFragment = null;
        if (faqFlowFragment != null) {
            supportFragment = (SupportFragment) faqFlowFragment.getParentFragment();
        }
        if (supportFragment != null) {
            if (state == 1) {
                faqFlowFragment.showVerticalDivider(true);
                faqFlowFragment.updateSelectQuestionUI();
            } else {
                faqFlowFragment.showVerticalDivider(false);
                faqFlowFragment.updateSelectQuestionUI(false);
            }
            supportFragment.updateFaqLoadingUI(state);
        }
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
        return inflater.inflate(R.layout.hs__faq_fragment, container, false);
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.data = new HSApiData(context);
    }

    public void onResume() {
        super.onResume();
        if (sectionsSize == 0) {
            updateFaqLoadingUI(0);
        }
        this.data.getSections(new Success(this), new Failure(this), this.faqTagFilter);
    }

    public void onStart() {
        super.onStart();
        if (!isChangingConfigurations()) {
            HSFunnel.pushEvent(FindUsersRequest.KEY_LIMIT);
        }
        addVisibleFragment();
    }

    public void onStop() {
        super.onStop();
        removeVisibleFragment();
        updateFaqLoadingUI(1);
    }

    public void retryGetSections() {
        if (sectionsSize == 0) {
            updateFaqLoadingUI(0);
        }
        this.data.getSections(new Success(this), new Failure(this), this.faqTagFilter);
    }

    private ArrayList<Section> removeEmptySections(ArrayList<Section> sections) {
        ArrayList<Section> nonEmptySections = new ArrayList();
        Iterator it = sections.iterator();
        while (it.hasNext()) {
            Section section = (Section) it.next();
            ArrayList faqsForSection = this.data.getFaqsForSection(section.getPublishId(), this.faqTagFilter);
            if (!(faqsForSection == null || faqsForSection.isEmpty())) {
                nonEmptySections.add(section);
            }
        }
        return nonEmptySections;
    }
}
