package com.helpshift.support.util;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import com.helpshift.R;
import com.helpshift.support.HSAddIssueFragment;
import com.helpshift.support.HSMessagesFragment;
import com.helpshift.support.compositions.FaqFragment;
import com.helpshift.support.controllers.ConversationFlowController;
import com.helpshift.support.controllers.FaqFlowController;
import com.helpshift.support.fragments.ConversationFlowFragment;
import com.helpshift.support.fragments.FaqFlowFragment;
import com.helpshift.support.fragments.QuestionListFragment;
import com.helpshift.support.fragments.ScreenshotPreviewFragment;
import com.helpshift.support.fragments.SearchFragment;
import com.helpshift.support.fragments.SectionListFragment;
import com.helpshift.support.fragments.SingleQuestionFragment;
import com.helpshift.support.fragments.SupportFragment;
import com.helpshift.util.HelpshiftContext;
import java.util.ArrayList;
import java.util.List;

public class FragmentUtil {
    public static void startFragment(FragmentManager fragmentManager, int fragmentContainerId, Fragment fragment, String tag, String backStackName, boolean executePendingTransactions) {
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        if (shouldHaveAnimation(fragment)) {
            fragmentTransaction.setCustomAnimations(R.anim.slide_in_from_right, R.anim.slide_out_to_left, R.anim.slide_in_from_left, R.anim.slide_out_to_right);
        }
        fragmentTransaction.replace(fragmentContainerId, fragment, tag);
        if (!TextUtils.isEmpty(backStackName)) {
            fragmentTransaction.addToBackStack(backStackName);
        }
        fragmentTransaction.commit();
        if (executePendingTransactions) {
            fragmentManager.executePendingTransactions();
        }
    }

    public static void startFragmentWithBackStack(FragmentManager fragmentManager, int fragmentContainerId, Fragment fragment, String tag, boolean executePendingTransactions) {
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        if (shouldHaveAnimation(fragment)) {
            fragmentTransaction.setCustomAnimations(R.anim.slide_in_from_right, R.anim.slide_out_to_left, R.anim.slide_in_from_left, R.anim.slide_out_to_right);
        }
        fragmentTransaction.replace(fragmentContainerId, fragment, tag);
        fragmentTransaction.addToBackStack(fragment.getClass().getSimpleName());
        fragmentTransaction.commit();
        if (executePendingTransactions) {
            fragmentManager.executePendingTransactions();
        }
    }

    public static void startFragmentWithoutBackStack(FragmentManager fragmentManager, int fragmentContainerId, Fragment fragment, String tag, ConversationFlowController conversationFlowController, boolean executePendingTransactions) {
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        if (shouldHaveAnimation(fragment)) {
            fragmentTransaction.setCustomAnimations(R.anim.slide_in_from_right, R.anim.slide_out_to_left, R.anim.slide_in_from_left, R.anim.slide_out_to_right);
        }
        fragmentTransaction.replace(fragmentContainerId, fragment, tag);
        fragmentTransaction.commit();
        if (executePendingTransactions) {
            fragmentManager.executePendingTransactions();
        }
    }

    public static void startFragmentWithoutBackStack(FragmentManager fragmentManager, int fragmentContainerId, Fragment fragment, String tag, FaqFlowController faqFlowController, boolean executePendingTransactions) {
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        if (shouldHaveAnimation(fragment)) {
            fragmentTransaction.setCustomAnimations(R.anim.slide_in_from_right, R.anim.slide_out_to_left, R.anim.slide_in_from_left, R.anim.slide_out_to_right);
        }
        fragmentTransaction.replace(fragmentContainerId, fragment, tag);
        fragmentTransaction.commit();
        if (executePendingTransactions) {
            fragmentManager.executePendingTransactions();
        }
    }

    public static void popBackStack(FragmentManager fragmentManager, String backStackName) {
        fragmentManager.popBackStack(backStackName, 1);
    }

    public static void popBackStackImmediate(FragmentManager fragmentManager, String backStackName) {
        fragmentManager.popBackStackImmediate(backStackName, 1);
    }

    public static void removeFragment(FragmentManager fragmentManager, Fragment fragment) {
        fragmentManager.beginTransaction().remove(fragment).commit();
    }

    public static List<Fragment> getVisibleFragments(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        List<Fragment> visibleFragments = new ArrayList();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && fragment.isVisible()) {
                    visibleFragments.add(fragment);
                }
            }
        }
        return visibleFragments;
    }

    public static boolean isSearchFragmentPresentButNotVisible(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && !fragment.isVisible() && (fragment instanceof SearchFragment)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static SingleQuestionFragment getSingleQuestionFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof SingleQuestionFragment)) {
                    return (SingleQuestionFragment) fragment;
                }
            }
        }
        return null;
    }

    public static HSAddIssueFragment getHsAddIssueFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof HSAddIssueFragment)) {
                    return (HSAddIssueFragment) fragment;
                }
            }
        }
        return null;
    }

    public static HSMessagesFragment getHSMessagesFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof HSMessagesFragment)) {
                    return (HSMessagesFragment) fragment;
                }
            }
        }
        return null;
    }

    public static HSMessagesFragment getHsMessagesFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof HSMessagesFragment)) {
                    return (HSMessagesFragment) fragment;
                }
            }
        }
        return null;
    }

    public static ScreenshotPreviewFragment getScreenshotPreviewFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof ScreenshotPreviewFragment)) {
                    return (ScreenshotPreviewFragment) fragment;
                }
            }
        }
        return null;
    }

    public static void removeHsAddIssueFragmentImmediate(FragmentManager fragmentManager) {
        HSAddIssueFragment hsAddIssueFragment = getHsAddIssueFragment(fragmentManager);
        if (hsAddIssueFragment != null) {
            fragmentManager.beginTransaction().remove(hsAddIssueFragment).commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public static FaqFlowFragment getFaqFlowFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof FaqFlowFragment)) {
                    return (FaqFlowFragment) fragment;
                }
            }
        }
        return null;
    }

    public static FaqFragment getFaqFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof FaqFragment)) {
                    return (FaqFragment) fragment;
                }
            }
        }
        return null;
    }

    public static SearchFragment getSearchFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof SearchFragment)) {
                    return (SearchFragment) fragment;
                }
            }
        }
        return null;
    }

    public static ConversationFlowFragment getConversationFlowFragment(FragmentManager fragmentManager) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null && (fragment instanceof ConversationFlowFragment)) {
                    return (ConversationFlowFragment) fragment;
                }
            }
        }
        return null;
    }

    public static SupportFragment getSupportFragment(Fragment fragment) {
        Fragment parentFragment = fragment.getParentFragment();
        if (parentFragment == null) {
            return null;
        }
        if (parentFragment instanceof SupportFragment) {
            return (SupportFragment) parentFragment;
        }
        return getSupportFragment(parentFragment);
    }

    public static ConversationFlowFragment getConversationFlowFragment(Fragment fragment) {
        Fragment parentFragment = fragment.getParentFragment();
        if (parentFragment == null) {
            return null;
        }
        if (parentFragment instanceof ConversationFlowFragment) {
            return (ConversationFlowFragment) parentFragment;
        }
        return getConversationFlowFragment(parentFragment);
    }

    private static boolean shouldHaveAnimation(Fragment fragment) {
        if ((fragment instanceof FaqFragment) || (fragment instanceof SectionListFragment) || (fragment instanceof FaqFlowFragment)) {
            return false;
        }
        if (HelpshiftContext.getApplicationContext().getResources().getBoolean(R.bool.is_screen_large) || !(fragment instanceof QuestionListFragment)) {
            return true;
        }
        return false;
    }
}
