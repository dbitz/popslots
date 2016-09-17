.class public final enum Lsfs2x/client/entities/match/LogicOperator;
.super Ljava/lang/Enum;
.source "LogicOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsfs2x/client/entities/match/LogicOperator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AND:Lsfs2x/client/entities/match/LogicOperator;

.field private static final synthetic ENUM$VALUES:[Lsfs2x/client/entities/match/LogicOperator;

.field public static final enum OR:Lsfs2x/client/entities/match/LogicOperator;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lsfs2x/client/entities/match/LogicOperator;

    const-string/jumbo v1, "AND"

    .line 12
    const-string/jumbo v2, "AND"

    invoke-direct {v0, v1, v3, v2}, Lsfs2x/client/entities/match/LogicOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/LogicOperator;->AND:Lsfs2x/client/entities/match/LogicOperator;

    .line 14
    new-instance v0, Lsfs2x/client/entities/match/LogicOperator;

    const-string/jumbo v1, "OR"

    .line 17
    const-string/jumbo v2, "OR"

    invoke-direct {v0, v1, v4, v2}, Lsfs2x/client/entities/match/LogicOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsfs2x/client/entities/match/LogicOperator;->OR:Lsfs2x/client/entities/match/LogicOperator;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lsfs2x/client/entities/match/LogicOperator;

    sget-object v1, Lsfs2x/client/entities/match/LogicOperator;->AND:Lsfs2x/client/entities/match/LogicOperator;

    aput-object v1, v0, v3

    sget-object v1, Lsfs2x/client/entities/match/LogicOperator;->OR:Lsfs2x/client/entities/match/LogicOperator;

    aput-object v1, v0, v4

    sput-object v0, Lsfs2x/client/entities/match/LogicOperator;->ENUM$VALUES:[Lsfs2x/client/entities/match/LogicOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lsfs2x/client/entities/match/LogicOperator;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsfs2x/client/entities/match/LogicOperator;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lsfs2x/client/entities/match/LogicOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsfs2x/client/entities/match/LogicOperator;

    return-object v0
.end method

.method public static values()[Lsfs2x/client/entities/match/LogicOperator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lsfs2x/client/entities/match/LogicOperator;->ENUM$VALUES:[Lsfs2x/client/entities/match/LogicOperator;

    array-length v1, v0

    new-array v2, v1, [Lsfs2x/client/entities/match/LogicOperator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lsfs2x/client/entities/match/LogicOperator;->id:Ljava/lang/String;

    return-object v0
.end method
