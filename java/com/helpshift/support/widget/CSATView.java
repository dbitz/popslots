package com.helpshift.support.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.RelativeLayout;
import com.helpshift.support.D.id;
import com.helpshift.support.D.layout;
import com.helpshift.support.util.Styles;

public class CSATView extends RelativeLayout implements OnRatingBarChangeListener {
    private CSATDialog csatDialog;
    private CSATListener csatListener = null;
    private RatingBar ratingBar;

    public interface CSATListener {
        void csatViewDissmissed();

        void sendCSATSurvey(int i, String str);
    }

    public CSATView(Context context) {
        super(context);
        initView(context);
    }

    public CSATView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView(context);
    }

    public CSATView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        initView(context);
    }

    private void initView(Context context) {
        View.inflate(context, layout.hs__csat_view, this);
        this.csatDialog = new CSATDialog(context);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.ratingBar = (RatingBar) findViewById(id.ratingBar);
        Styles.setAccentColor(getContext(), this.ratingBar.getProgressDrawable());
        this.ratingBar.setOnRatingBarChangeListener(this);
    }

    public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
        if (fromUser) {
            this.csatDialog.show(this);
        }
    }

    protected RatingBar getRatingBar() {
        return this.ratingBar;
    }

    protected void dismiss() {
        setVisibility(8);
        this.csatDialog = null;
        if (this.csatListener != null) {
            this.csatListener.csatViewDissmissed();
        }
    }

    protected void sendCSATSurvey(float rating, String feedback) {
        if (this.csatListener != null) {
            this.csatListener.sendCSATSurvey(Math.round(rating), feedback);
        }
    }

    public void setCSATListener(CSATListener csatListener) {
        this.csatListener = csatListener;
    }
}
