package com.helpshift.support.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RatingBar;
import android.widget.TextView;
import com.helpshift.R;
import com.helpshift.support.D.id;
import com.helpshift.support.D.layout;
import com.helpshift.support.D.plurals;
import com.helpshift.support.D.string;
import com.helpshift.support.HSFunnel;
import com.helpshift.support.util.SnackbarUtil;
import com.helpshift.support.util.Styles;

public class CSATDialog extends Dialog implements OnDismissListener, OnShowListener, OnClickListener, OnTouchListener {
    private EditText addtionalFeedback;
    private Context context;
    private CSATView csatView;
    private RatingBar dialogRatingBar;
    private TextView likeStatus;
    private float rating;
    private boolean submitted = false;

    public CSATDialog(Context context) {
        super(context);
        this.context = context;
    }

    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        setContentView(layout.hs__csat_dialog);
        setOnShowListener(this);
        setOnDismissListener(this);
        this.dialogRatingBar = (RatingBar) findViewById(id.ratingBar);
        Styles.setAccentColor(getContext(), this.dialogRatingBar.getProgressDrawable());
        this.dialogRatingBar.setOnTouchListener(this);
        this.likeStatus = (TextView) findViewById(id.like_status);
        this.addtionalFeedback = (EditText) findViewById(id.additional_feedback);
        ((Button) findViewById(id.submit)).setOnClickListener(this);
    }

    public void onShow(DialogInterface dialogInterface) {
        HSFunnel.pushEvent(HSFunnel.START_CSAT_RATING);
        this.dialogRatingBar.setRating(this.rating);
        CharSequence ratingValue = this.context.getResources().getQuantityString(plurals.hs__csat_rating_value, (int) this.rating, new Object[]{Integer.valueOf((int) this.rating)});
        if (((double) this.rating) > 2.0d) {
            this.likeStatus.setText(string.hs__csat_like_message);
        } else {
            this.likeStatus.setText(string.hs__csat_dislike_message);
        }
        this.dialogRatingBar.setContentDescription(ratingValue);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (this.submitted) {
            this.csatView.dismiss();
            return;
        }
        HSFunnel.pushEvent(HSFunnel.CANCEL_CSAT_RATING);
        this.csatView.getRatingBar().setRating(0.0f);
    }

    public void onClick(View view) {
        if (view.getId() == id.submit) {
            this.csatView.sendCSATSurvey(this.dialogRatingBar.getRating(), this.addtionalFeedback.getText().toString());
            this.submitted = true;
            showSubmitToast();
            dismiss();
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view.getId() == id.ratingBar) {
            return true;
        }
        return false;
    }

    protected void show(CSATView csatView) {
        this.csatView = csatView;
        this.rating = csatView.getRatingBar().getRating();
        show();
    }

    private void showSubmitToast() {
        SnackbarUtil.showSnackbar(this.csatView, this.context.getString(R.string.hs__csat_submit_toast), 0);
    }
}
