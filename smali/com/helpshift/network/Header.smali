.class public Lcom/helpshift/network/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/helpshift/network/Header;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/helpshift/network/Header;->value:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/helpshift/network/Header;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/network/Header;->value:Ljava/lang/String;

    return-object v0
.end method
