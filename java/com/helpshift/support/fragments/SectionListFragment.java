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
import com.helpshift.constants.Tables;
import com.helpshift.support.Section;
import com.helpshift.support.adapters.SectionListAdapter;
import com.helpshift.support.contracts.FaqFragmentListener;
import java.util.ArrayList;

public class SectionListFragment extends MainFragment {
    private FaqFragmentListener faqFragmentListener;

    public static SectionListFragment newInstance(@Nullable Bundle bundle, FaqFragmentListener faqFragmentListener) {
        SectionListFragment sectionListFragment = new SectionListFragment();
        sectionListFragment.setArguments(bundle);
        sectionListFragment.faqFragmentListener = faqFragmentListener;
        return sectionListFragment;
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__section_list_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        final ArrayList<Section> sections = getArguments().getParcelableArrayList(Tables.SECTIONS);
        RecyclerView sectionList = (RecyclerView) view.findViewById(R.id.section_list);
        sectionList.setLayoutManager(new LinearLayoutManager(view.getContext()));
        sectionList.setAdapter(new SectionListAdapter(sections, new OnClickListener() {
            public void onClick(View v) {
                String sectionPublishId = (String) v.getTag();
                Bundle bundle = new Bundle();
                bundle.putParcelableArrayList(Tables.SECTIONS, sections);
                bundle.putString("sectionPublishId", sectionPublishId);
                SectionListFragment.this.faqFragmentListener.onSectionSelected(bundle);
            }
        }));
    }
}
