.class public Lcom/helpshift/support/util/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttributeResourceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlFileName"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/String;
    .param p3, "attribute"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v4, 0x0

    .line 29
    .local v4, "logo":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 30
    .local v5, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 31
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 33
    .local v6, "xml":Landroid/content/res/XmlResourceParser;
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 34
    .local v2, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    .line 35
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 36
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_0

    .line 38
    invoke-interface {v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v4

    .line 45
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->nextToken()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 37
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 47
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "eventType":I
    .end local v3    # "i":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return v4
.end method

.method public static getLogoResourceValue(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string/jumbo v1, "AndroidManifest.xml"

    const-string/jumbo v2, "application"

    const-string/jumbo v3, "logo"

    invoke-static {p0, v1, v2, v3}, Lcom/helpshift/support/util/Xml;->getAttributeResourceValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 19
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 22
    :cond_0
    return v0
.end method
