package com.helpshift.support.contracts;

public interface HSMessagesListener {
    void acceptResolution();

    void pickImage(int i);

    void rejectResolution();

    void reloadMenu();

    void showResolutionRequest();

    void startNewConversation();
}
