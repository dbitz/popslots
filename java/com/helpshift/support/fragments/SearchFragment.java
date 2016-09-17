package com.helpshift.support.fragments;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.helpshift.R;
import com.helpshift.support.Faq;
import com.helpshift.support.FaqTagFilter;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSSearch.HS_SEARCH_OPTIONS;
import com.helpshift.support.adapters.SearchListAdapter;
import com.helpshift.support.contracts.FaqFragmentListener;
import com.helpshift.support.contracts.SearchListener;
import com.helpshift.support.controllers.SupportController;
import com.helpshift.support.util.FragmentUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SearchFragment extends MainFragment implements SearchListener {
    public static final String TAG = SearchFragment.class.getSimpleName();
    private String currentQuery;
    private HSApiData data;
    private FaqFragmentListener faqFragmentListener;
    private FaqTagFilter faqTagFilter;
    private OnClickListener onContactUsClickedListener;
    private OnClickListener onQuestionClickedListener;
    private RecyclerView searchList;
    private String sectionId;
    private SupportController supportController;

    public static SearchFragment newInstance(Bundle bundle) {
        SearchFragment searchFragment = new SearchFragment();
        searchFragment.setArguments(bundle);
        return searchFragment;
    }

    public void setFaqFragmentListener(FaqFragmentListener faqFragmentListener) {
        this.faqFragmentListener = faqFragmentListener;
    }

    public String getCurrentQuery() {
        return this.currentQuery;
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
        return inflater.inflate(R.layout.hs__search_fragment, container, false);
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.data = new HSApiData(context);
        this.data.loadIndex();
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            this.supportController = supportFragment.getSupportController();
        }
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.searchList = (RecyclerView) view.findViewById(R.id.search_list);
        this.searchList.setLayoutManager(new LinearLayoutManager(view.getContext()));
        this.onQuestionClickedListener = new OnClickListener() {
            public void onClick(View v) {
                String questionPublishId = (String) v.getTag();
                ArrayList<String> searchTerms = null;
                Faq faq = ((SearchListAdapter) SearchFragment.this.searchList.getAdapter()).getFaq(questionPublishId);
                if (faq != null) {
                    searchTerms = faq.getSearchTerms();
                }
                SearchFragment.this.faqFragmentListener.onQuestionSelected(questionPublishId, searchTerms);
            }
        };
        this.onContactUsClickedListener = new OnClickListener() {
            public void onClick(View v) {
                if (SearchFragment.this.supportController != null) {
                    SearchFragment.this.supportController.onContactUsClicked(SearchFragment.this.currentQuery);
                }
            }
        };
        onQuery(this.currentQuery, this.sectionId);
    }

    public void onStart() {
        super.onStart();
        addVisibleFragment();
    }

    public void onStop() {
        super.onStop();
        removeVisibleFragment();
    }

    public void onQuery(String query, String sectionId) {
        this.currentQuery = query;
        this.sectionId = sectionId;
        if (this.searchList != null) {
            List<Faq> searchResult;
            boolean searchWithAny = false;
            String currentLang = Locale.getDefault().getLanguage();
            if (currentLang.equals("zh") || currentLang.equals("ja") || currentLang.equals("ko")) {
                searchWithAny = true;
            }
            if (query == null) {
                query = "";
            } else {
                query = query.trim();
            }
            if (TextUtils.isEmpty(query) || (query.length() < 3 && !searchWithAny)) {
                searchResult = this.data.getAllFaqs(this.faqTagFilter);
            } else {
                searchResult = this.data.localFaqSearch(query, HS_SEARCH_OPTIONS.FULL_SEARCH, this.faqTagFilter);
            }
            if (!TextUtils.isEmpty(sectionId)) {
                List<Faq> sectionResults = new ArrayList();
                for (Faq question : searchResult) {
                    if (question.getSectionPublishId().equals(sectionId)) {
                        sectionResults.add(question);
                    }
                }
                searchResult = sectionResults;
            }
            SearchListAdapter searchListAdapter = new SearchListAdapter(this.currentQuery, searchResult, this.onQuestionClickedListener, this.onContactUsClickedListener);
            searchListAdapter.setHasStableIds(true);
            if (this.searchList.getAdapter() == null) {
                this.searchList.setAdapter(searchListAdapter);
            } else {
                this.searchList.swapAdapter(new SearchListAdapter(this.currentQuery, searchResult, this.onQuestionClickedListener, this.onContactUsClickedListener), true);
            }
        }
    }
}
