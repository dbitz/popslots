.class public Lcom/adjust/sdk/ActivityPackage;
.super Ljava/lang/Object;
.source "ActivityPackage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x7fab32c0b48621L


# instance fields
.field private activityKind:Lcom/adjust/sdk/ActivityKind;

.field private clientSdk:Ljava/lang/String;

.field private transient hashCode:I

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "path"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "clientSdk"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "parameters"

    const-class v4, Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "activityKind"

    const-class v4, Lcom/adjust/sdk/ActivityKind;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "suffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/adjust/sdk/ActivityPackage;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/ActivityKind;)V
    .locals 1
    .param p1, "activityKind"    # Lcom/adjust/sdk/ActivityKind;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 81
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 82
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 114
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "path"

    invoke-static {v0, v1, v3}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "clientSdk"

    invoke-static {v0, v1, v3}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    .line 116
    const-string/jumbo v1, "parameters"

    invoke-static {v0, v1, v3}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    .line 117
    const-string/jumbo v1, "activityKind"

    sget-object v2, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readObjectField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/ActivityKind;

    iput-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    .line 118
    const-string/jumbo v1, "suffix"

    invoke-static {v0, v1, v3}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    if-ne p1, p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 128
    .local v0, "otherActivityPackage":Lcom/adjust/sdk/ActivityPackage;
    iget-object v3, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 130
    :cond_5
    iget-object v3, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalsMap(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 131
    :cond_6
    iget-object v3, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalEnum(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 132
    :cond_7
    iget-object v3, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getActivityKind()Lcom/adjust/sdk/ActivityKind;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    return-object v0
.end method

.method public getClientSdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "Path:      %s\n"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "ClientSdk: %s\n"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v3, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 94
    const-string/jumbo v3, "Parameters:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 96
    .local v2, "sortedParameters":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "\n\t%-16s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sortedParameters":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getFailureMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "Failed to track %s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    if-nez v0, :cond_0

    .line 139
    const/16 v0, 0x11

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 140
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 141
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 142
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashMap(Ljava/util/Map;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 143
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashEnum(Ljava/lang/Enum;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 144
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    .line 146
    :cond_0
    iget v0, p0, Lcom/adjust/sdk/ActivityPackage;->hashCode:I

    return v0
.end method

.method public setClientSdk(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSdk"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->clientSdk:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->parameters:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->path:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->activityKind:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityKind;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/ActivityPackage;->suffix:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
