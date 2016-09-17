package com.helpshift.support.model;

public class Form {
    private final String description;
    private final String email;
    private final boolean isFormValid;
    private final String username;

    public Form(String description, String username, String email, boolean isFormValid) {
        this.description = description;
        this.username = username;
        this.email = email;
        this.isFormValid = isFormValid;
    }

    public String getDescription() {
        return this.description;
    }

    public String getUsername() {
        return this.username;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean isFormValid() {
        return this.isFormValid;
    }
}
