.class public interface abstract Lcom/helpshift/support/contracts/NewConversationListener;
.super Ljava/lang/Object;
.source "NewConversationListener.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract exitSdkSession()V
.end method

.method public abstract reloadMenu()V
.end method

.method public abstract reportingIssue()V
.end method

.method public abstract showConversationOnReportIssue()V
.end method

.method public abstract showSearchResultFragment(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startScreenshotPreviewFragment(Ljava/lang/String;I)V
.end method
