.class public Lcom/adjust/sdk/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x7d728a246d4bab64L


# instance fields
.field protected askingAttribution:Z

.field protected enabled:Z

.field protected eventCount:I

.field protected lastActivity:J

.field protected lastInterval:J

.field private transient logger:Lcom/adjust/sdk/ILogger;

.field protected sessionCount:I

.field protected sessionLength:J

.field protected subsessionCount:I

.field protected timeSpent:J

.field protected uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "uuid"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "enabled"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "askingAttribution"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "eventCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "sessionCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "subsessionCount"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "sessionLength"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "timeSpent"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "lastActivity"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "lastInterval"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/adjust/sdk/ActivityState;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->logger:Lcom/adjust/sdk/ILogger;

    .line 57
    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 59
    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 61
    iput v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 62
    iput v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 64
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 65
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 66
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 67
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 68
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    .line 131
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 133
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "eventCount"

    invoke-static {v0, v1, v6}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 134
    const-string/jumbo v1, "sessionCount"

    invoke-static {v0, v1, v6}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 135
    const-string/jumbo v1, "subsessionCount"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readIntField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 136
    const-string/jumbo v1, "sessionLength"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 137
    const-string/jumbo v1, "timeSpent"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 138
    const-string/jumbo v1, "lastActivity"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 139
    const-string/jumbo v1, "lastInterval"

    invoke-static {v0, v1, v4, v5}, Lcom/adjust/sdk/Util;->readLongField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 142
    const-string/jumbo v1, "uuid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readStringField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 143
    const-string/jumbo v1, "enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 144
    const-string/jumbo v1, "askingAttribution"

    invoke-static {v0, v1, v6}, Lcom/adjust/sdk/Util;->readBooleanField(Ljava/io/ObjectInputStream$GetField;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 147
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Lcom/adjust/sdk/Util;->createUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    .line 150
    :cond_0
    return-void
.end method

.method private static stamp(J)Ljava/lang/String;
    .locals 6
    .param p0, "dateMillis"    # J

    .prologue
    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 158
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xb

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0xd

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 159
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 153
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 154
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 99
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

    .line 100
    check-cast v0, Lcom/adjust/sdk/ActivityState;

    .line 102
    .local v0, "otherActivityState":Lcom/adjust/sdk/ActivityState;
    iget-object v3, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 103
    :cond_4
    iget-boolean v3, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 104
    :cond_5
    iget-boolean v3, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 105
    :cond_6
    iget v3, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 106
    :cond_7
    iget v3, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 107
    :cond_8
    iget v3, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalInt(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto/16 :goto_0

    .line 108
    :cond_9
    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto/16 :goto_0

    .line 109
    :cond_a
    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    goto/16 :goto_0

    .line 110
    :cond_b
    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->equalLong(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 116
    const/16 v0, 0x11

    .line 117
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->hashString(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 118
    mul-int/lit8 v1, v0, 0x25

    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;)I

    move-result v2

    add-int v0, v1, v2

    .line 119
    mul-int/lit8 v1, v0, 0x25

    iget-boolean v2, p0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashBoolean(Ljava/lang/Boolean;)I

    move-result v2

    add-int v0, v1, v2

    .line 120
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int v0, v1, v2

    .line 121
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int v0, v1, v2

    .line 122
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int v0, v1, v2

    .line 123
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v2

    add-int v0, v1, v2

    .line 124
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v2

    add-int v0, v1, v2

    .line 125
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/Util;->hashLong(Ljava/lang/Long;)I

    move-result v2

    add-int v0, v1, v2

    .line 126
    return v0
.end method

.method protected resetSessionAttributes(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 72
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 73
    iput-wide v2, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 74
    iput-wide p1, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 76
    return-void
.end method

.method public shallowCopy()Lcom/adjust/sdk/ActivityState;
    .locals 2

    .prologue
    .line 89
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/ActivityState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 80
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "ec:%d sc:%d ssc:%d sl:%.1f ts:%.1f la:%s uuid:%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 84
    invoke-static {v4, v5}, Lcom/adjust/sdk/ActivityState;->stamp(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 80
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
