.class public Lcom/smartfoxserver/v2/exceptions/SFSException;
.super Ljava/lang/Exception;
.source "SFSException.java"


# static fields
.field private static final serialVersionUID:J = 0x54006598b03c07d2L


# instance fields
.field errorData:Lcom/smartfoxserver/v2/exceptions/SFSErrorData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartfoxserver/v2/exceptions/SFSException;->errorData:Lcom/smartfoxserver/v2/exceptions/SFSErrorData;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartfoxserver/v2/exceptions/SFSException;->errorData:Lcom/smartfoxserver/v2/exceptions/SFSErrorData;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartfoxserver/v2/exceptions/SFSErrorData;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/smartfoxserver/v2/exceptions/SFSErrorData;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/smartfoxserver/v2/exceptions/SFSException;->errorData:Lcom/smartfoxserver/v2/exceptions/SFSErrorData;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartfoxserver/v2/exceptions/SFSException;->errorData:Lcom/smartfoxserver/v2/exceptions/SFSErrorData;

    .line 35
    return-void
.end method


# virtual methods
.method public getErrorData()Lcom/smartfoxserver/v2/exceptions/SFSErrorData;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartfoxserver/v2/exceptions/SFSException;->errorData:Lcom/smartfoxserver/v2/exceptions/SFSErrorData;

    return-object v0
.end method
