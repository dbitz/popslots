.class public Lcom/helpshift/support/fragments/SingleQuestionFragment;
.super Lcom/helpshift/support/fragments/MainFragment;
.source "SingleQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/fragments/SingleQuestionFragment$Failure;,
        Lcom/helpshift/support/fragments/SingleQuestionFragment$Success;,
        Lcom/helpshift/support/fragments/SingleQuestionFragment$MarkQuestionFailure;,
        Lcom/helpshift/support/fragments/SingleQuestionFragment$SingleQuestionModes;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private contactUsButton:Landroid/widget/Button;

.field private data:Lcom/helpshift/support/HSApiData;

.field private decomp:Z

.field private eventSent:Z

.field private fragmentName:Ljava/lang/String;

.field private isHighlighted:Z

.field private noButton:Landroid/widget/Button;

.field private progressBar:Landroid/view/View;

.field private question:Lcom/helpshift/support/Faq;

.field private questionFooter:Landroid/view/View;

.field private questionFooterMessage:Landroid/widget/TextView;

.field private singleQuestionMode:I

.field private supportController:Lcom/helpshift/support/controllers/SupportController;

.field private textColor:Ljava/lang/String;

.field private textColorLink:Ljava/lang/String;

.field private webView:Lcom/helpshift/support/webkit/CustomWebView;

.field private yesButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/helpshift/support/fragments/MainFragment;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->singleQuestionMode:I

    .line 482
    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/support/fragments/SingleQuestionFragment;Lcom/helpshift/support/Faq;)V
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SingleQuestionFragment;
    .param p1, "x1"    # Lcom/helpshift/support/Faq;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->setQuestion(Lcom/helpshift/support/Faq;)V

    return-void
.end method

.method static synthetic access$100(Lcom/helpshift/support/fragments/SingleQuestionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SingleQuestionFragment;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->eventSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/helpshift/support/fragments/SingleQuestionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/helpshift/support/fragments/SingleQuestionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->eventSent:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getColorsFromTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const v0, 0x101009b

    .line 93
    .local v0, "textColorLinkResId":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 94
    const v0, 0x1010435

    .line 96
    :cond_0
    const v1, 0x1010054

    invoke-static {p1, v1}, Lcom/helpshift/support/util/Styles;->getHexColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->backgroundColor:Ljava/lang/String;

    .line 97
    const v1, 0x1010036

    invoke-static {p1, v1}, Lcom/helpshift/support/util/Styles;->getHexColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->textColor:Ljava/lang/String;

    .line 98
    invoke-static {p1, v0}, Lcom/helpshift/support/util/Styles;->getHexColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->textColorLink:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private getStyledBody(Lcom/helpshift/support/Faq;)Ljava/lang/String;
    .locals 12
    .param p1, "question"    # Lcom/helpshift/support/Faq;

    .prologue
    .line 200
    const-string/jumbo v7, "24px"

    .line 201
    .local v7, "titleFontSize":Ljava/lang/String;
    const-string/jumbo v8, "32px"

    .line 202
    .local v8, "titleLineHeight":Ljava/lang/String;
    const-string/jumbo v0, "16px"

    .line 203
    .local v0, "bodyFontSize":Ljava/lang/String;
    const-string/jumbo v1, "1.5"

    .line 204
    .local v1, "bodyLineHeight":Ljava/lang/String;
    const-string/jumbo v5, "16px"

    .line 205
    .local v5, "faqPadding":Ljava/lang/String;
    const-string/jumbo v4, "96px"

    .line 208
    .local v4, "faqBottomPadding":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/helpshift/support/Faq;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "bodyText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/helpshift/support/Faq;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "titleText":Ljava/lang/String;
    const-string/jumbo v10, "<iframe"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 213
    :try_start_0
    const-string/jumbo v10, "https"

    const-string/jumbo v11, "http"

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 219
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/helpshift/support/Faq;->getIsRtl()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 220
    const-string/jumbo v6, "<html dir=\"rtl\">"

    .line 224
    .local v6, "styledBody":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<head>    <style type=\'text/css\'>        img,        object,        embed {            max-width: 100%;        }        a,        a:visited,        a:active,        a:hover {            color: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->textColorLink:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        body {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            background-color: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            margin: 0;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            padding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            font-size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            line-height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            white-space: normal;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            word-wrap: break-word;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            color: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->textColor:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        .title {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            display: block;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            margin: 0;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            padding: 0 0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " 0;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            font-size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            line-height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        h1, h2, h3 { "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            line-height: 1.4; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "    </style>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "    <script language=\'javascript\'>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        var iframe = document.getElementsByTagName(\'iframe\')[0];"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        if (iframe) {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            iframe.width = \'100%\';"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            iframe.style.width = \'100%\';"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        document.addEventListener(\'click\', function (event) {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            if (event.target instanceof HTMLImageElement) {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "                event.preventDefault();"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "                event.stopPropagation();"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "            }"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "        }, false);"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "    </script>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</head>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "<body>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "    <strong class=\'title\'> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " </strong> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</body>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</html>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    return-object v6

    .line 214
    .end local v6    # "styledBody":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/NullPointerException;
    sget-object v10, Lcom/helpshift/support/fragments/SingleQuestionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 222
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_1
    const-string/jumbo v6, "<html>"

    .restart local v6    # "styledBody":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private highlightAndReloadQuestion()V
    .locals 4

    .prologue
    .line 355
    iget-boolean v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isHighlighted:Z

    if-nez v2, :cond_0

    .line 356
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isHighlighted:Z

    .line 357
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "searchTerms"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 358
    .local v1, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    invoke-static {v2, v3, v1}, Lcom/helpshift/support/util/Styles;->getQuestionWithHighlightedSearchTerms(Landroid/content/Context;Lcom/helpshift/support/Faq;Ljava/util/ArrayList;)Lcom/helpshift/support/Faq;

    move-result-object v0

    .line 359
    .local v0, "highlightedQuestion":Lcom/helpshift/support/Faq;
    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->setQuestion(Lcom/helpshift/support/Faq;)V

    .line 363
    .end local v0    # "highlightedQuestion":Lcom/helpshift/support/Faq;
    .end local v1    # "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private markQuestion(Z)V
    .locals 8
    .param p1, "helpful"    # Z

    .prologue
    .line 280
    iget-object v5, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    if-nez v5, :cond_0

    .line 308
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v5, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    invoke-virtual {v5}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "questionId":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 287
    .local v3, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "f"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string/jumbo v5, "h"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :goto_1
    iget-object v5, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->data:Lcom/helpshift/support/HSApiData;

    new-instance v6, Lcom/helpshift/support/fragments/SingleQuestionFragment$MarkQuestionFailure;

    invoke-direct {v6, p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment$MarkQuestionFailure;-><init>(Lcom/helpshift/support/fragments/SingleQuestionFragment;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7, v3}, Lcom/helpshift/support/HSApiData;->getApiFailHandler(Landroid/os/Handler;Ljava/lang/String;ILorg/json/JSONObject;)Landroid/os/Handler;

    move-result-object v0

    .line 295
    .local v0, "apiFailHandler":Landroid/os/Handler;
    iget-object v5, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->data:Lcom/helpshift/support/HSApiData;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v0, v4, v7}, Lcom/helpshift/support/HSApiData;->markQuestion(Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 297
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 299
    .local v2, "eventData":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v5, "id"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    if-eqz p1, :cond_1

    .line 301
    const-string/jumbo v5, "h"

    invoke-static {v5, v2}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/helpshift/support/fragments/SingleQuestionFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "markQuestion"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v0    # "apiFailHandler":Landroid/os/Handler;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "eventData":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 290
    .restart local v1    # "e":Lorg/json/JSONException;
    sget-object v5, Lcom/helpshift/support/fragments/SingleQuestionFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "markQuestion"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 303
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "apiFailHandler":Landroid/os/Handler;
    .restart local v2    # "eventData":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "u"

    invoke-static {v5, v2}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;I)Lcom/helpshift/support/fragments/SingleQuestionFragment;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "singleQuestionMode"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    invoke-direct {v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;-><init>()V

    .line 67
    .local v0, "singleQuestionFragment":Lcom/helpshift/support/fragments/SingleQuestionFragment;
    invoke-virtual {v0, p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    iput p1, v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->singleQuestionMode:I

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->fragmentName:Ljava/lang/String;

    .line 71
    return-object v0
.end method

.method private setQuestion(Lcom/helpshift/support/Faq;)V
    .locals 6
    .param p1, "question"    # Lcom/helpshift/support/Faq;

    .prologue
    const/4 v1, 0x0

    .line 195
    iput-object p1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    .line 196
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->webView:Lcom/helpshift/support/webkit/CustomWebView;

    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getStyledBody(Lcom/helpshift/support/Faq;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/helpshift/support/webkit/CustomWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private showHelpfulFooter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 398
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooterMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__question_helpful_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->contactUsButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->yesButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->noButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 403
    return-void
.end method

.method private showProgress(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 367
    if-eqz p1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->progressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showQuestionFooter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooterMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__mark_yes_no_question:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->contactUsButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->yesButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->noButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 395
    return-void
.end method

.method private showQuestionFooter(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 376
    packed-switch p1, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 378
    :pswitch_0
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showQuestionFooter()V

    goto :goto_0

    .line 381
    :pswitch_1
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showHelpfulFooter()V

    goto :goto_0

    .line 384
    :pswitch_2
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showUnhelpfulFooter()V

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showQuestionFooterContactUs()V
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->QUESTION_FOOTER:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/support/ContactUsFilter;->showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->contactUsButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->contactUsButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private showUnhelpfulFooter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 406
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooterMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpshift/R$string;->hs__question_unhelpful_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showQuestionFooterContactUs()V

    .line 409
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->yesButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->noButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    return-void
.end method


# virtual methods
.method public getQuestionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    const-string/jumbo v0, ""

    .line 423
    .local v0, "questionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v0

    .line 426
    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onAttach(Landroid/content/Context;)V

    .line 82
    new-instance v1, Lcom/helpshift/support/HSApiData;

    invoke-direct {v1, p1}, Lcom/helpshift/support/HSApiData;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->data:Lcom/helpshift/support/HSApiData;

    .line 83
    invoke-direct {p0, p1}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getColorsFromTheme(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    .line 85
    .local v0, "supportFragment":Lcom/helpshift/support/fragments/SupportFragment;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/helpshift/support/fragments/SupportFragment;->getSupportController()Lcom/helpshift/support/controllers/SupportController;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    .line 88
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/helpshift/R$id;->helpful_button:I

    if-ne v2, v3, :cond_1

    .line 313
    invoke-direct {p0, v4}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->markQuestion(Z)V

    .line 314
    invoke-direct {p0, v4}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showQuestionFooter(I)V

    .line 315
    iget v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->singleQuestionMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 316
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getConversationFlowFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/ConversationFlowFragment;

    move-result-object v1

    .line 317
    .local v1, "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v1}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getConversationFlowController()Lcom/helpshift/support/controllers/ConversationFlowController;

    move-result-object v0

    .line 319
    .local v0, "conversationFlowController":Lcom/helpshift/support/controllers/ConversationFlowController;
    invoke-virtual {v0}, Lcom/helpshift/support/controllers/ConversationFlowController;->actionDone()V

    .line 338
    .end local v0    # "conversationFlowController":Lcom/helpshift/support/controllers/ConversationFlowController;
    .end local v1    # "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/helpshift/R$id;->unhelpful_button:I

    if-ne v2, v3, :cond_2

    .line 323
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->markQuestion(Z)V

    .line 324
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showQuestionFooter(I)V

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/helpshift/R$id;->contact_us_button:I

    if-ne v2, v3, :cond_0

    .line 326
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    if-eqz v2, :cond_0

    .line 327
    iget v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->singleQuestionMode:I

    if-ne v2, v4, :cond_3

    .line 328
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->supportController:Lcom/helpshift/support/controllers/SupportController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/helpshift/support/controllers/SupportController;->onContactUsClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_3
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getConversationFlowFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/ConversationFlowFragment;

    move-result-object v1

    .line 331
    .restart local v1    # "conversationFlowFragment":Lcom/helpshift/support/fragments/ConversationFlowFragment;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1}, Lcom/helpshift/support/fragments/ConversationFlowFragment;->getConversationFlowController()Lcom/helpshift/support/controllers/ConversationFlowController;

    move-result-object v0

    .line 333
    .restart local v0    # "conversationFlowController":Lcom/helpshift/support/controllers/ConversationFlowController;
    invoke-virtual {v0}, Lcom/helpshift/support/controllers/ConversationFlowController;->sendAnyway()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/helpshift/support/fragments/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0, p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getActivity(Landroid/support/v4/app/Fragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v1, "decomp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->decomp:Z

    .line 152
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    sget v0, Lcom/helpshift/R$layout;->hs__single_question_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPageFinished()V
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showProgress(Z)V

    .line 349
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    invoke-virtual {v0}, Lcom/helpshift/support/Faq;->getIsHelpful()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showQuestionFooter(I)V

    .line 350
    invoke-direct {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->highlightAndReloadQuestion()V

    .line 352
    :cond_0
    return-void
.end method

.method public onPageStarted()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->showProgress(Z)V

    .line 343
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 156
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onResume()V

    .line 157
    iget-boolean v3, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->decomp:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isScreenLarge()Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    sget v3, Lcom/helpshift/R$string;->hs__question_header:I

    invoke-virtual {p0, v3}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->question:Lcom/helpshift/support/Faq;

    invoke-virtual {v3}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "questionId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->eventSent:Z

    if-nez v3, :cond_2

    .line 165
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string/jumbo v3, "f"

    invoke-static {v3, v1}, Lcom/helpshift/support/HSFunnel;->pushEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 168
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->eventSent:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "eventData":Lorg/json/JSONObject;
    .end local v2    # "questionId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 169
    .restart local v2    # "questionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/helpshift/support/fragments/SingleQuestionFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "JSONException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStart()V

    .line 179
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->eventSent:Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->fragmentName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->addVisibleFragment(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/helpshift/support/fragments/MainFragment;->onStop()V

    .line 188
    iget-object v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->fragmentName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->removeVisibleFragment(Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->decomp:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    sget v0, Lcom/helpshift/R$string;->hs__help_header:I

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->setToolbarTitle(Ljava/lang/String;)V

    .line 192
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/helpshift/support/fragments/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    sget v2, Lcom/helpshift/R$id;->question_footer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooter:Landroid/view/View;

    .line 112
    sget v2, Lcom/helpshift/R$id;->question_footer_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->questionFooterMessage:Landroid/widget/TextView;

    .line 114
    sget v2, Lcom/helpshift/R$id;->helpful_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->yesButton:Landroid/widget/Button;

    .line 115
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->yesButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v2, Lcom/helpshift/R$id;->unhelpful_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->noButton:Landroid/widget/Button;

    .line 118
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->noButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v2, Lcom/helpshift/R$id;->contact_us_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->contactUsButton:Landroid/widget/Button;

    .line 121
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->contactUsButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->singleQuestionMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 123
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->contactUsButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/R$string;->hs__send_anyway:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    sget v2, Lcom/helpshift/R$id;->web_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpshift/support/webkit/CustomWebView;

    iput-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->webView:Lcom/helpshift/support/webkit/CustomWebView;

    .line 127
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->webView:Lcom/helpshift/support/webkit/CustomWebView;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010054

    invoke-static {v3, v4}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/helpshift/support/webkit/CustomWebView;->setBackgroundColor(I)V

    .line 128
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->webView:Lcom/helpshift/support/webkit/CustomWebView;

    new-instance v3, Lcom/helpshift/support/webkit/CustomWebViewClient;

    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/helpshift/support/webkit/CustomWebViewClient;-><init>(Landroid/content/Context;Lcom/helpshift/support/webkit/CustomWebViewClient$CustomWebViewClientListeners;)V

    invoke-virtual {v2, v3}, Lcom/helpshift/support/webkit/CustomWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->webView:Lcom/helpshift/support/webkit/CustomWebView;

    new-instance v3, Lcom/helpshift/support/webkit/CustomWebChromeClient;

    invoke-direct {v3}, Lcom/helpshift/support/webkit/CustomWebChromeClient;-><init>()V

    invoke-virtual {v2, v3}, Lcom/helpshift/support/webkit/CustomWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "questionPublishId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "questionPublishId":Ljava/lang/String;
    iget-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->data:Lcom/helpshift/support/HSApiData;

    new-instance v3, Lcom/helpshift/support/fragments/SingleQuestionFragment$Success;

    invoke-direct {v3, p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment$Success;-><init>(Lcom/helpshift/support/fragments/SingleQuestionFragment;)V

    new-instance v4, Lcom/helpshift/support/fragments/SingleQuestionFragment$Failure;

    invoke-direct {v4, p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment$Failure;-><init>(Lcom/helpshift/support/fragments/SingleQuestionFragment;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/helpshift/support/HSApiData;->getQuestion(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 134
    sget v2, Lcom/helpshift/R$id;->progress_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/helpshift/support/fragments/SingleQuestionFragment;->progressBar:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->isScreenLarge()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/helpshift/support/fragments/SingleQuestionFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 139
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    instance-of v2, v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-eqz v2, :cond_1

    .line 140
    check-cast v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    .end local v0    # "parent":Landroid/support/v4/app/Fragment;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/helpshift/support/fragments/FaqFlowFragment;->updateSelectQuestionUI(Z)V

    .line 143
    :cond_1
    return-void
.end method
