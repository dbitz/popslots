package com.helpshift.support.adapters;

import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.support.flows.Flow;
import java.util.List;

public class FlowListAdapter extends Adapter<ViewHolder> {
    private List<Flow> flows;
    private OnClickListener onClickListener;

    protected static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        private TextView textView;

        public ViewHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }
    }

    public FlowListAdapter(List<Flow> flows, OnClickListener onClickListener) {
        this.flows = flows;
        this.onClickListener = onClickListener;
    }

    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        TextView textView = (TextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.hs__simple_list_item_1, parent, false);
        textView.setOnClickListener(this.onClickListener);
        return new ViewHolder(textView);
    }

    public void onBindViewHolder(ViewHolder holder, int position) {
        holder.textView.setText(holder.textView.getResources().getString(((Flow) this.flows.get(position)).getLabelResId()));
        holder.textView.setTag(Integer.valueOf(position));
    }

    public int getItemCount() {
        return this.flows.size();
    }
}
