.class public Lcom/helpshift/support/storage/IssuesDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IssuesDBHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "__hs__db_issues"

.field private static final DATABASE_VERSION:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/storage/IssuesDBHelper;->DATABASE_VERSION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string/jumbo v0, "__hs__db_issues"

    const/4 v1, 0x0

    sget-object v2, Lcom/helpshift/support/storage/IssuesDBHelper;->DATABASE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    const-string/jumbo v0, "DROP TABLE IF EXISTS issues"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    const-string/jumbo v0, "CREATE TABLE issues (_id INTEGER PRIMARY KEY AUTOINCREMENT,profile_id TEXT NOT NULL,issue_id TEXT NOT NULL UNIQUE,body TEXT,title TEXT NOT NULL,created_at TEXT NOT NULL,updated_at TEXT NOT NULL,status INTEGER NOT NULL,new_message_count INTEGER,show_agent_name INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "CREATE TABLE messages (_id INTEGER PRIMARY KEY AUTOINCREMENT,issue_id TEXT NOT NULL,message_id TEXT NOT NULL UNIQUE,body TEXT,origin TEXT NOT NULL,type TEXT NOT NULL,created_at TEXT NOT NULL,author TEXT,meta TEXT,screenshot TEXT,message_seen INTEGER,invisible INTEGER,in_progress INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/IssuesDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/IssuesDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/IssuesDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/IssuesDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    return-void
.end method
