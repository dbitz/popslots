.class final Lcom/helpshift/support/HSSearch$2;
.super Ljava/util/HashMap;
.source "HSSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSSearch;->generateVariations(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$word:Ljava/lang/String;

.field final synthetic val$wordType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/helpshift/support/HSSearch$2;->val$word:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpshift/support/HSSearch$2;->val$wordType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 88
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/helpshift/support/HSSearch$2;->val$word:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/HSSearch$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/helpshift/support/HSSearch$2;->val$wordType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/HSSearch$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method
