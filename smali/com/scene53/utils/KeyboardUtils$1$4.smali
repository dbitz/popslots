.class Lcom/scene53/utils/KeyboardUtils$1$4;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/scene53/utils/KeyboardUtils$1$4;->this$0:Lcom/scene53/utils/KeyboardUtils$1;

    iput-object p2, p0, Lcom/scene53/utils/KeyboardUtils$1$4;->val$e:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/scene53/utils/KeyboardUtils$1$4;->val$e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scene53/utils/KeyboardUtils;->onDonePressed(Ljava/lang/String;)V

    .line 105
    return-void
.end method
