package com.helpshift.support.adapters;

import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.support.Section;
import java.util.List;

public class SectionListAdapter extends Adapter<ViewHolder> {
    private OnClickListener onClickListener;
    private List<Section> sections;

    protected static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private TextView textView;

        public ViewHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }
    }

    public SectionListAdapter(List<Section> sections, OnClickListener onClickListener) {
        this.sections = sections;
        this.onClickListener = onClickListener;
    }

    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        TextView textView = (TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs_simple_recycler_view_item, parent, false);
        textView.setOnClickListener(this.onClickListener);
        return new ViewHolder(textView);
    }

    public void onBindViewHolder(ViewHolder holder, int position) {
        Section section = (Section) this.sections.get(position);
        holder.textView.setText(section.getTitle());
        holder.textView.setTag(section.getPublishId());
    }

    public int getItemCount() {
        return this.sections.size();
    }
}
