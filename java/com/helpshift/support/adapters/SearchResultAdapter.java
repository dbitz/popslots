package com.helpshift.support.adapters;

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

public class SearchResultAdapter extends Adapter<ViewHolder> {
    private static final int TYPE_FOOTER = 2;
    private static final int TYPE_HEADER = 1;
    private static final int TYPE_QUESTION = 3;
    private OnClickListener onContactUsClickedListener;
    private OnClickListener onQuestionClickedListener;
    private List<Faq> questions;

    protected static class FooterViewHolder extends ViewHolder {
        private Button button;
        private LinearLayout rootView;

        public FooterViewHolder(LinearLayout linearLayout) {
            super(linearLayout);
            this.rootView = linearLayout;
            this.button = (Button) linearLayout.findViewById(R.id.send_anyway_button);
        }
    }

    protected static class HeaderViewHolder extends ViewHolder {
        public HeaderViewHolder(TextView headerView) {
            super(headerView);
        }
    }

    protected static class QuestionViewHolder extends ViewHolder {
        private TextView textView;

        public QuestionViewHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }
    }

    public SearchResultAdapter(List<Faq> questions, OnClickListener onQuestionClickedListener, OnClickListener sendAnywayClickedListener) {
        this.questions = questions;
        this.onQuestionClickedListener = onQuestionClickedListener;
        this.onContactUsClickedListener = sendAnywayClickedListener;
    }

    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        switch (viewType) {
            case TYPE_HEADER /*1*/:
                return new HeaderViewHolder((TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__search_result_header, parent, false));
            case TYPE_FOOTER /*2*/:
                return new FooterViewHolder((LinearLayout) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__search_result_footer, parent, false));
            default:
                return new QuestionViewHolder((TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs_simple_recycler_view_item, parent, false));
        }
    }

    public void onBindViewHolder(ViewHolder holder, int position) {
        if (holder instanceof FooterViewHolder) {
            configureFooterViewHolder((FooterViewHolder) holder);
        } else if (holder instanceof QuestionViewHolder) {
            configureQuestionViewHolder((QuestionViewHolder) holder, position);
        }
    }

    private void configureFooterViewHolder(FooterViewHolder holder) {
        if (ContactUsFilter.showContactUs(LOCATION.SEARCH_FOOTER)) {
            holder.rootView.setVisibility(0);
            holder.button.setOnClickListener(this.onContactUsClickedListener);
            return;
        }
        holder.rootView.setVisibility(8);
    }

    private void configureQuestionViewHolder(QuestionViewHolder holder, int position) {
        Faq question = (Faq) this.questions.get(position - 1);
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
                    if (word2.length() >= TYPE_QUESTION) {
                        for (index = TextUtils.indexOf(title, word2, 0); index >= 0; index = TextUtils.indexOf(title, word2, word2.length() + index)) {
                            spannedTitle.setSpan(new BackgroundColorSpan(highlightColor), index, word2.length() + index, 33);
                        }
                    }
                }
            } else {
                int titleLength = title.length();
                String transliteration = "";
                ArrayList<Integer> titleIndex = new ArrayList();
                for (int i = 0; i < titleLength; i += TYPE_HEADER) {
                    String charTransliteration = HSTransliterator.unidecode(title.charAt(i) + "");
                    for (int j = 0; j < charTransliteration.length(); j += TYPE_HEADER) {
                        transliteration = transliteration + charTransliteration.charAt(j);
                        titleIndex.add(Integer.valueOf(i));
                    }
                }
                transliteration = transliteration.toLowerCase();
                for (String word22 : matchedWords) {
                    word22 = word22.toLowerCase();
                    if (word22.length() >= TYPE_QUESTION) {
                        for (index = TextUtils.indexOf(transliteration, word22, 0); index >= 0; index = TextUtils.indexOf(transliteration, word22, word22.length() + index)) {
                            spannedTitle.setSpan(new BackgroundColorSpan(highlightColor), ((Integer) titleIndex.get(index)).intValue(), ((Integer) titleIndex.get((word22.length() + index) - 1)).intValue() + TYPE_HEADER, 33);
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
        if (position == 0) {
            return TYPE_HEADER;
        }
        if (isPositionFooter(position)) {
            return TYPE_FOOTER;
        }
        return TYPE_QUESTION;
    }

    public long getItemId(int position) {
        if (position == 0) {
            return 1;
        }
        if (isPositionFooter(position)) {
            return 2;
        }
        return Long.valueOf(((Faq) this.questions.get(position - 1)).getPublishId()).longValue();
    }

    public int getItemCount() {
        return this.questions.size() + TYPE_FOOTER;
    }

    private boolean isPositionFooter(int position) {
        return position == getItemCount() + -1;
    }
}
