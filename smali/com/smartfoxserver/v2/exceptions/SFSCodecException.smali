.class public Lcom/smartfoxserver/v2/exceptions/SFSCodecException;
.super Lcom/smartfoxserver/v2/exceptions/SFSException;
.source "SFSCodecException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/smartfoxserver/v2/exceptions/SFSException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method
