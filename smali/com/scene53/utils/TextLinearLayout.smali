.class public Lcom/scene53/utils/TextLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TextLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchLayout"


# instance fields
.field private l:Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 39
    const-string/jumbo v2, "SearchLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dispatchKeyEventPreIme("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v2, p0, Lcom/scene53/utils/TextLinearLayout;->l:Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/scene53/utils/TextLinearLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 43
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 56
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v1

    .line 48
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/scene53/utils/TextLinearLayout;->l:Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;

    invoke-interface {v2}, Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;->onBackPressed()V

    goto :goto_0

    .line 56
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setOnBackPressedListener(Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/scene53/utils/TextLinearLayout;->l:Lcom/scene53/utils/TextLinearLayout$onBackPressedListener;

    .line 30
    return-void
.end method
