.class public final enum Lcom/helpshift/support/FaqTagFilter$Operator;
.super Ljava/lang/Enum;
.source "FaqTagFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/FaqTagFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helpshift/support/FaqTagFilter$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/support/FaqTagFilter$Operator;

.field public static final enum AND:Lcom/helpshift/support/FaqTagFilter$Operator;

.field public static final enum NOT:Lcom/helpshift/support/FaqTagFilter$Operator;

.field public static final enum OR:Lcom/helpshift/support/FaqTagFilter$Operator;

.field public static final enum UNDEFINED:Lcom/helpshift/support/FaqTagFilter$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/helpshift/support/FaqTagFilter$Operator;

    const-string/jumbo v1, "AND"

    invoke-direct {v0, v1, v2}, Lcom/helpshift/support/FaqTagFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/FaqTagFilter$Operator;->AND:Lcom/helpshift/support/FaqTagFilter$Operator;

    .line 25
    new-instance v0, Lcom/helpshift/support/FaqTagFilter$Operator;

    const-string/jumbo v1, "OR"

    invoke-direct {v0, v1, v3}, Lcom/helpshift/support/FaqTagFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/FaqTagFilter$Operator;->OR:Lcom/helpshift/support/FaqTagFilter$Operator;

    .line 26
    new-instance v0, Lcom/helpshift/support/FaqTagFilter$Operator;

    const-string/jumbo v1, "NOT"

    invoke-direct {v0, v1, v4}, Lcom/helpshift/support/FaqTagFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/FaqTagFilter$Operator;->NOT:Lcom/helpshift/support/FaqTagFilter$Operator;

    .line 27
    new-instance v0, Lcom/helpshift/support/FaqTagFilter$Operator;

    const-string/jumbo v1, "UNDEFINED"

    invoke-direct {v0, v1, v5}, Lcom/helpshift/support/FaqTagFilter$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/FaqTagFilter$Operator;->UNDEFINED:Lcom/helpshift/support/FaqTagFilter$Operator;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/helpshift/support/FaqTagFilter$Operator;

    sget-object v1, Lcom/helpshift/support/FaqTagFilter$Operator;->AND:Lcom/helpshift/support/FaqTagFilter$Operator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/support/FaqTagFilter$Operator;->OR:Lcom/helpshift/support/FaqTagFilter$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/support/FaqTagFilter$Operator;->NOT:Lcom/helpshift/support/FaqTagFilter$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/support/FaqTagFilter$Operator;->UNDEFINED:Lcom/helpshift/support/FaqTagFilter$Operator;

    aput-object v1, v0, v5

    sput-object v0, Lcom/helpshift/support/FaqTagFilter$Operator;->$VALUES:[Lcom/helpshift/support/FaqTagFilter$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/support/FaqTagFilter$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/helpshift/support/FaqTagFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/FaqTagFilter$Operator;

    return-object v0
.end method

.method public static values()[Lcom/helpshift/support/FaqTagFilter$Operator;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/helpshift/support/FaqTagFilter$Operator;->$VALUES:[Lcom/helpshift/support/FaqTagFilter$Operator;

    invoke-virtual {v0}, [Lcom/helpshift/support/FaqTagFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/support/FaqTagFilter$Operator;

    return-object v0
.end method
