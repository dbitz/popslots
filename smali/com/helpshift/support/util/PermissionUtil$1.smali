.class final Lcom/helpshift/support/util/PermissionUtil$1;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/util/PermissionUtil;->requestPermissions(Landroid/support/v4/app/Fragment;[Ljava/lang/String;ILandroid/view/View;)Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/helpshift/support/util/PermissionUtil$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/helpshift/support/util/PermissionUtil$1;->val$permissions:[Ljava/lang/String;

    iput p3, p0, Lcom/helpshift/support/util/PermissionUtil$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/helpshift/support/util/PermissionUtil$1;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/helpshift/support/util/PermissionUtil$1;->val$permissions:[Ljava/lang/String;

    iget v2, p0, Lcom/helpshift/support/util/PermissionUtil$1;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 48
    return-void
.end method
