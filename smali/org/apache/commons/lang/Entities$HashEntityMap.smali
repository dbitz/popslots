.class Lorg/apache/commons/lang/Entities$HashEntityMap;
.super Lorg/apache/commons/lang/Entities$MapIntMap;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashEntityMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Lorg/apache/commons/lang/Entities$MapIntMap;-><init>()V

    .line 509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$HashEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$HashEntityMap;->mapValueToName:Ljava/util/Map;

    .line 511
    return-void
.end method
