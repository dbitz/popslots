package com.helpshift.support.compositions;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import com.helpshift.support.Section;
import com.helpshift.support.contracts.FaqFragmentListener;
import com.helpshift.support.fragments.QuestionListFragment;
import java.util.List;

public class SectionPagerAdapter extends FragmentStatePagerAdapter {
    private FaqFragmentListener faqFragmentListener;
    private List<Section> sections;

    public SectionPagerAdapter(FragmentManager fm, FaqFragmentListener faqFragmentListener, List<Section> sections) {
        super(fm);
        this.faqFragmentListener = faqFragmentListener;
        this.sections = sections;
    }

    public Fragment getItem(int position) {
        Bundle bundle = new Bundle();
        bundle.putString("sectionPublishId", ((Section) this.sections.get(position)).getPublishId());
        return QuestionListFragment.newInstance(bundle, this.faqFragmentListener);
    }

    public int getCount() {
        return this.sections.size();
    }

    public CharSequence getPageTitle(int position) {
        return ((Section) this.sections.get(position)).getTitle();
    }
}
