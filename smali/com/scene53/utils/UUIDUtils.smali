.class public Lcom/scene53/utils/UUIDUtils;
.super Ljava/lang/Object;
.source "UUIDUtils.java"


# static fields
.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field protected static final hexArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/scene53/utils/UUIDUtils;->hexArray:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 26
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 27
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 29
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 30
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/scene53/utils/UUIDUtils;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 31
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/scene53/utils/UUIDUtils;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static generateUniqueId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scene53/Scene53App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".scene53.popslots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Lcom/scene53/utils/UUIDUtils;->sha1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "hashedId":Ljava/lang/String;
    const-string/jumbo v2, "Scene53"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserUniqueId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v1

    const-string/jumbo v2, "com.bigcasino"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/scene53/Scene53App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "deviceId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "uid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/scene53/utils/UUIDUtils;->generateUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/scene53/utils/UUIDUtils;->setUserUniqueId(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-object v0
.end method

.method public static isNewDevice()Z
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v0

    const-string/jumbo v1, "com.bigcasino"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/scene53/Scene53App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "deviceId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setUserUniqueId(Ljava/lang/String;)V
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/scene53/Scene53App;->get()Lcom/scene53/Scene53App;

    move-result-object v0

    const-string/jumbo v1, "com.bigcasino"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/scene53/Scene53App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "deviceId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method private static sha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "toHash"    # Ljava/lang/String;

    .prologue
    .line 37
    move-object v3, p0

    .line 40
    .local v3, "hash":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 41
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, "bytes":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 43
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/scene53/utils/UUIDUtils;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 56
    .end local v0    # "bytes":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 48
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v4, "Scene53"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to create hash of unique uid (NoSuchAlgorithmException) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "Scene53"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to create hash of unique uid (UnsupportedEncodingException) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
