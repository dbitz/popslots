package com.helpshift.support.activities;

import android.os.Bundle;
import android.os.PersistableBundle;
import android.support.v7.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    public static final String SHOW_IN_FULLSCREEN = "showInFullscreen";

    public void onCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        super.onCreate(savedInstanceState, persistentState);
        if (getIntent().getBooleanExtra(SHOW_IN_FULLSCREEN, false)) {
            getWindow().setFlags(1024, 1024);
        }
    }
}
