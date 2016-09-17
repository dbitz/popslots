.class public interface abstract Lcom/helpshift/support/SupportInternal$Delegate;
.super Ljava/lang/Object;
.source "SupportInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/SupportInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract didReceiveNotification(I)V
.end method

.method public abstract displayAttachmentFile(Ljava/io/File;)V
.end method

.method public abstract newConversationStarted(Ljava/lang/String;)V
.end method

.method public abstract sessionBegan()V
.end method

.method public abstract sessionEnded()V
.end method

.method public abstract userCompletedCustomerSatisfactionSurvey(ILjava/lang/String;)V
.end method

.method public abstract userRepliedToConversation(Ljava/lang/String;)V
.end method
