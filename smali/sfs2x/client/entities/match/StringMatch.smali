.class public final enum Lsfs2x/client/entities/match/StringMatch;
.super Ljava/lang/Enum;
.source "StringMatch.java"

# interfaces
.implements Lsfs2x/client/entities/match/IMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsfs2x/client/entities/match/StringMatch;",
        ">;",
        "Lsfs2x/client/entities/match/IMatcher;"
    }
.end annotation


# static fields
.field public static final enum CONTAINS:Lsfs2x/client/entities/match/StringMatch;

.field public static final enum ENDS_WITH:Lsfs2x/client/entities/match/StringMatch;

.field private static final synthetic ENUM$VALUES:[Lsfs2x/client/entities/match/StringMatch;

.field public static final enum EQUALS:Lsfs2x/client/entities/match/StringMatch;

.field public static final enum NOT_EQUALS:Lsfs2x/client/entities/match/StringMatch;

.field public static final enum STARTS_WITH:Lsfs2x/client/entities/match/StringMatch;

.field private static final TYPE_ID:I = 0x2


# instance fields
.field private symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lsfs2x/client/entities/match/StringMatch;

    const-string/jumbo v1, "EQUALS"

    .line 13
    const-string/jumbo v2, "=="

    invoke-direct {v0, v1, v3, v2}, Lsfs2x/client/entities/match/StringMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/StringMatch;->EQUALS:Lsfs2x/client/entities/match/StringMatch;

    .line 15
    new-instance v0, Lsfs2x/client/entities/match/StringMatch;

    const-string/jumbo v1, "NOT_EQUALS"

    .line 18
    const-string/jumbo v2, "!="

    invoke-direct {v0, v1, v4, v2}, Lsfs2x/client/entities/match/StringMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/StringMatch;->NOT_EQUALS:Lsfs2x/client/entities/match/StringMatch;

    .line 20
    new-instance v0, Lsfs2x/client/entities/match/StringMatch;

    const-string/jumbo v1, "CONTAINS"

    .line 23
    const-string/jumbo v2, "contains"

    invoke-direct {v0, v1, v5, v2}, Lsfs2x/client/entities/match/StringMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/StringMatch;->CONTAINS:Lsfs2x/client/entities/match/StringMatch;

    .line 25
    new-instance v0, Lsfs2x/client/entities/match/StringMatch;

    const-string/jumbo v1, "STARTS_WITH"

    .line 28
    const-string/jumbo v2, "startsWith"

    invoke-direct {v0, v1, v6, v2}, Lsfs2x/client/entities/match/StringMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/StringMatch;->STARTS_WITH:Lsfs2x/client/entities/match/StringMatch;

    .line 30
    new-instance v0, Lsfs2x/client/entities/match/StringMatch;

    const-string/jumbo v1, "ENDS_WITH"

    .line 33
    const-string/jumbo v2, "endsWith"

    invoke-direct {v0, v1, v7, v2}, Lsfs2x/client/entities/match/StringMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/StringMatch;->ENDS_WITH:Lsfs2x/client/entities/match/StringMatch;

    const/4 v0, 0x5

    new-array v0, v0, [Lsfs2x/client/entities/match/StringMatch;

    sget-object v1, Lsfs2x/client/entities/match/StringMatch;->EQUALS:Lsfs2x/client/entities/match/StringMatch;

    aput-object v1, v0, v3

    sget-object v1, Lsfs2x/client/entities/match/StringMatch;->NOT_EQUALS:Lsfs2x/client/entities/match/StringMatch;

    aput-object v1, v0, v4

    sget-object v1, Lsfs2x/client/entities/match/StringMatch;->CONTAINS:Lsfs2x/client/entities/match/StringMatch;

    aput-object v1, v0, v5

    sget-object v1, Lsfs2x/client/entities/match/StringMatch;->STARTS_WITH:Lsfs2x/client/entities/match/StringMatch;

    aput-object v1, v0, v6

    sget-object v1, Lsfs2x/client/entities/match/StringMatch;->ENDS_WITH:Lsfs2x/client/entities/match/StringMatch;

    aput-object v1, v0, v7

    sput-object v0, Lsfs2x/client/entities/match/StringMatch;->ENUM$VALUES:[Lsfs2x/client/entities/match/StringMatch;

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "symbol"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lsfs2x/client/entities/match/StringMatch;->symbol:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsfs2x/client/entities/match/StringMatch;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lsfs2x/client/entities/match/StringMatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/match/StringMatch;

    return-object v0
.end method

.method public static values()[Lsfs2x/client/entities/match/StringMatch;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lsfs2x/client/entities/match/StringMatch;->ENUM$VALUES:[Lsfs2x/client/entities/match/StringMatch;

    array-length v1, v0

    new-array v2, v1, [Lsfs2x/client/entities/match/StringMatch;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lsfs2x/client/entities/match/StringMatch;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    return v0
.end method
