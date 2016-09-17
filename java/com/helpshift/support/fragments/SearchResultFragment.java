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
import com.helpshift.support.Faq;
import com.helpshift.support.adapters.SearchResultAdapter;
import com.helpshift.support.contracts.SearchResultListener;
import java.util.ArrayList;
import java.util.List;

public class SearchResultFragment extends MainFragment {
    private OnClickListener onQuestionClickedListener;
    private RecyclerView searchResultList;
    private SearchResultListener searchResultListener;
    private OnClickListener sendAnywayClickedListener;

    public static SearchResultFragment newInstance(Bundle bundle, SearchResultListener listener) {
        SearchResultFragment searchResultFragment = new SearchResultFragment();
        searchResultFragment.setArguments(bundle);
        searchResultFragment.searchResultListener = listener;
        return searchResultFragment;
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__search_result_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.searchResultList = (RecyclerView) view.findViewById(R.id.search_result);
        this.searchResultList.setLayoutManager(new LinearLayoutManager(view.getContext()));
        this.onQuestionClickedListener = new OnClickListener() {
            public void onClick(View v) {
                String questionPublishId = (String) v.getTag();
                ArrayList<String> searchTerms = null;
                Faq faq = ((SearchResultAdapter) SearchResultFragment.this.searchResultList.getAdapter()).getFaq(questionPublishId);
                if (faq != null) {
                    searchTerms = faq.getSearchTerms();
                }
                SearchResultFragment.this.searchResultListener.onQuestionSelected(questionPublishId, searchTerms);
            }
        };
        this.sendAnywayClickedListener = new OnClickListener() {
            public void onClick(View v) {
                SearchResultFragment.this.searchResultListener.sendAnyway();
            }
        };
    }

    public void onResume() {
        super.onResume();
        showResults();
    }

    private void showResults() {
        List<Faq> results = getArguments().getParcelableArrayList("results");
        if (results != null && results.size() > 3) {
            results = results.subList(0, 3);
        }
        this.searchResultList.setAdapter(new SearchResultAdapter(results, this.onQuestionClickedListener, this.sendAnywayClickedListener));
    }
}
