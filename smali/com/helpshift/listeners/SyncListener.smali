.class public abstract Lcom/helpshift/listeners/SyncListener;
.super Ljava/lang/Object;
.source "SyncListener.java"


# instance fields
.field private dataType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/helpshift/listeners/SyncListener;->dataType:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/helpshift/listeners/SyncListener;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract sync()V
.end method
