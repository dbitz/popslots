.class public Lcom/helpshift/support/storage/FaqsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FaqsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/storage/FaqsDBHelper$LazyHolder;
    }
.end annotation


# static fields
.field private static final CUR_DATABASE_VERSION:I = 0x2

.field private static final DATABASE_NAME:Ljava/lang/String; = "__hs__db_faq"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-string/jumbo v0, "__hs__db_faq"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/helpshift/support/storage/FaqsDBHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/helpshift/support/storage/FaqsDBHelper$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/helpshift/support/storage/FaqsDBHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/helpshift/support/storage/FaqsDBHelper;
    .locals 1

    .prologue
    .line 26
    # getter for: Lcom/helpshift/support/storage/FaqsDBHelper$LazyHolder;->INSTANCE:Lcom/helpshift/support/storage/FaqsDBHelper;
    invoke-static {}, Lcom/helpshift/support/storage/FaqsDBHelper$LazyHolder;->access$000()Lcom/helpshift/support/storage/FaqsDBHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 68
    const-string/jumbo v0, "DROP TABLE IF EXISTS faqs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "DROP TABLE IF EXISTS sections"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 31
    const-string/jumbo v0, "CREATE TABLE faqs (_id INTEGER PRIMARY KEY AUTOINCREMENT,question_id TEXT NOT NULL,publish_id TEXT NOT NULL,section_id TEXT NOT NULL,title TEXT NOT NULL,body TEXT NOT NULL,helpful INTEGER,rtl INTEGER,tags TEXT,c_tags TEXT,FOREIGN KEY(section_id) REFERENCES sections (_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "CREATE TABLE sections (_id INTEGER PRIMARY KEY AUTOINCREMENT,section_id TEXT NOT NULL,publish_id INTEGER NOT NULL,title TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    invoke-static {}, Lcom/helpshift/support/util/StorageUtil;->clearFAQEtag()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/FaqsDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/FaqsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/helpshift/support/util/StorageUtil;->clearFAQEtag()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/FaqsDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/FaqsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    return-void
.end method
