.class final Lcom/scene53/smartfox/SmartFoxImpl$1;
.super Ljava/lang/Object;
.source "SmartFoxImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scene53/smartfox/SmartFoxImpl;->initSmartFox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/scene53/smartfox/SmartFoxImpl;->getInstance()Lcom/scene53/smartfox/SmartFoxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scene53/smartfox/SmartFoxImpl;->initSmartFoxInstance()V

    .line 78
    return-void
.end method
