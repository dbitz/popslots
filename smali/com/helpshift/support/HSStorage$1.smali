.class Lcom/helpshift/support/HSStorage$1;
.super Ljava/lang/Object;
.source "HSStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/support/HSStorage;->mergeMessages(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/support/HSStorage;


# direct methods
.method constructor <init>(Lcom/helpshift/support/HSStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/helpshift/support/HSStorage;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/helpshift/support/HSStorage$1;->this$0:Lcom/helpshift/support/HSStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 153
    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/HSStorage$1;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 5
    .param p1, "a"    # Ljava/util/HashMap;
    .param p2, "b"    # Ljava/util/HashMap;

    .prologue
    .line 156
    :try_start_0
    sget-object v3, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "created_at"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 157
    .local v0, "dateA":Ljava/util/Date;
    sget-object v3, Lcom/helpshift/util/HSFormat;->issueTsFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "created_at"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 158
    .local v1, "dateB":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 160
    .end local v0    # "dateA":Ljava/util/Date;
    .end local v1    # "dateB":Ljava/util/Date;
    :goto_0
    return v3

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
