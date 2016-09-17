.class final Lcom/helpshift/support/HSSearch$6;
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
    .locals 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/helpshift/support/HSSearch$6;->val$word:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 124
    const-string/jumbo v0, "value"

    # getter for: Lcom/helpshift/support/HSSearch;->metaPhone:Lcom/helpshift/support/external/DoubleMetaphone;
    invoke-static {}, Lcom/helpshift/support/HSSearch;->access$000()Lcom/helpshift/support/external/DoubleMetaphone;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/support/HSSearch$6;->val$word:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/HSSearch$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "metaphone"

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/support/HSSearch$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method
