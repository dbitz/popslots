package com.scene53.utils;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.playstudios.popslots.R;
import com.scene53.utils.TextLinearLayout.onBackPressedListener;

public class KeyboardUtils {
    private static Dialog d;

    public static native void onDonePressed(String str);

    public static native void setText(String str);

    private KeyboardUtils() {
    }

    public static void showKeyboard(final Activity a, final boolean show, final String text) {
        final InputMethodManager imm = (InputMethodManager) a.getSystemService("input_method");
        a.runOnUiThread(new Runnable() {
            public void run() {
                if (show) {
                    if (KeyboardUtils.d != null && KeyboardUtils.d.isShowing()) {
                        KeyboardUtils.d.dismiss();
                    }
                    KeyboardUtils.d = new Dialog(a, R.style.TextDialog);
                    KeyboardUtils.d.requestWindowFeature(1);
                    KeyboardUtils.d.getWindow().setLayout(-1, -2);
                    KeyboardUtils.d.setContentView(R.layout.textbox);
                    TextLinearLayout view = (TextLinearLayout) KeyboardUtils.d.findViewById(16908318);
                    view.setOnBackPressedListener(new onBackPressedListener() {
                        public void onBackPressed() {
                            KeyboardUtils.setText(text);
                            KeyboardUtils.onDonePressed(text);
                        }
                    });
                    final EditText e = (EditText) view.findViewById(16908291);
                    e.setText(text);
                    e.setSelection(text.length());
                    e.setInputType(8225);
                    e.setOnEditorActionListener(new OnEditorActionListener() {
                        public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                            if (actionId != 6) {
                                return false;
                            }
                            KeyboardUtils.onDonePressed(e.getText().toString());
                            return true;
                        }
                    });
                    e.addTextChangedListener(new TextWatcher() {
                        public void onTextChanged(CharSequence s, int start, int before, int count) {
                        }

                        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                        }

                        public void afterTextChanged(Editable s) {
                            KeyboardUtils.setText(s.toString());
                        }
                    });
                    ((Button) view.findViewById(16908313)).setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            KeyboardUtils.onDonePressed(e.getText().toString());
                        }
                    });
                    KeyboardUtils.d.setOnDismissListener(new OnDismissListener() {
                        public void onDismiss(DialogInterface dialog) {
                            KeyboardUtils.d.getWindow().setSoftInputMode(3);
                            imm.hideSoftInputFromWindow(e.getWindowToken(), 2);
                            imm.toggleSoftInput(1, 0);
                            KeyboardUtils.d = null;
                        }
                    });
                    Window window = KeyboardUtils.d.getWindow();
                    LayoutParams wlp = window.getAttributes();
                    wlp.gravity = 80;
                    wlp.flags &= -3;
                    window.setAttributes(wlp);
                    imm.toggleSoftInput(2, 1);
                    KeyboardUtils.d.show();
                    return;
                }
                imm.toggleSoftInput(1, 0);
                if (KeyboardUtils.d != null && KeyboardUtils.d.isShowing()) {
                    KeyboardUtils.d.setOnDismissListener(null);
                    KeyboardUtils.d.dismiss();
                    KeyboardUtils.d.getWindow().setSoftInputMode(3);
                    imm.hideSoftInputFromWindow(KeyboardUtils.d.getCurrentFocus().getWindowToken(), 2);
                }
            }
        });
    }
}
