.class Lcom/helpshift/support/HSReviewFragment$3;
.super Ljava/lang/Object;
.source "HSReviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSReviewFragment;->initAlertDialog(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSReviewFragment;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSReviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSReviewFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/helpshift/support/HSReviewFragment$3;->this$0:Lcom/helpshift/support/HSReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 136
    const-string/jumbo v0, "later"

    invoke-static {v0}, Lcom/helpshift/support/HSFunnel;->pushAppReviewedEvent(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/helpshift/support/HSReviewFragment$3;->this$0:Lcom/helpshift/support/HSReviewFragment;

    const/4 v1, 0x2

    # invokes: Lcom/helpshift/support/HSReviewFragment;->sendAlertToRateAppAction(I)V
    invoke-static {v0, v1}, Lcom/helpshift/support/HSReviewFragment;->access$300(Lcom/helpshift/support/HSReviewFragment;I)V

    .line 138
    return-void
.end method
