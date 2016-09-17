package com.helpshift.support.fragments;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.adjust.sdk.Constants;
import com.helpshift.R;
import com.helpshift.network.HttpStatus;
import com.helpshift.support.ContactUsFilter;
import com.helpshift.support.ContactUsFilter.LOCATION;
import com.helpshift.support.Faq;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.constants.IssueColumns;
import com.helpshift.support.controllers.SupportController;
import com.helpshift.support.util.FragmentUtil;
import com.helpshift.support.util.SnackbarUtil;
import com.helpshift.support.util.Styles;
import com.helpshift.support.webkit.CustomWebChromeClient;
import com.helpshift.support.webkit.CustomWebView;
import com.helpshift.support.webkit.CustomWebViewClient;
import com.helpshift.support.webkit.CustomWebViewClient.CustomWebViewClientListeners;
import java.lang.ref.WeakReference;
import org.jboss.netty.util.internal.jzlib.JZlib;
import org.json.JSONException;
import org.json.JSONObject;
import sfs2x.client.requests.LoginRequest;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class SingleQuestionFragment extends MainFragment implements OnClickListener, CustomWebViewClientListeners {
    private static final String TAG = SingleQuestionFragment.class.getSimpleName();
    private String backgroundColor;
    private Button contactUsButton;
    private HSApiData data;
    private boolean decomp;
    private boolean eventSent;
    private String fragmentName;
    private boolean isHighlighted;
    private Button noButton;
    private View progressBar;
    private Faq question;
    private View questionFooter;
    private TextView questionFooterMessage;
    private int singleQuestionMode = 1;
    private SupportController supportController;
    private String textColor;
    private String textColorLink;
    private CustomWebView webView;
    private Button yesButton;

    private static class Failure extends Handler {
        private WeakReference<SingleQuestionFragment> singleQuestionFragmentWeakReference;

        public Failure(SingleQuestionFragment singleQuestionFragment) {
            this.singleQuestionFragmentWeakReference = new WeakReference(singleQuestionFragment);
        }

        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            SingleQuestionFragment singleQuestionFragment = (SingleQuestionFragment) this.singleQuestionFragmentWeakReference.get();
            if (singleQuestionFragment != null && !singleQuestionFragment.isDetached()) {
                SnackbarUtil.showErrorSnackbar(HttpStatus.SC_NOT_FOUND, singleQuestionFragment.getView());
            }
        }
    }

    private static class MarkQuestionFailure extends Handler {
        private WeakReference<SingleQuestionFragment> singleQuestionFragmentWeakReference;

        public MarkQuestionFailure(SingleQuestionFragment singleQuestionFragment) {
            this.singleQuestionFragmentWeakReference = new WeakReference(singleQuestionFragment);
        }

        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            SingleQuestionFragment singleQuestionFragment = (SingleQuestionFragment) this.singleQuestionFragmentWeakReference.get();
            if (singleQuestionFragment != null && !singleQuestionFragment.isDetached()) {
                SnackbarUtil.showErrorSnackbar(((Integer) msg.obj.get(IssueColumns.STATUS)).intValue(), singleQuestionFragment.getView());
            }
        }
    }

    public static class SingleQuestionModes {
        public static final int DONE = 2;
        public static final int STANDARD = 1;
    }

    private static class Success extends Handler {
        private WeakReference<SingleQuestionFragment> singleQuestionFragmentWeakReference;

        public Success(SingleQuestionFragment singleQuestionFragment) {
            this.singleQuestionFragmentWeakReference = new WeakReference(singleQuestionFragment);
        }

        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            SingleQuestionFragment singleQuestionFragment = (SingleQuestionFragment) this.singleQuestionFragmentWeakReference.get();
            if (singleQuestionFragment != null) {
                Faq question = msg.obj;
                singleQuestionFragment.setQuestion(question);
                String questionId = question.getId();
                if (!singleQuestionFragment.eventSent && !TextUtils.isEmpty(questionId)) {
                    try {
                        JSONObject eventData = new JSONObject();
                        eventData.put(LoginRequest.KEY_ID, questionId);
                        HSFunnel.pushEvent(HSFunnel.READ_FAQ, eventData);
                        singleQuestionFragment.eventSent = true;
                    } catch (JSONException e) {
                        Log.d(SingleQuestionFragment.TAG, "JSONException", e);
                    }
                }
            }
        }
    }

    public static SingleQuestionFragment newInstance(Bundle bundle, int singleQuestionMode) {
        SingleQuestionFragment singleQuestionFragment = new SingleQuestionFragment();
        singleQuestionFragment.setArguments(bundle);
        singleQuestionFragment.singleQuestionMode = singleQuestionMode;
        singleQuestionFragment.fragmentName = singleQuestionFragment.getClass().getSimpleName() + singleQuestionMode;
        return singleQuestionFragment;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        this.data = new HSApiData(context);
        getColorsFromTheme(context);
        SupportFragment supportFragment = FragmentUtil.getSupportFragment(this);
        if (supportFragment != null) {
            this.supportController = supportFragment.getSupportController();
        }
    }

    private void getColorsFromTheme(Context context) {
        int textColorLinkResId = 16842907;
        if (VERSION.SDK_INT >= 21) {
            textColorLinkResId = 16843829;
        }
        this.backgroundColor = Styles.getHexColor(context, 16842836);
        this.textColor = Styles.getHexColor(context, 16842806);
        this.textColorLink = Styles.getHexColor(context, textColorLinkResId);
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__single_question_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.questionFooter = view.findViewById(R.id.question_footer);
        this.questionFooterMessage = (TextView) view.findViewById(R.id.question_footer_message);
        this.yesButton = (Button) view.findViewById(R.id.helpful_button);
        this.yesButton.setOnClickListener(this);
        this.noButton = (Button) view.findViewById(R.id.unhelpful_button);
        this.noButton.setOnClickListener(this);
        this.contactUsButton = (Button) view.findViewById(R.id.contact_us_button);
        this.contactUsButton.setOnClickListener(this);
        if (this.singleQuestionMode == 2) {
            this.contactUsButton.setText(getResources().getString(R.string.hs__send_anyway));
        }
        this.webView = (CustomWebView) view.findViewById(R.id.web_view);
        this.webView.setBackgroundColor(Styles.getColor(getContext(), 16842836));
        this.webView.setWebViewClient(new CustomWebViewClient(getContext(), this));
        this.webView.setWebChromeClient(new CustomWebChromeClient());
        this.data.getQuestion(getArguments().getString("questionPublishId"), new Success(this), new Failure(this));
        this.progressBar = view.findViewById(R.id.progress_bar);
        if (isScreenLarge()) {
            Fragment parent = getParentFragment();
            if (parent instanceof FaqFlowFragment) {
                ((FaqFlowFragment) parent).updateSelectQuestionUI(false);
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle extras = getActivity(this).getIntent().getExtras();
        if (extras != null) {
            this.decomp = extras.getBoolean("decomp", false);
        }
    }

    public void onResume() {
        super.onResume();
        if (this.decomp || !isScreenLarge()) {
            setToolbarTitle(getString(R.string.hs__question_header));
        }
        if (this.question != null) {
            String questionId = this.question.getId();
            if (!TextUtils.isEmpty(questionId) && !this.eventSent) {
                try {
                    JSONObject eventData = new JSONObject();
                    eventData.put(LoginRequest.KEY_ID, questionId);
                    HSFunnel.pushEvent(HSFunnel.READ_FAQ, eventData);
                    this.eventSent = true;
                } catch (JSONException e) {
                    Log.d(TAG, "JSONException", e);
                }
            }
        }
    }

    public void onStart() {
        super.onStart();
        if (!isChangingConfigurations()) {
            this.eventSent = false;
        }
        addVisibleFragment(this.fragmentName);
    }

    public void onStop() {
        super.onStop();
        removeVisibleFragment(this.fragmentName);
        if (this.decomp || !isScreenLarge()) {
            setToolbarTitle(getString(R.string.hs__help_header));
        }
    }

    private void setQuestion(Faq question) {
        this.question = question;
        this.webView.loadDataWithBaseURL(null, getStyledBody(question), "text/html", "utf-8", null);
    }

    private String getStyledBody(Faq question) {
        String styledBody;
        String titleFontSize = "24px";
        String titleLineHeight = "32px";
        String bodyFontSize = "16px";
        String bodyLineHeight = "1.5";
        String faqPadding = "16px";
        String faqBottomPadding = "96px";
        String bodyText = question.getBody();
        String titleText = question.getTitle();
        if (bodyText.contains("<iframe")) {
            try {
                bodyText = bodyText.replace(Constants.SCHEME, "http");
            } catch (NullPointerException e) {
                Log.d(TAG, e.toString(), e);
            }
        }
        if (question.getIsRtl().booleanValue()) {
            styledBody = "<html dir=\"rtl\">";
        } else {
            styledBody = "<html>";
        }
        return styledBody + "<head>    <style type='text/css'>        img,        object,        embed {            max-width: 100%;        }        a,        a:visited,        a:active,        a:hover {            color: " + this.textColorLink + ";" + "        }" + "        body {" + "            background-color: " + this.backgroundColor + ";" + "            margin: 0;" + "            padding: " + faqPadding + " " + faqPadding + " " + faqBottomPadding + " " + faqPadding + ";" + "            font-size: " + bodyFontSize + ";" + "            line-height: " + bodyLineHeight + ";" + "            white-space: normal;" + "            word-wrap: break-word;" + "            color: " + this.textColor + ";" + "        }" + "        .title {" + "            display: block;" + "            margin: 0;" + "            padding: 0 0 " + faqPadding + " 0;" + "            font-size: " + titleFontSize + ";" + "            line-height: " + titleLineHeight + ";" + "        }" + "        h1, h2, h3 { " + "            line-height: 1.4; " + "        }" + "    </style>" + "    <script language='javascript'>" + "        var iframe = document.getElementsByTagName('iframe')[0];" + "        if (iframe) {" + "            iframe.width = '100%';" + "            iframe.style.width = '100%';" + "        }" + "        document.addEventListener('click', function (event) {" + "            if (event.target instanceof HTMLImageElement) {" + "                event.preventDefault();" + "                event.stopPropagation();" + "            }" + "        }, false);" + "    </script>" + "</head>" + "<body>" + "    <strong class='title'> " + titleText + " </strong> " + bodyText + "</body>" + "</html>";
    }

    private void markQuestion(boolean helpful) {
        if (this.question != null) {
            String questionId = this.question.getId();
            JSONObject params = new JSONObject();
            try {
                params.put(HSFunnel.READ_FAQ, questionId);
                params.put(HSFunnel.MARKED_HELPFUL, helpful);
            } catch (JSONException e) {
                Log.d(TAG, "markQuestion", e);
            }
            this.data.markQuestion(new Handler(), this.data.getApiFailHandler(new MarkQuestionFailure(this), questionId, 0, params), questionId, Boolean.valueOf(helpful));
            JSONObject eventData = new JSONObject();
            try {
                eventData.put(LoginRequest.KEY_ID, questionId);
                if (helpful) {
                    HSFunnel.pushEvent(HSFunnel.MARKED_HELPFUL, eventData);
                } else {
                    HSFunnel.pushEvent(InviteUsersRequest.KEY_USER, eventData);
                }
            } catch (JSONException e2) {
                Log.d(TAG, "markQuestion", e2);
            }
        }
    }

    public void onClick(View view) {
        ConversationFlowFragment conversationFlowFragment;
        if (view.getId() == R.id.helpful_button) {
            markQuestion(true);
            showQuestionFooter(1);
            if (this.singleQuestionMode == 2) {
                conversationFlowFragment = FragmentUtil.getConversationFlowFragment((Fragment) this);
                if (conversationFlowFragment != null) {
                    conversationFlowFragment.getConversationFlowController().actionDone();
                }
            }
        } else if (view.getId() == R.id.unhelpful_button) {
            markQuestion(false);
            showQuestionFooter(-1);
        } else if (view.getId() == R.id.contact_us_button && this.supportController != null) {
            if (this.singleQuestionMode == 1) {
                this.supportController.onContactUsClicked(null);
                return;
            }
            conversationFlowFragment = FragmentUtil.getConversationFlowFragment((Fragment) this);
            if (conversationFlowFragment != null) {
                conversationFlowFragment.getConversationFlowController().sendAnyway();
            }
        }
    }

    public void onPageStarted() {
        showProgress(true);
    }

    public void onPageFinished() {
        if (isVisible()) {
            showProgress(false);
            showQuestionFooter(this.question.getIsHelpful());
            highlightAndReloadQuestion();
        }
    }

    private void highlightAndReloadQuestion() {
        if (!this.isHighlighted) {
            this.isHighlighted = true;
            Faq highlightedQuestion = Styles.getQuestionWithHighlightedSearchTerms(getContext(), this.question, getArguments().getStringArrayList("searchTerms"));
            if (highlightedQuestion != null) {
                setQuestion(highlightedQuestion);
            }
        }
    }

    private void showProgress(boolean visible) {
        if (this.progressBar == null) {
            return;
        }
        if (visible) {
            this.progressBar.setVisibility(0);
        } else {
            this.progressBar.setVisibility(8);
        }
    }

    private void showQuestionFooter(int state) {
        switch (state) {
            case JZlib.Z_ERRNO /*-1*/:
                showUnhelpfulFooter();
                return;
            case Base64.NO_OPTIONS /*0*/:
                showQuestionFooter();
                return;
            case BuddyOnlineState.OFFLINE /*1*/:
                showHelpfulFooter();
                return;
            default:
                return;
        }
    }

    private void showQuestionFooter() {
        this.questionFooter.setVisibility(0);
        this.questionFooterMessage.setText(getResources().getString(R.string.hs__mark_yes_no_question));
        this.contactUsButton.setVisibility(8);
        this.yesButton.setVisibility(0);
        this.noButton.setVisibility(0);
    }

    private void showHelpfulFooter() {
        this.questionFooter.setVisibility(0);
        this.questionFooterMessage.setText(getResources().getString(R.string.hs__question_helpful_message));
        this.contactUsButton.setVisibility(8);
        this.yesButton.setVisibility(8);
        this.noButton.setVisibility(8);
    }

    private void showUnhelpfulFooter() {
        this.questionFooter.setVisibility(0);
        this.questionFooterMessage.setText(getResources().getString(R.string.hs__question_unhelpful_message));
        showQuestionFooterContactUs();
        this.yesButton.setVisibility(8);
        this.noButton.setVisibility(8);
    }

    private void showQuestionFooterContactUs() {
        if (ContactUsFilter.showContactUs(LOCATION.QUESTION_FOOTER)) {
            this.contactUsButton.setVisibility(0);
        } else {
            this.contactUsButton.setVisibility(8);
        }
    }

    public String getQuestionId() {
        String questionId = "";
        if (this.question != null) {
            return this.question.getId();
        }
        return questionId;
    }
}
