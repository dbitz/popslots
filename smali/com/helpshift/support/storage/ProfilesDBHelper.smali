.class public Lcom/helpshift/support/storage/ProfilesDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProfilesDBHelper.java"


# static fields
.field public static final COLUMN_EMAIL:Ljava/lang/String; = "email"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_IDENTIFIER:Ljava/lang/String; = "IDENTIFIER"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final COLUMN_SALT:Ljava/lang/String; = "salt"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "CREATE TABLE profiles(_id INTEGER PRIMARY KEY AUTOINCREMENT, IDENTIFIER TEXT NOT NULL UNIQUE, profile_id TEXT UNIQUE, name TEXT, email TEXT, salt TEXT);"

.field public static final DATABASE_NAME:Ljava/lang/String; = "__hs__db_profiles"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final TABLE_PROFILES:Ljava/lang/String; = "profiles"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string/jumbo v0, "__hs__db_profiles"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 34
    const-string/jumbo v0, "CREATE TABLE profiles(_id INTEGER PRIMARY KEY AUTOINCREMENT, IDENTIFIER TEXT NOT NULL UNIQUE, profile_id TEXT UNIQUE, name TEXT, email TEXT, salt TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 39
    const-string/jumbo v0, "DROP TABLE IF EXISTS profiles"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/ProfilesDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method
