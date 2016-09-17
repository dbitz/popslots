.class public final Lcom/helpshift/support/util/HSCustomFont;
.super Ljava/lang/Object;
.source "HSCustomFont.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HelpshiftDebug"

.field private static final fontCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/helpshift/support/util/HSCustomFont;->fontCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v3, Lcom/helpshift/support/util/HSCustomFont;->fontCache:Ljava/util/Hashtable;

    monitor-enter v3

    .line 56
    :try_start_0
    sget-object v2, Lcom/helpshift/support/util/HSCustomFont;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/helpshift/support/util/HSCustomFont;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 58
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Typeface;>;"
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    monitor-exit v3

    .line 66
    .end local v0    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Typeface;>;"
    :goto_0
    return-object v2

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 64
    .local v1, "typeface":Landroid/graphics/Typeface;
    sget-object v2, Lcom/helpshift/support/util/HSCustomFont;->fontCache:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v3

    move-object v2, v1

    goto :goto_0

    .line 67
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static setCustomFont(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;[II)V
    .locals 2
    .param p0, "textViewOrButton"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "attributeSet"    # [I
    .param p4, "fontId"    # I

    .prologue
    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "customFont":Ljava/lang/String;
    invoke-static {p0, p1, v1}, Lcom/helpshift/support/util/HSCustomFont;->setCustomFont(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
.end method

.method private static setCustomFont(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "textViewOrButton"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "asset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    .end local p0    # "textViewOrButton":Landroid/view/View;
    :goto_0
    return v2

    .line 33
    .restart local p0    # "textViewOrButton":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 35
    .local v1, "tf":Landroid/graphics/Typeface;
    :try_start_0
    invoke-static {p1, p2}, Lcom/helpshift/support/util/HSCustomFont;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 36
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 37
    check-cast p0, Landroid/widget/TextView;

    .end local p0    # "textViewOrButton":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 39
    .restart local p0    # "textViewOrButton":Landroid/view/View;
    :cond_1
    check-cast p0, Landroid/widget/Button;

    .end local p0    # "textViewOrButton":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HelpshiftDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not get typeface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
