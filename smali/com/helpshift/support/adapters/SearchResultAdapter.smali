.class public Lcom/helpshift/support/adapters/SearchResultAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/adapters/SearchResultAdapter$HeaderViewHolder;,
        Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;,
        Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_FOOTER:I = 0x2

.field private static final TYPE_HEADER:I = 0x1

.field private static final TYPE_QUESTION:I = 0x3


# instance fields
.field private onContactUsClickedListener:Landroid/view/View$OnClickListener;

.field private onQuestionClickedListener:Landroid/view/View$OnClickListener;

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p2, "onQuestionClickedListener"    # Landroid/view/View$OnClickListener;
    .param p3, "sendAnywayClickedListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "questions":Ljava/util/List;, "Ljava/util/List<Lcom/helpshift/support/Faq;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->questions:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p3, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->onContactUsClickedListener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method private configureFooterViewHolder(Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;

    .prologue
    .line 77
    sget-object v0, Lcom/helpshift/support/ContactUsFilter$LOCATION;->SEARCH_FOOTER:Lcom/helpshift/support/ContactUsFilter$LOCATION;

    invoke-static {v0}, Lcom/helpshift/support/ContactUsFilter;->showContactUs(Lcom/helpshift/support/ContactUsFilter$LOCATION;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->rootView:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->access$000(Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->button:Landroid/widget/Button;
    invoke-static {p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->access$100(Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->onContactUsClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->rootView:Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;->access$000(Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private configureQuestionViewHolder(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;I)V
    .locals 24
    .param p1, "holder"    # Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/adapters/SearchResultAdapter;->questions:Ljava/util/List;

    move-object/from16 v19, v0

    add-int/lit8 v20, p2, -0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/helpshift/support/Faq;

    .line 87
    .local v12, "question":Lcom/helpshift/support/Faq;
    invoke-virtual {v12}, Lcom/helpshift/support/Faq;->getSearchTerms()Ljava/util/ArrayList;

    move-result-object v11

    .line 88
    .local v11, "matchedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12}, Lcom/helpshift/support/Faq;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, "title":Ljava/lang/String;
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 91
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->textView:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->access$200(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v19

    sget v20, Lcom/helpshift/R$attr;->hs__searchHighlightColor:I

    invoke-static/range {v19 .. v20}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 93
    .local v6, "highlightColor":I
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    .local v13, "spannedTitle":Landroid/text/Spannable;
    invoke-static {v14}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 95
    .local v9, "isEnglish":Z
    if-eqz v9, :cond_1

    .line 96
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 97
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 98
    .local v18, "word":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 99
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    .line 100
    .local v8, "index":I
    :goto_0
    if-ltz v8, :cond_0

    .line 101
    new-instance v20, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 103
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v8

    const/16 v22, 0x21

    .line 101
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v13, v0, v8, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v8

    .line 105
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v14, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    goto :goto_0

    .line 112
    .end local v8    # "index":I
    .end local v18    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    .line 113
    .local v16, "titleLength":I
    const-string/jumbo v17, ""

    .line 116
    .local v17, "transliteration":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v15, "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    .line 119
    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 120
    .local v5, "character":C
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "charTransliteration":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 122
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 118
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 126
    .end local v4    # "charTransliteration":Ljava/lang/String;
    .end local v5    # "character":C
    .end local v10    # "j":I
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 127
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 128
    .restart local v18    # "word":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 129
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 130
    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    .line 131
    .restart local v8    # "index":I
    :goto_3
    if-ltz v8, :cond_4

    .line 132
    new-instance v21, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 133
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 134
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v8

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    const/16 v23, 0x21

    .line 132
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v23

    invoke-interface {v13, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 138
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v8

    .line 136
    invoke-static/range {v17 .. v19}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v8

    goto :goto_3

    .line 143
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v15    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "titleLength":I
    .end local v17    # "transliteration":Ljava/lang/String;
    .end local v18    # "word":Ljava/lang/String;
    :cond_5
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->textView:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->access$200(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v6    # "highlightColor":I
    .end local v9    # "isEnglish":Z
    .end local v13    # "spannedTitle":Landroid/text/Spannable;
    :goto_4
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->textView:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->access$200(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/helpshift/support/adapters/SearchResultAdapter;->onQuestionClickedListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->textView:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->access$200(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual {v12}, Lcom/helpshift/support/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 149
    return-void

    .line 145
    :cond_6
    # getter for: Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->textView:Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;->access$200(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isPositionFooter(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/helpshift/support/adapters/SearchResultAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;
    .locals 3
    .param p1, "publishId"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->questions:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Faq;

    .line 154
    .local v0, "question":Lcom/helpshift/support/Faq;
    invoke-virtual {v0}, Lcom/helpshift/support/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    .end local v0    # "question":Lcom/helpshift/support/Faq;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->questions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const-wide/16 v0, 0x1

    .line 180
    :goto_0
    return-wide v0

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/support/adapters/SearchResultAdapter;->isPositionFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/helpshift/support/adapters/SearchResultAdapter;->questions:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Faq;

    invoke-virtual {v0}, Lcom/helpshift/support/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/support/adapters/SearchResultAdapter;->isPositionFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x2

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 67
    instance-of v2, p1, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;

    .line 69
    .local v0, "footerViewHolder":Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;
    invoke-direct {p0, v0}, Lcom/helpshift/support/adapters/SearchResultAdapter;->configureFooterViewHolder(Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;)V

    .line 74
    .end local v0    # "footerViewHolder":Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    instance-of v2, p1, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 71
    check-cast v1, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;

    .line 72
    .local v1, "questionViewHolder":Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;
    invoke-direct {p0, v1, p2}, Lcom/helpshift/support/adapters/SearchResultAdapter;->configureQuestionViewHolder(Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, 0x0

    .line 46
    packed-switch p2, :pswitch_data_0

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/helpshift/R$layout;->hs_simple_recycler_view_item:I

    .line 60
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "textView":Landroid/widget/TextView;
    new-instance v3, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;

    invoke-direct {v3, v2}, Lcom/helpshift/support/adapters/SearchResultAdapter$QuestionViewHolder;-><init>(Landroid/widget/TextView;)V

    .end local v2    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v3

    .line 49
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/helpshift/R$layout;->hs__search_result_header:I

    .line 50
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "headerView":Landroid/widget/TextView;
    new-instance v3, Lcom/helpshift/support/adapters/SearchResultAdapter$HeaderViewHolder;

    invoke-direct {v3, v0}, Lcom/helpshift/support/adapters/SearchResultAdapter$HeaderViewHolder;-><init>(Landroid/widget/TextView;)V

    goto :goto_0

    .line 54
    .end local v0    # "headerView":Landroid/widget/TextView;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/helpshift/R$layout;->hs__search_result_footer:I

    .line 55
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 56
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;

    invoke-direct {v3, v1}, Lcom/helpshift/support/adapters/SearchResultAdapter$FooterViewHolder;-><init>(Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
