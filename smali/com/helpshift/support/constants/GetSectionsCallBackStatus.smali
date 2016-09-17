.class public Lcom/helpshift/support/constants/GetSectionsCallBackStatus;
.super Ljava/lang/Object;
.source "GetSectionsCallBackStatus.java"


# static fields
.field public static API_FAILURE:I

.field public static API_SUCCESS_NEW_DATA:I

.field public static API_SUCCESS_NO_NEW_DATA:I

.field public static DATABASE_FAILURE:I

.field public static DATABASE_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->DATABASE_SUCCESS:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->DATABASE_FAILURE:I

    .line 6
    const/4 v0, 0x2

    sput v0, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NO_NEW_DATA:I

    .line 7
    const/4 v0, 0x3

    sput v0, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NEW_DATA:I

    .line 8
    const/4 v0, 0x4

    sput v0, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_FAILURE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method
