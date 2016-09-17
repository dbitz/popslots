package com.helpshift.support.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.helpshift.R;
import com.helpshift.support.D.attr;
import com.helpshift.support.Faq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Styles {
    public static int getColor(Context context, int attribute) {
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(new int[]{attribute});
        int color = typedArray.getColor(0, -1);
        typedArray.recycle();
        return color;
    }

    public static String getHexColor(Context context, int attribute) {
        return String.format("#%06X", new Object[]{Integer.valueOf(16777215 & getColor(context, attribute))});
    }

    public static void setActionButtonIconColor(Context context, Drawable actionButtonIcon) {
        setColorFilter(context, actionButtonIcon, attr.hs__actionButtonIconColor);
    }

    public static void setActionButtonNotificationIconColor(Context context, Drawable actionButtonNotificationIcon) {
        setColorFilter(context, actionButtonNotificationIcon, attr.hs__actionButtonNotificationIconColor);
    }

    public static void setButtonCompoundDrawableIconColor(Context context, Drawable buttonCompoundDrawableIcon) {
        setColorFilter(context, buttonCompoundDrawableIcon, attr.hs__buttonCompoundDrawableIconColor);
    }

    public static void setSendMessageButtonIconColor(Context context, Drawable sendMessageButtonIcon) {
        setColorFilter(context, sendMessageButtonIcon, 16842906);
    }

    public static void setSendMessageButtonActiveIconColor(Context context, Drawable sendMessageButtonActiveIcon) {
        setColorFilter(context, sendMessageButtonActiveIcon, R.attr.hs__accentColor);
    }

    public static void setAcceptButtonIconColor(Context context, Drawable acceptButtonIcon) {
        setColorFilter(context, acceptButtonIcon, attr.hs__acceptButtonIconColor);
    }

    public static void setRejectButtonIconColor(Context context, Drawable rejectButtonIcon) {
        setColorFilter(context, rejectButtonIcon, attr.hs__rejectButtonIconColor);
    }

    public static void setAttachScreenshotButtonIconColor(Context context, Drawable attachScreenshotButtonIcon) {
        setColorFilter(context, attachScreenshotButtonIcon, attr.hs__attachScreenshotButtonIconColor);
    }

    public static void setReviewButtonIconColor(Context context, Drawable reviewButtonIcon) {
        setColorFilter(context, reviewButtonIcon, attr.hs__reviewButtonIconColor);
    }

    public static void setAdminChatBubbleColor(Context context, Drawable adminChatBubbleNinePatch) {
        setColorFilter(context, adminChatBubbleNinePatch, R.attr.hs__chatBubbleAdminBackgroundColor);
    }

    public static void setUserChatBubbleColor(Context context, Drawable userChatBubbleNinePatch) {
        setColorFilter(context, userChatBubbleNinePatch, R.attr.hs__chatBubbleUserBackgroundColor);
    }

    public static void setDownloadAttachmentButtonIconColor(Context context, Drawable downloadAttachmentButtonIcon) {
        setColorFilter(context, downloadAttachmentButtonIcon, attr.hs__downloadAttachmentButtonIconColor);
    }

    public static void setLaunchAttachmentButtonIconColor(Context context, Drawable launchAttachmentButtonIcon) {
        setColorFilter(context, launchAttachmentButtonIcon, attr.hs__launchAttachmentButtonIconColor);
    }

    public static void setAccentColor(Context context, Drawable ratingBar) {
        setColorFilter(context, ratingBar, R.attr.hs__accentColor);
    }

    private static void setColorFilter(Context context, Drawable drawable, int attr) {
        if (drawable != null) {
            drawable.setColorFilter(getColor(context, attr), Mode.SRC_ATOP);
        }
    }

    public static Faq getQuestionWithHighlightedSearchTerms(Context context, Faq question, ArrayList<String> searchTerms) {
        if (searchTerms == null || searchTerms.size() <= 0) {
            return null;
        }
        Iterator it;
        Collections.sort(searchTerms);
        Collections.reverse(searchTerms);
        String titleText = question.getTitle();
        String bodyText = question.getBody();
        LinkedHashSet<String> reverseTransKeywords = new LinkedHashSet();
        String hexColor = getHexColor(context, R.attr.hs__searchHighlightColor);
        boolean isEnglish = HSTransliterator.unidecode(titleText).equals(titleText) && HSTransliterator.unidecode(bodyText).equals(bodyText);
        String word;
        if (isEnglish) {
            it = searchTerms.iterator();
            while (it.hasNext()) {
                word = (String) it.next();
                if (word.length() >= 3) {
                    reverseTransKeywords.add(word);
                }
            }
        } else {
            int i;
            String charTransliteration;
            int j;
            int titleLength = titleText.length();
            String titleTrans = "";
            ArrayList<Integer> titleIndex = new ArrayList();
            for (i = 0; i < titleLength; i++) {
                charTransliteration = HSTransliterator.unidecode(titleText.charAt(i) + "");
                for (j = 0; j < charTransliteration.length(); j++) {
                    titleTrans = titleTrans + charTransliteration.charAt(j);
                    titleIndex.add(Integer.valueOf(i));
                }
            }
            titleTrans = titleTrans.toLowerCase();
            int bodyLength = bodyText.length();
            HSTransliterator.unidecode(bodyText);
            String bodyTrans = "";
            ArrayList<Integer> bodyIndex = new ArrayList();
            for (i = 0; i < bodyLength; i++) {
                charTransliteration = HSTransliterator.unidecode(bodyText.charAt(i) + "");
                for (j = 0; j < charTransliteration.length(); j++) {
                    bodyTrans = bodyTrans + charTransliteration.charAt(j);
                    bodyIndex.add(Integer.valueOf(i));
                }
            }
            bodyTrans = bodyTrans.toLowerCase();
            Iterator it2 = searchTerms.iterator();
            while (it2.hasNext()) {
                word = (String) it2.next();
                if (word.length() >= 3) {
                    int index;
                    word = word.toLowerCase();
                    for (index = TextUtils.indexOf(titleTrans, word, 0); index >= 0; index = TextUtils.indexOf(titleTrans, word, word.length() + index)) {
                        reverseTransKeywords.add(titleText.substring(((Integer) titleIndex.get(index)).intValue(), ((Integer) titleIndex.get((word.length() + index) - 1)).intValue() + 1));
                    }
                    for (index = TextUtils.indexOf(bodyTrans, word, 0); index >= 0; index = TextUtils.indexOf(bodyTrans, word, word.length() + index)) {
                        reverseTransKeywords.add(bodyText.substring(((Integer) bodyIndex.get(index)).intValue(), ((Integer) bodyIndex.get((word.length() + index) - 1)).intValue() + 1));
                    }
                }
            }
        }
        bodyText = ">" + bodyText + "<";
        titleText = ">" + titleText + "<";
        Pattern pattern = Pattern.compile(">[^<]+<");
        it = reverseTransKeywords.iterator();
        while (it.hasNext()) {
            String reverseTransWord = (String) it.next();
            String titleTextCopy = titleText;
            Matcher matcher = pattern.matcher(titleTextCopy);
            while (matcher.find()) {
                String content = titleTextCopy.substring(matcher.start(), matcher.end());
                titleText = titleText.replace(content, content.replaceAll("(?i)(" + reverseTransWord + ")", "<span style=\"background-color: " + hexColor + "\">$1</span>"));
            }
            String bodyTextCopy = bodyText;
            matcher = pattern.matcher(bodyTextCopy);
            while (matcher.find()) {
                content = bodyTextCopy.substring(matcher.start(), matcher.end());
                bodyText = bodyText.replace(content, content.replaceAll("(?i)(" + reverseTransWord + ")", "<span style=\"background-color: " + hexColor + "\">$1</span>"));
            }
        }
        return new Faq(1, question.getId(), question.getPublishId(), question.getSectionPublishId(), titleText.substring(1, titleText.length() - 1), bodyText.substring(1, bodyText.length() - 1), question.getIsHelpful(), question.getIsRtl(), question.getTags(), question.getCategoryTags());
    }

    public static float dpToPx(Context context, float dp) {
        return context.getResources().getDisplayMetrics().density * dp;
    }
}
