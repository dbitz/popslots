.class public Lcom/helpshift/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeForSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, "dataString":Ljava/lang/String;
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 16
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 12
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 13
    new-instance v1, Lorg/json/JSONArray;

    check-cast p0, Ljava/util/ArrayList;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
