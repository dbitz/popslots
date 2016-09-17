.class public Lcom/helpshift/network/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field reasonPhrase:Ljava/lang/String;

.field statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/helpshift/network/StatusLine;->statusCode:I

    .line 9
    iput-object p2, p0, Lcom/helpshift/network/StatusLine;->reasonPhrase:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/network/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/helpshift/network/StatusLine;->statusCode:I

    return v0
.end method
