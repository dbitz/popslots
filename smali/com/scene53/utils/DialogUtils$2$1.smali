.class Lcom/scene53/utils/DialogUtils$2$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/utils/DialogUtils$2;


# direct methods
.method constructor <init>(Lcom/scene53/utils/DialogUtils$2;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/scene53/utils/DialogUtils$2$1;->this$0:Lcom/scene53/utils/DialogUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/scene53/utils/DialogUtils$2$1;->this$0:Lcom/scene53/utils/DialogUtils$2;

    iget-wide v0, v0, Lcom/scene53/utils/DialogUtils$2;->val$listenerPtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/scene53/utils/DialogUtils;->onDialogButtonClicked(JI)V

    .line 73
    return-void
.end method
