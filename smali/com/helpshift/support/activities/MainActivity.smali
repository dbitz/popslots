.class public Lcom/helpshift/support/activities/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static final SHOW_IN_FULLSCREEN:Ljava/lang/String; = "showInFullscreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    const/16 v4, 0x400

    .line 14
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/helpshift/support/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "showInFullscreen"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    .local v0, "isFullscreen":Z
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/helpshift/support/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 19
    :cond_0
    return-void
.end method
