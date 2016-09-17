.class public final Lcom/helpshift/support/customadapters/MessagesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;,
        Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;
    }
.end annotation


# static fields
.field private static final TYPE_AR_MOBILE:I = 0xc

.field private static final TYPE_CA_MOBILE:I = 0x6

.field private static final TYPE_CB:I = 0x5

.field private static final TYPE_CR_MOBILE:I = 0x7

.field private static final TYPE_GENERIC_ATTACHMENT_ADMIN:I = 0x10

.field private static final TYPE_IMAGE_ATTACHMENT_ADMIN:I = 0xf

.field private static final TYPE_LOCAL_RSC:I = 0xe

.field private static final TYPE_RAR:I = 0xb

.field private static final TYPE_RSC:I = 0xd

.field private static final TYPE_SC_MOBILE:I = 0x8

.field private static final TYPE_TXT_ADMIN:I = 0x1

.field private static final TYPE_TXT_MOBILE:I = 0x2


# instance fields
.field private c:Landroid/content/Context;

.field private enableBtn:Z

.field private f:Lcom/helpshift/support/HSMessagesFragment;

.field private final inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/viewstructs/HSMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/util/List;)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/viewstructs/HSMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/viewstructs/HSMsg;>;"
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v0, p1

    .line 60
    check-cast v0, Lcom/helpshift/support/HSMessagesFragment;

    iput-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;

    .line 61
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->items:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method

.method static synthetic access$1100(Lcom/helpshift/support/customadapters/MessagesAdapter;)Lcom/helpshift/support/HSMessagesFragment;
    .locals 1
    .param p0, "x0"    # Lcom/helpshift/support/customadapters/MessagesAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;

    return-object v0
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 826
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, "<br/>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;)Landroid/view/View;
    .locals 15
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    iget-object v9, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v10, Lcom/helpshift/support/D$layout;->hs__msg_attachment_generic:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 538
    iget-object v9, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v10, Lcom/helpshift/support/D$id;->admin_message:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/helpshift/support/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 539
    sget v9, Lcom/helpshift/R$id;->attachment_file_name:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileName:Landroid/widget/TextView;

    .line 540
    sget v9, Lcom/helpshift/R$id;->attachment_file_type:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileType:Landroid/widget/TextView;

    .line 541
    sget v9, Lcom/helpshift/R$id;->attachment_file_size:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileSize:Landroid/widget/TextView;

    .line 542
    sget v9, Lcom/helpshift/R$id;->admin_message:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/view/View;

    .line 543
    const v9, 0x102000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 544
    sget v9, Lcom/helpshift/R$id;->download_icon:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadIcon:Landroid/widget/ImageView;

    .line 545
    sget v9, Lcom/helpshift/R$id;->attachment_icon:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    .line 546
    iget-object v9, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/helpshift/support/util/Styles;->setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 547
    iget-object v9, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/helpshift/support/util/Styles;->setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 548
    const v9, 0x1020015

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->date:Landroid/widget/TextView;

    .line 549
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 553
    :goto_0
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, "attachmentObj":Lorg/json/JSONObject;
    const-string/jumbo v9, "file-name"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "fileName":Ljava/lang/String;
    const-string/jumbo v9, "content-type"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "contentType":Ljava/lang/String;
    iget-object v9, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v9}, Lcom/helpshift/support/HSMessagesFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3, v5}, Lcom/helpshift/support/util/AttachmentUtil;->getFileType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, "fileType":Ljava/lang/String;
    const-string/jumbo v9, "size"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 564
    .local v8, "size":I
    const/16 v9, 0x400

    if-ge v8, v9, :cond_1

    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " B"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, "fileSize":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileName:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileType:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 577
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 578
    move-object/from16 v0, p2

    iget v9, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    packed-switch v9, :pswitch_data_0

    .line 596
    :goto_2
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadButton:Landroid/view/View;

    new-instance v10, Lcom/helpshift/support/customadapters/MessagesAdapter$8;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v10, p0, v0, v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$8;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;Lorg/json/JSONObject;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v2    # "attachmentObj":Lorg/json/JSONObject;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "fileSize":Ljava/lang/String;
    .end local v7    # "fileType":Ljava/lang/String;
    .end local v8    # "size":I
    :goto_3
    return-object p1

    .line 551
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;
    check-cast p4, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;
    goto/16 :goto_0

    .line 566
    .restart local v2    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "fileType":Ljava/lang/String;
    .restart local v8    # "size":I
    :cond_1
    const/high16 v9, 0x100000

    if-ge v8, v9, :cond_2

    .line 567
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v10, v8, 0x400

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "fileSize":Ljava/lang/String;
    goto :goto_1

    .line 569
    .end local v6    # "fileSize":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%.1f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    int-to-float v13, v8

    const/high16 v14, 0x49800000    # 1048576.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " MB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "fileSize":Ljava/lang/String;
    goto/16 :goto_1

    .line 580
    :pswitch_0
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 609
    .end local v2    # "attachmentObj":Lorg/json/JSONObject;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "fileSize":Ljava/lang/String;
    .end local v7    # "fileType":Ljava/lang/String;
    .end local v8    # "size":I
    :catch_0
    move-exception v4

    .line 610
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 583
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v2    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "fileSize":Ljava/lang/String;
    .restart local v7    # "fileType":Ljava/lang/String;
    .restart local v8    # "size":I
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 587
    :pswitch_2
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 589
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_2

    .line 592
    :pswitch_3
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;)Landroid/view/View;
    .locals 19
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;

    .prologue
    .line 620
    if-nez p1, :cond_3

    .line 621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v14, Lcom/helpshift/support/D$layout;->hs__msg_attachment_image:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 622
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v14, Lcom/helpshift/support/D$id;->admin_message:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/helpshift/support/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 623
    const v13, 0x1020010

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    .line 624
    const v13, 0x102000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 625
    sget v13, Lcom/helpshift/R$id;->admin_message:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/view/View;

    .line 626
    sget v13, Lcom/helpshift/R$id;->errorText:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->errorText:Landroid/widget/TextView;

    .line 627
    sget v13, Lcom/helpshift/R$id;->download_icon:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadIcon:Landroid/widget/ImageView;

    .line 628
    sget v13, Lcom/helpshift/R$id;->image_icon:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->imageIcon:Landroid/widget/ImageView;

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/helpshift/support/util/Styles;->setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->imageIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/helpshift/support/util/Styles;->setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 631
    sget v13, Lcom/helpshift/R$id;->attachment_file_name:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileName:Landroid/widget/TextView;

    .line 632
    sget v13, Lcom/helpshift/R$id;->attachment_file_type:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileType:Landroid/widget/TextView;

    .line 633
    sget v13, Lcom/helpshift/R$id;->attachment_file_size:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileSize:Landroid/widget/TextView;

    .line 634
    const v13, 0x1020015

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->date:Landroid/widget/TextView;

    .line 635
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 639
    :goto_0
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {v3, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 642
    .local v3, "attachmentObj":Lorg/json/JSONObject;
    const-string/jumbo v13, "file-name"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, "fileName":Ljava/lang/String;
    const-string/jumbo v13, "content-type"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;

    invoke-virtual {v13}, Lcom/helpshift/support/HSMessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13, v4, v6}, Lcom/helpshift/support/util/AttachmentUtil;->getFileType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 648
    .local v8, "fileType":Ljava/lang/String;
    const-string/jumbo v13, "size"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 650
    .local v11, "size":I
    const/16 v13, 0x400

    if-ge v11, v13, :cond_4

    .line 651
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " B"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "fileSize":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileName:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileType:Landroid/widget/TextView;

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileSize:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .local v10, "imageFile":Ljava/io/File;
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->imageIcon:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_0

    .line 665
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 667
    :cond_0
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->errorText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    move-object/from16 v0, p2

    iget v13, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    packed-switch v13, :pswitch_data_0

    .line 717
    :cond_1
    :goto_2
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_2

    .line 718
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadBtn:Landroid/view/View;

    new-instance v14, Lcom/helpshift/support/customadapters/MessagesAdapter$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v14, v0, v1, v3, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter$9;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;Lorg/json/JSONObject;I)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v3    # "attachmentObj":Lorg/json/JSONObject;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileSize":Ljava/lang/String;
    .end local v8    # "fileType":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/File;
    .end local v11    # "size":I
    :cond_2
    :goto_3
    return-object p1

    .line 637
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;
    check-cast p4, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;
    goto/16 :goto_0

    .line 652
    .restart local v3    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v4    # "contentType":Ljava/lang/String;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "fileType":Ljava/lang/String;
    .restart local v11    # "size":I
    :cond_4
    const/high16 v13, 0x100000

    if-ge v11, v13, :cond_5

    .line 653
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v14, v11, 0x400

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " KB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "fileSize":Ljava/lang/String;
    goto/16 :goto_1

    .line 655
    .end local v7    # "fileSize":Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "%.1f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    int-to-float v0, v11

    move/from16 v17, v0

    const/high16 v18, 0x49800000    # 1048576.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " MB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "fileSize":Ljava/lang/String;
    goto/16 :goto_1

    .line 670
    .restart local v10    # "imageFile":Ljava/io/File;
    :pswitch_0
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter;->f:Lcom/helpshift/support/HSMessagesFragment;

    const/16 v14, 0x8

    move/from16 v0, p3

    invoke-virtual {v13, v3, v0, v14}, Lcom/helpshift/support/HSMessagesFragment;->downloadAdminAttachment(Lorg/json/JSONObject;II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 732
    .end local v3    # "attachmentObj":Lorg/json/JSONObject;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "fileSize":Ljava/lang/String;
    .end local v8    # "fileType":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/File;
    .end local v11    # "size":I
    :catch_0
    move-exception v5

    .line 733
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 678
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v3    # "attachmentObj":Lorg/json/JSONObject;
    .restart local v4    # "contentType":Ljava/lang/String;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v7    # "fileSize":Ljava/lang/String;
    .restart local v8    # "fileType":Ljava/lang/String;
    .restart local v10    # "imageFile":Ljava/io/File;
    .restart local v11    # "size":I
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 680
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 681
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v14, 0xfa

    invoke-static {v13, v14}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 682
    .local v12, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 683
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 687
    .end local v12    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_2
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 689
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v14, 0xfa

    invoke-static {v13, v14}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 690
    .restart local v12    # "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 691
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    .end local v12    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 696
    :pswitch_3
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 697
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->imageIcon:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 698
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 699
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v14, 0xfa

    invoke-static {v13, v14}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 700
    .local v9, "imageBitmap":Landroid/graphics/Bitmap;
    if-nez v9, :cond_7

    .line 701
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->imageIcon:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->downloadIcon:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->errorText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileName:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileType:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->fileSize:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 709
    :cond_7
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->errorText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 711
    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;->image:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 207
    if-nez p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/support/D$layout;->hs__msg_confirmation_box:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/support/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 211
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->text1:Landroid/widget/TextView;

    .line 212
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 213
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    .line 214
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    .line 215
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    .line 216
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setAcceptButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setRejectButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    :goto_0
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :goto_1
    return-object p1

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;
    check-cast p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;
    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/support/customadapters/MessagesAdapter$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/support/customadapters/MessagesAdapter$2;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    new-instance v1, Lcom/helpshift/support/customadapters/MessagesAdapter$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/support/customadapters/MessagesAdapter$3;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button1:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 251
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->button2:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 254
    :cond_2
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;->btnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 388
    if-nez p1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/helpshift/support/D$layout;->hs__local_msg_request_screenshot:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 390
    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/support/D$id;->user_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 392
    const v1, 0x102000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    .line 393
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 394
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    .line 395
    sget v1, Lcom/helpshift/R$id;->user_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/view/View;

    .line 396
    sget v1, Lcom/helpshift/R$id;->errorText:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->errorText:Landroid/widget/TextView;

    .line 397
    sget v1, Lcom/helpshift/R$id;->text_retry:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->textRetry:Landroid/widget/TextView;

    .line 399
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 404
    :goto_0
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 406
    .local v0, "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :cond_0
    :goto_1
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/view/View;

    iget-boolean v2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 446
    return-object p1

    .line 401
    .end local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;
    check-cast p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;
    goto :goto_0

    .line 413
    .restart local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 414
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    if-nez v0, :cond_3

    .line 416
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 419
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 421
    :cond_3
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 422
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 424
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->image:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 426
    :cond_4
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 428
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->doneBtn:Landroid/view/View;

    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$6;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/support/customadapters/MessagesAdapter$6;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 439
    :cond_5
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 478
    if-nez p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/support/D$layout;->hs__msg_review_request:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/support/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 482
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->message:Landroid/widget/TextView;

    .line 483
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 484
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/Button;

    .line 485
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->date:Landroid/widget/TextView;

    .line 486
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 491
    :goto_0
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->message:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/support/D$string;->hs__review_request_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->date:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 496
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    :goto_1
    return-object p1

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;
    check-cast p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;
    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 499
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/Button;

    new-instance v1, Lcom/helpshift/support/customadapters/MessagesAdapter$7;

    invoke-direct {v1, p0, p2, p3}, Lcom/helpshift/support/customadapters/MessagesAdapter$7;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 509
    :cond_2
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 510
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;->reviewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;)Landroid/view/View;
    .locals 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "position"    # I
    .param p4, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;

    .prologue
    const/16 v6, 0xfa

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 286
    if-nez p1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/helpshift/support/D$layout;->hs__msg_request_screenshot:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 288
    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/support/D$id;->admin_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/support/D$id;->user_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 291
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->text1:Landroid/widget/TextView;

    .line 292
    const v1, 0x1020019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/Button;

    .line 293
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 294
    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    .line 295
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    .line 296
    sget v1, Lcom/helpshift/R$id;->user_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/view/View;

    .line 297
    sget v1, Lcom/helpshift/support/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    .line 298
    sget v1, Lcom/helpshift/R$id;->errorText:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->errorText:Landroid/widget/TextView;

    .line 299
    sget v1, Lcom/helpshift/R$id;->text_retry:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->textRetry:Landroid/widget/TextView;

    .line 300
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    :goto_0
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->text1:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 312
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 317
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    .end local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/view/View;

    iget-boolean v2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 381
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableBtn:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    return-object p1

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;
    check-cast p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;
    goto :goto_0

    .line 320
    :cond_2
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 322
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    .restart local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 328
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    if-nez v0, :cond_3

    .line 331
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 334
    :cond_3
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 337
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 339
    :cond_4
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->doneBtn:Landroid/view/View;

    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/support/customadapters/MessagesAdapter$4;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 351
    .end local v0    # "screenshotImage":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 353
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 355
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/Button;

    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$5;

    invoke-direct {v2, p0, p2, p3}, Lcom/helpshift/support/customadapters/MessagesAdapter$5;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 367
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 371
    :cond_6
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->adminMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->attachBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->imagePreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 377
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v1, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;->textRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/support/D$layout;->hs__msg_review_accepted:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpshift/support/D$id;->user_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 521
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;->text1:Landroid/widget/TextView;

    .line 522
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;->date:Landroid/widget/TextView;

    .line 523
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 528
    :goto_0
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;->text1:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/support/D$string;->hs__review_accepted_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 529
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;->date:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    return-object p1

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;
    check-cast p3, Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;

    .restart local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;
    goto :goto_0
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 451
    if-nez p1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/helpshift/support/D$layout;->hs__msg_screenshot_status:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 453
    iget-object v1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v2, Lcom/helpshift/support/D$id;->user_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/helpshift/support/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 455
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 456
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    .line 457
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 462
    :goto_0
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 464
    iget-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    iget-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    :goto_1
    return-object p1

    .line 459
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;
    check-cast p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;

    .restart local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;
    goto :goto_0

    .line 467
    :cond_1
    iget-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 468
    iget-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/helpshift/support/util/AttachmentUtil;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 470
    .local v0, "screenshotImage":Landroid/graphics/Bitmap;
    iget-object v1, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/support/D$layout;->hs__msg_txt_admin:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/support/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 159
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;->text1:Landroid/widget/TextView;

    .line 160
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;->text2:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-object p1

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;
    check-cast p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;

    .restart local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;
    goto :goto_0
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/support/D$layout;->hs__msg_txt_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/support/D$id;->user_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 178
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    .line 179
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 185
    :goto_0
    iget-object v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 186
    :cond_0
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/support/D$string;->hs__sending_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :goto_1
    return-object p1

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;
    check-cast p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;

    .restart local p3    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;
    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_3

    .line 189
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    new-instance v1, Lcom/helpshift/support/customadapters/MessagesAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/helpshift/support/customadapters/MessagesAdapter$1;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter;Lcom/helpshift/support/viewstructs/HSMsg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/support/D$string;->hs__sending_fail_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text1:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p3, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ZLcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/helpshift/support/viewstructs/HSMsg;
    .param p3, "accepted"    # Z
    .param p4, "holder"    # Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/helpshift/support/D$layout;->hs__msg_confirmation_status:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->c:Landroid/content/Context;

    sget v1, Lcom/helpshift/support/D$id;->admin_message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpshift/support/util/Styles;->setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 267
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;->text1:Landroid/widget/TextView;

    .line 268
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;->text2:Landroid/widget/TextView;

    .line 269
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    :goto_0
    if-eqz p3, :cond_1

    .line 275
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;->text1:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/support/D$string;->hs__ca_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    :goto_1
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-object p1

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;
    check-cast p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;

    .restart local p4    # "holder":Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;
    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p4, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;->text1:Landroid/widget/TextView;

    sget v1, Lcom/helpshift/support/D$string;->hs__cr_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public enableButtons(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->enableBtn:Z

    .line 68
    return-void
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x1

    .line 82
    iget-object v3, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 83
    .local v0, "item":Lcom/helpshift/support/viewstructs/HSMsg;
    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    if-eq v3, v1, :cond_2

    :cond_0
    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    const/4 v4, -0x2

    if-le v3, v4, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    :cond_2
    const/4 v1, 0x2

    .line 114
    :cond_3
    :goto_0
    return v1

    .line 87
    :cond_4
    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v4, "admin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v4, "rfr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 89
    :cond_5
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "cb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    const/4 v1, 0x5

    goto :goto_0

    .line 91
    :cond_6
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "rsc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    const-string/jumbo v2, "localRscMessage_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    const/16 v1, 0xe

    goto :goto_0

    .line 95
    :cond_7
    const/16 v1, 0xd

    goto :goto_0

    .line 97
    :cond_8
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "ca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 98
    const/4 v1, 0x6

    goto :goto_0

    .line 99
    :cond_9
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "ncr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 100
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 101
    :cond_a
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "sc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 102
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 103
    :cond_b
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "rar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "admin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 104
    const/16 v1, 0xb

    goto/16 :goto_0

    .line 105
    :cond_c
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 106
    const/16 v1, 0xc

    goto/16 :goto_0

    .line 107
    :cond_d
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "admin_attachment_image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    .line 108
    goto/16 :goto_0

    .line 109
    :cond_e
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "admin_attachment_generic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 110
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 111
    :cond_f
    iget-object v1, v0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    const-string/jumbo v3, "admin_attachment_image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    .line 112
    goto/16 :goto_0

    .line 114
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/helpshift/support/customadapters/MessagesAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/viewstructs/HSMsg;

    .line 121
    .local v0, "item":Lcom/helpshift/support/viewstructs/HSMsg;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/helpshift/support/customadapters/MessagesAdapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 124
    :pswitch_1
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$TxtAdminHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 126
    :pswitch_2
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$TxtUserHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 128
    :pswitch_3
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$CBViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 130
    :pswitch_4
    const/4 v2, 0x1

    new-instance v3, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;

    invoke-direct {v3, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ZLcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 132
    :pswitch_5
    const/4 v2, 0x0

    new-instance v3, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;

    invoke-direct {v3, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ZLcom/helpshift/support/customadapters/MessagesAdapter$CSViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 134
    :pswitch_6
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$RSCViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 136
    :pswitch_7
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$LocalRSCViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_8
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$SCViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 140
    :pswitch_9
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$RARViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 142
    :pswitch_a
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;Lcom/helpshift/support/customadapters/MessagesAdapter$ARViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 144
    :pswitch_b
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentGenericViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 146
    :pswitch_c
    new-instance v2, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;

    invoke-direct {v2, v1}, Lcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;-><init>(Lcom/helpshift/support/customadapters/MessagesAdapter$1;)V

    invoke-direct {p0, p2, v0, p1, v2}, Lcom/helpshift/support/customadapters/MessagesAdapter;->setConvertView(Landroid/view/View;Lcom/helpshift/support/viewstructs/HSMsg;ILcom/helpshift/support/customadapters/MessagesAdapter$AdminAttachmentImageViewHolder;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x14

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
