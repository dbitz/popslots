.class public final Lcom/helpshift/support/util/ArraysCompat;
.super Ljava/lang/Object;
.source "ArraysCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 3
    .param p0, "from"    # [Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 8
    sub-int v0, p2, p1

    .line 9
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object v1
.end method
