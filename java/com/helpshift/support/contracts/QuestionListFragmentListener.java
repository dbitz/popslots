package com.helpshift.support.contracts;

import android.os.Bundle;

public interface QuestionListFragmentListener {
    void onQuestionSelected(Bundle bundle);

    void onQuestionsLoaded(boolean z);
}
