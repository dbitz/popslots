package com.helpshift.support.fragments;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.helpshift.R;
import com.helpshift.support.HSApiData;
import com.helpshift.support.HSMessagesFragment;
import com.helpshift.support.HSStorage;
import com.helpshift.support.contracts.ConversationFlowView;
import com.helpshift.support.controllers.ConversationFlowController;
import com.helpshift.support.util.AttachmentUtil;
import com.helpshift.support.util.FragmentUtil;
import com.helpshift.support.util.InputUtil;
import com.helpshift.support.util.PermissionUtil;
import com.helpshift.support.util.SnackbarUtil;
import com.helpshift.util.ApplicationUtil;

public class ConversationFlowFragment extends MainFragment implements ConversationFlowView {
    private ConversationFlowController conversationFlowController;
    private View layout;
    private Snackbar permissionDeniedSnackbar;
    private Snackbar showRationaleSnackbar;
    private HSStorage storage;

    public static ConversationFlowFragment newInstance(Bundle bundle) {
        ConversationFlowFragment conversationFlowFragment = new ConversationFlowFragment();
        conversationFlowFragment.setArguments(bundle);
        return conversationFlowFragment;
    }

    public ConversationFlowController getConversationFlowController() {
        return this.conversationFlowController;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        HSApiData data = new HSApiData(context);
        this.storage = data.storage;
        if (this.conversationFlowController == null) {
            this.conversationFlowController = new ConversationFlowController(this, getRetainedChildFragmentManager(), getArguments(), data);
            getSupportFragment().setConversationListeners(this.conversationFlowController);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SupportFragment supportFragment = getSupportFragment();
        if (supportFragment != null) {
            supportFragment.resetNewMessageCount();
        }
    }

    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.hs__conversation_flow_fragment, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        this.layout = view.findViewById(R.id.conversation_fragment_container);
        super.onViewCreated(view, savedInstanceState);
    }

    public void onResume() {
        super.onResume();
        this.conversationFlowController.start();
        this.storage.setIsConversationShowing(Boolean.valueOf(true));
    }

    public void onPause() {
        super.onPause();
        if (this.showRationaleSnackbar != null && this.showRationaleSnackbar.isShown()) {
            this.showRationaleSnackbar.dismiss();
        }
        if (this.permissionDeniedSnackbar != null && this.permissionDeniedSnackbar.isShown()) {
            this.permissionDeniedSnackbar.dismiss();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.storage.setIsConversationShowing(Boolean.valueOf(false));
    }

    public void pickImage() {
        this.storage.setScreenShotDraft(Boolean.valueOf(true));
        int apiVersion = ApplicationUtil.getDeviceApiVersion();
        if (apiVersion < 19) {
            launchImagePicker();
        } else if (apiVersion < 23) {
            if (ApplicationUtil.isPermissionGranted(getContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
                launchImagePicker();
            } else if (!isDetached()) {
                SnackbarUtil.showSnackbar(getView(), R.string.hs__permission_not_granted, -1);
            }
        } else if (ContextCompat.checkSelfPermission(getContext(), "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            InputUtil.hideKeyboard(getContext(), this.layout);
            requestStoragePermission();
        } else {
            launchImagePicker();
        }
    }

    @TargetApi(16)
    private void requestStoragePermission() {
        this.showRationaleSnackbar = PermissionUtil.requestPermissions(getParentFragment(), new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 89, this.layout);
    }

    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (requestCode == 89) {
            if (grantResults.length == 1 && grantResults[0] == 0) {
                launchImagePicker();
            } else {
                this.permissionDeniedSnackbar = Snackbar.make(this.layout, R.string.hs__permission_denied_message, -1).setAction(R.string.hs__permission_denied_snackbar_action, new OnClickListener() {
                    public void onClick(View v) {
                        PermissionUtil.showSettingsPage(ConversationFlowFragment.this.getContext());
                    }
                });
                this.permissionDeniedSnackbar.show();
            }
        } else if (requestCode == 90) {
            HSMessagesFragment hsMessagesFragment = FragmentUtil.getHsMessagesFragment(getRetainedChildFragmentManager());
            if (hsMessagesFragment != null) {
                hsMessagesFragment.onRequestPermissionsResult(requestCode, permissions, grantResults);
            }
        }
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    private void launchImagePicker() {
        Intent pickImageIntent = new Intent("android.intent.action.PICK", Media.EXTERNAL_CONTENT_URI);
        if (pickImageIntent.resolveActivity(getContext().getPackageManager()) != null) {
            getParentFragment().startActivityForResult(pickImageIntent, 0);
            return;
        }
        pickImageIntent = new Intent("android.intent.action.GET_CONTENT");
        pickImageIntent.setType("image/*");
        if (VERSION.SDK_INT >= 11) {
            pickImageIntent.putExtra("android.intent.extra.LOCAL_ONLY", true);
        }
        if (pickImageIntent.resolveActivity(getContext().getPackageManager()) != null) {
            getParentFragment().startActivityForResult(pickImageIntent, 0);
        }
    }

    public SupportFragment getSupportFragment() {
        return (SupportFragment) getParentFragment();
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 0 && resultCode == -1 && data != null && AttachmentUtil.isImageUri(getActivity(), data)) {
            this.conversationFlowController.setPendingScreenshotPath(AttachmentUtil.getPath(getActivity(), data));
        }
    }
}
