.class public final enum Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
.super Ljava/lang/Enum;
.source "HSApiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/HSApiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HS_ISSUE_CSAT_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

.field public static final enum CSAT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

.field public static final enum CSAT_DONE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

.field public static final enum CSAT_INPROGRESS:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

.field public static final enum CSAT_NOT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

.field public static final enum CSAT_REQUESTED:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

.field public static final enum CSAT_RETRYING:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1995
    new-instance v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    const-string/jumbo v1, "CSAT_NOT_APPLICABLE"

    invoke-direct {v0, v1, v3}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    .line 1996
    new-instance v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    const-string/jumbo v1, "CSAT_APPLICABLE"

    invoke-direct {v0, v1, v4}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    .line 1997
    new-instance v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    const-string/jumbo v1, "CSAT_REQUESTED"

    invoke-direct {v0, v1, v5}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    .line 1998
    new-instance v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    const-string/jumbo v1, "CSAT_INPROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_INPROGRESS:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    .line 1999
    new-instance v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    const-string/jumbo v1, "CSAT_DONE"

    invoke-direct {v0, v1, v7}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    .line 2000
    new-instance v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    const-string/jumbo v1, "CSAT_RETRYING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    .line 1994
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_NOT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_APPLICABLE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_REQUESTED:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_INPROGRESS:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_DONE:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->CSAT_RETRYING:Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->$VALUES:[Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

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
    .line 1994
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1994
    const-class v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    return-object v0
.end method

.method public static values()[Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;
    .locals 1

    .prologue
    .line 1994
    sget-object v0, Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->$VALUES:[Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    invoke-virtual {v0}, [Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/support/HSApiData$HS_ISSUE_CSAT_STATE;

    return-object v0
.end method
