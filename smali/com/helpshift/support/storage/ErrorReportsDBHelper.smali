.class public Lcom/helpshift/support/storage/ErrorReportsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ErrorReportsDBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "__hs__db_error_reports"

.field private static final DATABASE_VERSION:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->DATABASE_VERSION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string/jumbo v0, "__hs__db_error_reports"

    const/4 v1, 0x0

    sget-object v2, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->DATABASE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 55
    const-string/jumbo v0, "DROP TABLE IF EXISTS error_reports"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 25
    const-string/jumbo v0, "CREATE TABLE error_reports(_id INTEGER PRIMARY KEY AUTOINCREMENT, report_id TEXT NOT NULL UNIQUE, report_type TEXT NOT NULL, device_info TEXT, hs_funnel TEXT, bread_crumbs TEXT, profile_id TEXT, active_conversation_id TEXT, active_message_ids TEXT, thread_info TEXT, timestamp TEXT, exception_detail BLOB, extra_info TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/ErrorReportsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method
