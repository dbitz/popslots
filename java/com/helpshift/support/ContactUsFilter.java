package com.helpshift.support;

import android.content.Context;
import android.text.TextUtils;
import com.helpshift.support.SupportInternal.EnableContactUs;
import java.util.HashMap;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public final class ContactUsFilter {
    private static HSApiData data;
    private static Integer enableContactUs = EnableContactUs.ALWAYS;
    private static HSStorage storage;

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION = new int[LOCATION.values().length];

        static {
            try {
                $SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[LOCATION.SEARCH_RESULT_ACTIVITY_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[LOCATION.SEARCH_FOOTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[LOCATION.QUESTION_FOOTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[LOCATION.QUESTION_ACTION_BAR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[LOCATION.ACTION_BAR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public enum LOCATION {
        ACTION_BAR,
        SEARCH_FOOTER,
        QUESTION_FOOTER,
        QUESTION_ACTION_BAR,
        SEARCH_RESULT_ACTIVITY_HEADER
    }

    private ContactUsFilter() {
    }

    public static void init(Context context) {
        if (data == null) {
            data = new HSApiData(context);
            storage = data.storage;
        }
    }

    protected static void setConfig(HashMap configMap) {
        if (configMap == null) {
            configMap = new HashMap();
        }
        Object enableContactUsObj = configMap.get("enableContactUs");
        if (enableContactUsObj instanceof Integer) {
            enableContactUs = (Integer) configMap.get("enableContactUs");
        } else if (!(enableContactUsObj instanceof Boolean)) {
        } else {
            if (((Boolean) enableContactUsObj).booleanValue()) {
                enableContactUs = EnableContactUs.ALWAYS;
            } else {
                enableContactUs = EnableContactUs.NEVER;
            }
        }
    }

    public static boolean showContactUs(LOCATION location) {
        boolean z = false;
        switch (AnonymousClass1.$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[location.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return false;
            default:
                if (enableContactUs.equals(EnableContactUs.ALWAYS)) {
                    return true;
                }
                if (enableContactUs.equals(EnableContactUs.NEVER)) {
                    return false;
                }
                String activeConversation;
                String archivedConversation;
                if (enableContactUs.equals(EnableContactUs.AFTER_VIEWING_FAQS)) {
                    switch (AnonymousClass1.$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[location.ordinal()]) {
                        case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                        case MessageRecipientMode.TO_ZONE /*3*/:
                        case Base64.DONT_GUNZIP /*4*/:
                            return true;
                        case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                            activeConversation = storage.getActiveConversation(data.getProfileId());
                            archivedConversation = storage.getArchivedConversation(data.getProfileId());
                            if (!(TextUtils.isEmpty(activeConversation) && TextUtils.isEmpty(archivedConversation))) {
                                z = true;
                            }
                            return z;
                        default:
                            return true;
                    }
                } else if (!enableContactUs.equals(EnableContactUs.AFTER_MARKING_ANSWER_UNHELPFUL)) {
                    return true;
                } else {
                    switch (AnonymousClass1.$SwitchMap$com$helpshift$support$ContactUsFilter$LOCATION[location.ordinal()]) {
                        case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                            return false;
                        case MessageRecipientMode.TO_ZONE /*3*/:
                            return true;
                        case Base64.DONT_GUNZIP /*4*/:
                        case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                            activeConversation = storage.getActiveConversation(data.getProfileId());
                            archivedConversation = storage.getArchivedConversation(data.getProfileId());
                            if (!(TextUtils.isEmpty(activeConversation) && TextUtils.isEmpty(archivedConversation))) {
                                z = true;
                            }
                            return z;
                        default:
                            return true;
                    }
                }
        }
    }
}
