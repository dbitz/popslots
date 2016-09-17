package com.helpshift.support.activities;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import com.helpshift.R;
import com.helpshift.support.flows.Flow;
import com.helpshift.support.fragments.SupportFragment;
import java.util.List;

public class ParentActivity extends MainActivity {
    FragmentManager fragmentManager;

    public static class FlowListHolder {
        private static List<Flow> flowList = null;

        public static void setFlowList(List<Flow> flowList) {
            flowList = flowList;
        }

        public static List<Flow> getFlowList() {
            return flowList;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hs__parent_activity);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
        this.fragmentManager = getSupportFragmentManager();
        if (savedInstanceState == null) {
            FragmentTransaction fragmentTransaction = this.fragmentManager.beginTransaction();
            fragmentTransaction.add(R.id.support_fragment_container, SupportFragment.newInstance(getIntent().getExtras()));
            fragmentTransaction.commit();
        }
    }

    public void onBackPressed() {
        for (Fragment fragment : this.fragmentManager.getFragments()) {
            if (fragment != null && fragment.isVisible() && (fragment instanceof SupportFragment)) {
                if (!((SupportFragment) fragment).onBackPressed()) {
                    FragmentManager childFragmentManager = fragment.getChildFragmentManager();
                    if (childFragmentManager.getBackStackEntryCount() > 0) {
                        childFragmentManager.popBackStack();
                        return;
                    }
                } else {
                    return;
                }
            }
        }
        super.onBackPressed();
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 16908332:
                onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
