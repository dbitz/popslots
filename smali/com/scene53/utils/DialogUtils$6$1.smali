.class Lcom/scene53/utils/DialogUtils$6$1;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/utils/DialogUtils$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scene53/utils/DialogUtils$6;


# direct methods
.method constructor <init>(Lcom/scene53/utils/DialogUtils$6;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/scene53/utils/DialogUtils$6$1;->this$0:Lcom/scene53/utils/DialogUtils$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 168
    invoke-static {}, Lcom/scene53/utils/DialogUtils;->onDisconnectDialogButtonClicked()V

    .line 169
    return-void
.end method
