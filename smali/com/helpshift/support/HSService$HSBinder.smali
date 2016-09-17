.class public Lcom/helpshift/support/HSService$HSBinder;
.super Landroid/os/Binder;
.source "HSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/HSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HSBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSService;


# direct methods
.method public constructor <init>(Lcom/helpshift/support/HSService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSService;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/helpshift/support/HSService$HSBinder;->this$0:Lcom/helpshift/support/HSService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/helpshift/support/HSService;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/helpshift/support/HSService$HSBinder;->this$0:Lcom/helpshift/support/HSService;

    return-object v0
.end method
