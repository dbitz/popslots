.class Lcom/scene53/utils/KeyboardUtils$1$2;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/KeyboardUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/utils/KeyboardUtils$1;

.field final synthetic val$e:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/scene53/utils/KeyboardUtils$1;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/scene53/utils/KeyboardUtils$1$2;->this$0:Lcom/scene53/utils/KeyboardUtils$1;

    iput-object p2, p0, Lcom/scene53/utils/KeyboardUtils$1$2;->val$e:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/scene53/utils/KeyboardUtils$1$2;->val$e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scene53/utils/KeyboardUtils;->onDonePressed(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
