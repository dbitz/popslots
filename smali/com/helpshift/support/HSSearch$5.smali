.class final Lcom/helpshift/support/HSSearch$5;
.super Ljava/util/HashMap;
.source "HSSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSSearch;->generateSearchVariations(Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/helpshift/support/HSSearch$5;->val$word:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 117
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/helpshift/support/HSSearch$5;->val$word:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/HSSearch$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "word"

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/HSSearch$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method
