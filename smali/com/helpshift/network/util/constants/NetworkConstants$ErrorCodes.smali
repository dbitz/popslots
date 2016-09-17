.class public Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;
.super Ljava/lang/Object;
.source "NetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/network/util/constants/NetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCodes"
.end annotation


# static fields
.field public static final CONTENT_NOT_FOUND:Ljava/lang/Integer;

.field public static final CONTENT_UNCHANGED:Ljava/lang/Integer;

.field public static final ENTITY_TOO_LARGE:Ljava/lang/Integer;

.field public static final NO_CONNECTION:Ljava/lang/Integer;

.field public static final OBJECT_NOT_FOUND:Ljava/lang/Integer;

.field public static final PARSE_ERROR:Ljava/lang/Integer;

.field public static final REQUEST_TIMEOUT:Ljava/lang/Integer;

.field public static final SERVER_ERROR:Ljava/lang/Integer;

.field public static final TIMESTAMP_MISMATCH:Ljava/lang/Integer;

.field public static final UNAUTHORIZED_ACCESS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->ENTITY_TOO_LARGE:Ljava/lang/Integer;

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->UNAUTHORIZED_ACCESS:Ljava/lang/Integer;

    .line 59
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->OBJECT_NOT_FOUND:Ljava/lang/Integer;

    .line 60
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->SERVER_ERROR:Ljava/lang/Integer;

    .line 61
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->REQUEST_TIMEOUT:Ljava/lang/Integer;

    .line 62
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->NO_CONNECTION:Ljava/lang/Integer;

    .line 63
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->CONTENT_NOT_FOUND:Ljava/lang/Integer;

    .line 64
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->PARSE_ERROR:Ljava/lang/Integer;

    .line 65
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->TIMESTAMP_MISMATCH:Ljava/lang/Integer;

    .line 66
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/network/util/constants/NetworkConstants$ErrorCodes;->CONTENT_UNCHANGED:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
