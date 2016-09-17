.class public final enum Lsfs2x/client/entities/match/NumberMatch;
.super Ljava/lang/Enum;
.source "NumberMatch.java"

# interfaces
.implements Lsfs2x/client/entities/match/IMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsfs2x/client/entities/match/NumberMatch;",
        ">;",
        "Lsfs2x/client/entities/match/IMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lsfs2x/client/entities/match/NumberMatch;

.field public static final enum EQUALS:Lsfs2x/client/entities/match/NumberMatch;

.field public static final enum GREATER_THAN:Lsfs2x/client/entities/match/NumberMatch;

.field public static final enum GREATER_THAN_OR_EQUAL_TO:Lsfs2x/client/entities/match/NumberMatch;

.field public static final enum LESS_THAN:Lsfs2x/client/entities/match/NumberMatch;

.field public static final enum LESS_THAN_OR_EQUAL_TO:Lsfs2x/client/entities/match/NumberMatch;

.field public static final enum NOT_EQUALS:Lsfs2x/client/entities/match/NumberMatch;

.field private static final TYPE_ID:I = 0x1


# instance fields
.field private symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lsfs2x/client/entities/match/NumberMatch;

    const-string/jumbo v1, "EQUALS"

    .line 12
    const-string/jumbo v2, "=="

    invoke-direct {v0, v1, v4, v2}, Lsfs2x/client/entities/match/NumberMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/NumberMatch;->EQUALS:Lsfs2x/client/entities/match/NumberMatch;

    .line 14
    new-instance v0, Lsfs2x/client/entities/match/NumberMatch;

    const-string/jumbo v1, "NOT_EQUALS"

    .line 17
    const-string/jumbo v2, "!="

    invoke-direct {v0, v1, v5, v2}, Lsfs2x/client/entities/match/NumberMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/NumberMatch;->NOT_EQUALS:Lsfs2x/client/entities/match/NumberMatch;

    .line 19
    new-instance v0, Lsfs2x/client/entities/match/NumberMatch;

    const-string/jumbo v1, "GREATER_THAN"

    .line 22
    const-string/jumbo v2, ">"

    invoke-direct {v0, v1, v6, v2}, Lsfs2x/client/entities/match/NumberMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/NumberMatch;->GREATER_THAN:Lsfs2x/client/entities/match/NumberMatch;

    .line 24
    new-instance v0, Lsfs2x/client/entities/match/NumberMatch;

    const-string/jumbo v1, "GREATER_THAN_OR_EQUAL_TO"

    .line 27
    const-string/jumbo v2, ">="

    invoke-direct {v0, v1, v7, v2}, Lsfs2x/client/entities/match/NumberMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/NumberMatch;->GREATER_THAN_OR_EQUAL_TO:Lsfs2x/client/entities/match/NumberMatch;

    .line 29
    new-instance v0, Lsfs2x/client/entities/match/NumberMatch;

    const-string/jumbo v1, "LESS_THAN"

    .line 32
    const-string/jumbo v2, "<"

    invoke-direct {v0, v1, v8, v2}, Lsfs2x/client/entities/match/NumberMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/NumberMatch;->LESS_THAN:Lsfs2x/client/entities/match/NumberMatch;

    .line 34
    new-instance v0, Lsfs2x/client/entities/match/NumberMatch;

    const-string/jumbo v1, "LESS_THAN_OR_EQUAL_TO"

    const/4 v2, 0x5

    .line 37
    const-string/jumbo v3, "<="

    invoke-direct {v0, v1, v2, v3}, Lsfs2x/client/entities/match/NumberMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/NumberMatch;->LESS_THAN_OR_EQUAL_TO:Lsfs2x/client/entities/match/NumberMatch;

    const/4 v0, 0x6

    new-array v0, v0, [Lsfs2x/client/entities/match/NumberMatch;

    sget-object v1, Lsfs2x/client/entities/match/NumberMatch;->EQUALS:Lsfs2x/client/entities/match/NumberMatch;

    aput-object v1, v0, v4

    sget-object v1, Lsfs2x/client/entities/match/NumberMatch;->NOT_EQUALS:Lsfs2x/client/entities/match/NumberMatch;

    aput-object v1, v0, v5

    sget-object v1, Lsfs2x/client/entities/match/NumberMatch;->GREATER_THAN:Lsfs2x/client/entities/match/NumberMatch;

    aput-object v1, v0, v6

    sget-object v1, Lsfs2x/client/entities/match/NumberMatch;->GREATER_THAN_OR_EQUAL_TO:Lsfs2x/client/entities/match/NumberMatch;

    aput-object v1, v0, v7

    sget-object v1, Lsfs2x/client/entities/match/NumberMatch;->LESS_THAN:Lsfs2x/client/entities/match/NumberMatch;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lsfs2x/client/entities/match/NumberMatch;->LESS_THAN_OR_EQUAL_TO:Lsfs2x/client/entities/match/NumberMatch;

    aput-object v2, v0, v1

    sput-object v0, Lsfs2x/client/entities/match/NumberMatch;->ENUM$VALUES:[Lsfs2x/client/entities/match/NumberMatch;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "symbol"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lsfs2x/client/entities/match/NumberMatch;->symbol:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsfs2x/client/entities/match/NumberMatch;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lsfs2x/client/entities/match/NumberMatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/match/NumberMatch;

    return-object v0
.end method

.method public static values()[Lsfs2x/client/entities/match/NumberMatch;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lsfs2x/client/entities/match/NumberMatch;->ENUM$VALUES:[Lsfs2x/client/entities/match/NumberMatch;

    array-length v1, v0

    new-array v2, v1, [Lsfs2x/client/entities/match/NumberMatch;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lsfs2x/client/entities/match/NumberMatch;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
