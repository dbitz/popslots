package com.helpshift.exceptions;

public final class InstallException extends Exception {
    public InstallException(String message) {
        super(message);
    }

    public InstallException(Throwable throwable) {
        super(throwable);
    }
}
