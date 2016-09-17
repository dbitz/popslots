package com.helpshift.support.adapters;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.support.ContactUsFilter;
import com.helpshift.support.ContactUsFilter.LOCATION;
import com.helpshift.support.Faq;
import com.helpshift.support.util.HSTransliterator;
import com.helpshift.support.util.Styles;
import java.util.ArrayList;
import java.util.List;

public class SearchListAdapter extends Adapter<ViewHolder> {
    private static final int TYPE_FOOTER = 0;
    private static final int TYPE_QUESTION = 1;
    private OnClickListener onContactUsClickedListener;
    private OnClickListener onQuestionClickedListener;
    private List<Faq> questions;
    private final String searchQuery;

    protected static class FooterViewHolder extends ViewHolder {
        private Button button;
        private TextView contactUsHintText;
        private LinearLayout contactUsView;
        private TextView noFaqsView;

        public FooterViewHolder(LinearLayout linearLayout) {
            super(linearLayout);
            this.contactUsView = (LinearLayout) linearLayout.findViewById(R.id.contact_us_view);
            this.contactUsHintText = (TextView) linearLayout.findViewById(R.id.contact_us_hint_text);
            this.button = (Button) linearLayout.findViewById(R.id.report_issue);
            this.noFaqsView = (TextView) linearLayout.findViewById(R.id.no_faqs_view);
        }
    }

    protected static class QuestionViewHolder extends ViewHolder {
        private TextView textView;

        public QuestionViewHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }
    }

    public SearchListAdapter(String searchQuery, List<Faq> questions, OnClickListener onQuestionClickedListener, OnClickListener onContactUsClickedListener) {
        this.searchQuery = searchQuery;
        this.questions = questions;
        this.onQuestionClickedListener = onQuestionClickedListener;
        this.onContactUsClickedListener = onContactUsClickedListener;
    }

    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case TYPE_FOOTER /*0*/:
                return new FooterViewHolder((LinearLayout) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__search_list_footer, parent, false));
            default:
                return new QuestionViewHolder((TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs_simple_recycler_view_item, parent, false));
        }
    }

    public void onBindViewHolder(ViewHolder holder, int position) {
        if (isPositionFooter(position)) {
            configureFooterViewHolder((FooterViewHolder) holder);
        } else {
            configureQuestionViewHolder((QuestionViewHolder) holder, position);
        }
    }

    private void configureFooterViewHolder(FooterViewHolder holder) {
        Context context = holder.button.getContext();
        String hintTextWithResults = context.getResources().getString(R.string.hs__search_footer);
        String hintTextWithNoResults = context.getResources().getString(R.string.hs__no_search_results_message);
        if (ContactUsFilter.showContactUs(LOCATION.SEARCH_FOOTER)) {
            if (getItemCount() == TYPE_QUESTION) {
                holder.contactUsHintText.setText(hintTextWithNoResults.replaceFirst("query", " \"" + this.searchQuery + "\""));
            } else {
                holder.contactUsHintText.setText(hintTextWithResults);
            }
            holder.contactUsView.setVisibility(TYPE_FOOTER);
            holder.noFaqsView.setVisibility(8);
            holder.button.setOnClickListener(this.onContactUsClickedListener);
            return;
        }
        holder.contactUsView.setVisibility(8);
        if (getItemCount() == TYPE_QUESTION) {
            holder.noFaqsView.setVisibility(TYPE_FOOTER);
        } else {
            holder.noFaqsView.setVisibility(8);
        }
    }

    private void configureQuestionViewHolder(QuestionViewHolder holder, int position) {
        Faq question = (Faq) this.questions.get(position);
        List<String> matchedWords = question.getSearchTerms();
        String title = question.getTitle();
        if (matchedWords == null || matchedWords.size() <= 0) {
            holder.textView.setText(title);
        } else {
            int highlightColor = Styles.getColor(holder.textView.getContext(), R.attr.hs__searchHighlightColor);
            Spannable spannedTitle = new SpannableString(title);
            String word;
            int index;
            if (title.equals(HSTransliterator.unidecode(title))) {
                title = title.toLowerCase();
                for (String word2 : matchedWords) {
                    if (word2.length() >= 3) {
                        for (index = TextUtils.indexOf(title, word2, TYPE_FOOTER); index >= 0; index = TextUtils.indexOf(title, word2, word2.length() + index)) {
                            spannedTitle.setSpan(new BackgroundColorSpan(highlightColor), index, word2.length() + index, 33);
                        }
                    }
                }
            } else {
                int titleLength = title.length();
                String transliteration = "";
                ArrayList<Integer> titleIndex = new ArrayList();
                for (int i = TYPE_FOOTER; i < titleLength; i += TYPE_QUESTION) {
                    String charTransliteration = HSTransliterator.unidecode(title.charAt(i) + "");
                    for (int j = TYPE_FOOTER; j < charTransliteration.length(); j += TYPE_QUESTION) {
                        transliteration = transliteration + charTransliteration.charAt(j);
                        titleIndex.add(Integer.valueOf(i));
                    }
                }
                transliteration = transliteration.toLowerCase();
                for (String word22 : matchedWords) {
                    word22 = word22.toLowerCase();
                    if (word22.length() >= 3) {
                        for (index = TextUtils.indexOf(transliteration, word22, TYPE_FOOTER); index >= 0; index = TextUtils.indexOf(transliteration, word22, word22.length() + index)) {
                            spannedTitle.setSpan(new BackgroundColorSpan(highlightColor), ((Integer) titleIndex.get(index)).intValue(), ((Integer) titleIndex.get((word22.length() + index) - 1)).intValue() + TYPE_QUESTION, 33);
                        }
                    }
                }
            }
            holder.textView.setText(spannedTitle);
        }
        holder.textView.setOnClickListener(this.onQuestionClickedListener);
        holder.textView.setTag(question.getPublishId());
    }

    public Faq getFaq(String publishId) {
        if (this.questions != null) {
            for (Faq question : this.questions) {
                if (question.getPublishId().equals(publishId)) {
                    return question;
                }
            }
        }
        return null;
    }

    public int getItemViewType(int position) {
        if (isPositionFooter(position)) {
            return TYPE_FOOTER;
        }
        return TYPE_QUESTION;
    }

    public long getItemId(int position) {
        if (isPositionFooter(position)) {
            return 0;
        }
        return Long.valueOf(((Faq) this.questions.get(position)).getPublishId()).longValue();
    }

    public int getItemCount() {
        return this.questions.size() + TYPE_QUESTION;
    }

    private boolean isPositionFooter(int position) {
        return position == getItemCount() + -1;
    }
}
