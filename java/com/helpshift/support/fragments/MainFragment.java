package com.helpshift.support.fragments;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.helpshift.R;
import com.helpshift.support.util.FragmentUtil;
import com.helpshift.support.util.LocaleUtil;
import com.helpshift.support.util.Styles;
import com.helpshift.util.HelpshiftContext;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public abstract class MainFragment extends Fragment {
    private static final String TAG = SupportFragment.class.getSimpleName();
    public static final String TOOLBAR_ID = "toolbarId";
    private List<Integer> fragmentMenuItems = null;
    private final String fragmentName = getClass().getSimpleName();
    private boolean isChangingConfigurations;
    private boolean isScreenLarge;
    private FragmentManager retainedChildFragmentManager;
    private Toolbar toolbar = null;
    private int toolbarId = 0;

    public FragmentManager getRetainedChildFragmentManager() {
        if (this.retainedChildFragmentManager == null) {
            this.retainedChildFragmentManager = getChildFragmentManager();
        }
        return this.retainedChildFragmentManager;
    }

    public boolean isChangingConfigurations() {
        return this.isChangingConfigurations;
    }

    public Context getContext() {
        Context context = super.getContext();
        return context != null ? context : HelpshiftContext.getApplicationContext();
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (HelpshiftContext.getApplicationContext() == null) {
            HelpshiftContext.setApplicationContext(context.getApplicationContext());
        }
        LocaleUtil.changeLanguage(getContext());
        this.isScreenLarge = getResources().getBoolean(R.bool.is_screen_large);
        if (this.retainedChildFragmentManager != null) {
            try {
                Field childFMField = Fragment.class.getDeclaredField("mChildFragmentManager");
                childFMField.setAccessible(true);
                childFMField.set(this, this.retainedChildFragmentManager);
            } catch (NoSuchFieldException e) {
                Log.d(TAG, "NoSuchFieldException", e);
            } catch (IllegalAccessException e2) {
                Log.d(TAG, "IllegalAccessException", e2);
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle bundle = getArguments();
        if (bundle != null) {
            this.toolbarId = bundle.getInt(TOOLBAR_ID);
        }
        if (this.toolbarId == 0 && getMenuResourceId() != 0) {
            setHasOptionsMenu(true);
        }
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (this.toolbarId != 0 && getMenuResourceId() != 0) {
            int i;
            this.toolbar = (Toolbar) getActivity().findViewById(this.toolbarId);
            Menu parentMenu = this.toolbar.getMenu();
            List<Integer> parentMenuItems = new ArrayList();
            for (i = 0; i < parentMenu.size(); i++) {
                parentMenuItems.add(Integer.valueOf(parentMenu.getItem(i).getItemId()));
            }
            this.toolbar.inflateMenu(getMenuResourceId());
            attachMenuListeners(this.toolbar.getMenu());
            Menu fragmentMenu = this.toolbar.getMenu();
            this.fragmentMenuItems = new ArrayList();
            for (i = 0; i < fragmentMenu.size(); i++) {
                int menuItemId = fragmentMenu.getItem(i).getItemId();
                if (!parentMenuItems.contains(Integer.valueOf(menuItemId))) {
                    this.fragmentMenuItems.add(Integer.valueOf(menuItemId));
                }
            }
        }
    }

    public void onStop() {
        super.onStop();
        if (VERSION.SDK_INT >= 11) {
            this.isChangingConfigurations = getActivity(this).isChangingConfigurations();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.toolbar != null) {
            Menu toolbarMenu = this.toolbar.getMenu();
            for (Integer menuItem : this.fragmentMenuItems) {
                toolbarMenu.removeItem(menuItem.intValue());
            }
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        inflater.inflate(getMenuResourceId(), menu);
        attachMenuListeners(menu);
        super.onCreateOptionsMenu(menu, inflater);
    }

    protected Bundle getBundle() {
        Bundle bundle = new Bundle();
        if (this.toolbarId != 0) {
            bundle.putInt(TOOLBAR_ID, this.toolbarId);
        }
        return bundle;
    }

    protected int getMenuResourceId() {
        return 0;
    }

    protected void attachMenuListeners(Menu menu) {
    }

    public Activity getActivity(Fragment fragment) {
        if (fragment == null) {
            return null;
        }
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getActivity();
    }

    public boolean isScreenLarge() {
        return this.isScreenLarge;
    }

    public void setToolbarTitle(String title) {
        if (this.toolbar != null) {
            this.toolbar.setTitle(title);
            return;
        }
        ActionBar actionBar = ((AppCompatActivity) getActivity(this)).getSupportActionBar();
        if (actionBar != null) {
            actionBar.setTitle(title);
        }
    }

    public void showToolbarElevation(boolean visible) {
        if (VERSION.SDK_INT >= 21) {
            showToolbarElevationLollipop(visible);
        } else {
            showToolbarElevationPreLollipop(visible);
        }
    }

    @TargetApi(21)
    private void showToolbarElevationLollipop(boolean visible) {
        if (this.toolbar == null) {
            ActionBar actionBar = ((AppCompatActivity) getActivity(this)).getSupportActionBar();
            if (actionBar == null) {
                return;
            }
            if (visible) {
                actionBar.setElevation(Styles.dpToPx(getContext(), 4.0f));
            } else {
                actionBar.setElevation(0.0f);
            }
        } else if (visible) {
            this.toolbar.setElevation(Styles.dpToPx(getContext(), 4.0f));
        } else {
            this.toolbar.setElevation(0.0f);
        }
    }

    private void showToolbarElevationPreLollipop(boolean visible) {
        FrameLayout flowFragmentContainer = (FrameLayout) getActivity(this).findViewById(R.id.flow_fragment_container);
        if (flowFragmentContainer == null) {
            return;
        }
        if (visible) {
            flowFragmentContainer.setForeground(getResources().getDrawable(R.drawable.hs__actionbar_compat_shadow));
        } else {
            flowFragmentContainer.setForeground(new ColorDrawable(0));
        }
    }

    public void addVisibleFragment() {
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            supportFragment.addVisibleFragment(this.fragmentName);
        }
    }

    public void addVisibleFragment(String fragmentName) {
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            supportFragment.addVisibleFragment(fragmentName);
        }
    }

    public void removeVisibleFragment() {
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            supportFragment.removeVisibleFragment(this.fragmentName);
        }
    }

    public void removeVisibleFragment(String fragmentName) {
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            supportFragment.removeVisibleFragment(fragmentName);
        }
    }
}
