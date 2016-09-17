.class public Lcom/helpshift/storage/KeyValueDbStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "KeyValueDbStorageHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "__hs__db_key_values"

.field private static final DATABASE_VERSION:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/storage/KeyValueDbStorageHelper;->DATABASE_VERSION:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string/jumbo v0, "__hs__db_key_values"

    const/4 v1, 0x0

    sget-object v2, Lcom/helpshift/storage/KeyValueDbStorageHelper;->DATABASE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    const-string/jumbo v0, "DROP TABLE IF EXISTSkey_value_store;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 20
    const-string/jumbo v0, "CREATE TABLE key_value_store(key text primary key,value blob not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/helpshift/storage/KeyValueDbStorageHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/helpshift/storage/KeyValueDbStorageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/helpshift/storage/KeyValueDbStorageHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/helpshift/storage/KeyValueDbStorageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    return-void
.end method
