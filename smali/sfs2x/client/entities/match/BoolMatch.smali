.class public final enum Lsfs2x/client/entities/match/BoolMatch;
.super Ljava/lang/Enum;
.source "BoolMatch.java"

# interfaces
.implements Lsfs2x/client/entities/match/IMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsfs2x/client/entities/match/BoolMatch;",
        ">;",
        "Lsfs2x/client/entities/match/IMatcher;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lsfs2x/client/entities/match/BoolMatch;

.field public static final enum EQUALS:Lsfs2x/client/entities/match/BoolMatch;

.field public static final enum NOT_EQUALS:Lsfs2x/client/entities/match/BoolMatch;

.field private static final TYPE_ID:I


# instance fields
.field private symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lsfs2x/client/entities/match/BoolMatch;

    const-string/jumbo v1, "EQUALS"

    .line 12
    const-string/jumbo v2, "=="

    invoke-direct {v0, v1, v3, v2}, Lsfs2x/client/entities/match/BoolMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/BoolMatch;->EQUALS:Lsfs2x/client/entities/match/BoolMatch;

    .line 14
    new-instance v0, Lsfs2x/client/entities/match/BoolMatch;

    const-string/jumbo v1, "NOT_EQUALS"

    .line 17
    const-string/jumbo v2, "!="

    invoke-direct {v0, v1, v4, v2}, Lsfs2x/client/entities/match/BoolMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/BoolMatch;->NOT_EQUALS:Lsfs2x/client/entities/match/BoolMatch;

    const/4 v0, 0x2

    new-array v0, v0, [Lsfs2x/client/entities/match/BoolMatch;

    sget-object v1, Lsfs2x/client/entities/match/BoolMatch;->EQUALS:Lsfs2x/client/entities/match/BoolMatch;

    aput-object v1, v0, v3

    sget-object v1, Lsfs2x/client/entities/match/BoolMatch;->NOT_EQUALS:Lsfs2x/client/entities/match/BoolMatch;

    aput-object v1, v0, v4

    sput-object v0, Lsfs2x/client/entities/match/BoolMatch;->ENUM$VALUES:[Lsfs2x/client/entities/match/BoolMatch;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "symbol"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lsfs2x/client/entities/match/BoolMatch;->symbol:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsfs2x/client/entities/match/BoolMatch;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lsfs2x/client/entities/match/BoolMatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/match/BoolMatch;

    return-object v0
.end method

.method public static values()[Lsfs2x/client/entities/match/BoolMatch;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lsfs2x/client/entities/match/BoolMatch;->ENUM$VALUES:[Lsfs2x/client/entities/match/BoolMatch;

    array-length v1, v0

    new-array v2, v1, [Lsfs2x/client/entities/match/BoolMatch;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lsfs2x/client/entities/match/BoolMatch;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
