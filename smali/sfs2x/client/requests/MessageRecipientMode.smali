.class public Lsfs2x/client/requests/MessageRecipientMode;
.super Ljava/lang/Object;
.source "MessageRecipientMode.java"


# static fields
.field public static final TO_GROUP:I = 0x2

.field public static final TO_ROOM:I = 0x1

.field public static final TO_USER:I = 0x0

.field public static final TO_ZONE:I = 0x3


# instance fields
.field private mode:I

.field private target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Illegal recipient mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iput p1, p0, Lsfs2x/client/requests/MessageRecipientMode;->mode:I

    .line 62
    iput-object p2, p0, Lsfs2x/client/requests/MessageRecipientMode;->target:Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lsfs2x/client/requests/MessageRecipientMode;->mode:I

    return v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lsfs2x/client/requests/MessageRecipientMode;->target:Ljava/lang/Object;

    return-object v0
.end method
