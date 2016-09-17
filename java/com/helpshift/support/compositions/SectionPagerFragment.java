package com.helpshift.support.compositions;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TabLayout;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.helpshift.R;
import com.helpshift.constants.Tables;
import com.helpshift.support.Section;
import com.helpshift.support.contracts.FaqFragmentListener;
import com.helpshift.support.fragments.MainFragment;
import com.helpshift.support.util.Styles;
import java.util.List;

public class SectionPagerFragment extends MainFragment {
    private FaqFragmentListener faqFragmentListener;
    private TabLayout tabLayout;
    private int tabLayoutPadding = 0;
    private FrameLayout viewPagerContainer;

    public static SectionPagerFragment newInstance(Bundle bundle) {
        SectionPagerFragment sectionPagerFragment = new SectionPagerFragment();
        sectionPagerFragment.setArguments(bundle);
        return sectionPagerFragment;
    }

    public void setFaqFragmentListener(FaqFragmentListener faqFragmentListener) {
        this.faqFragmentListener = faqFragmentListener;
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__section_pager_fragment, container, false);
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.tabLayoutPadding = (int) Styles.dpToPx(context, 48.0f);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        List<Section> sections = getArguments().getParcelableArrayList(Tables.SECTIONS);
        ViewPager viewPager = (ViewPager) view.findViewById(R.id.section_pager);
        viewPager.setAdapter(new SectionPagerAdapter(getChildFragmentManager(), this.faqFragmentListener, sections));
        this.tabLayout = (TabLayout) view.findViewById(R.id.pager_tabs);
        this.tabLayout.getChildAt(0).setPadding(this.tabLayoutPadding, 0, this.tabLayoutPadding, 0);
        this.tabLayout.setupWithViewPager(viewPager);
        viewPager.setCurrentItem(getSectionPosition(sections, getArguments().getString("sectionPublishId")));
        this.viewPagerContainer = (FrameLayout) view.findViewById(R.id.view_pager_container);
    }

    private int getSectionPosition(List<Section> sections, String sectionPublishId) {
        for (int i = 0; i < sections.size(); i++) {
            if (((Section) sections.get(i)).getPublishId().equals(sectionPublishId)) {
                return i;
            }
        }
        return 0;
    }

    public void onResume() {
        super.onResume();
        showToolbarElevation(false);
        showTabLayoutElevation();
    }

    public void onStart() {
        super.onStart();
        addVisibleFragment();
    }

    public void onStop() {
        super.onStop();
        removeVisibleFragment();
        showToolbarElevation(true);
    }

    private void showTabLayoutElevation() {
        if (VERSION.SDK_INT >= 21) {
            this.tabLayout.setElevation(Styles.dpToPx(getContext(), 4.0f));
        } else {
            this.viewPagerContainer.setForeground(getResources().getDrawable(R.drawable.hs__actionbar_compat_shadow));
        }
    }
}
