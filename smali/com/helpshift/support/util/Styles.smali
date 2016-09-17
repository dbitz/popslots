.class public Lcom/helpshift/support/util/Styles;
.super Ljava/lang/Object;
.source "Styles.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attribute"    # I

    .prologue
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 23
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 24
    .local v0, "color":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return v0
.end method

.method public static getHexColor(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attribute"    # I

    .prologue
    .line 29
    const-string/jumbo v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    invoke-static {p0, p1}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v4

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQuestionWithHighlightedSearchTerms(Landroid/content/Context;Lcom/helpshift/support/Faq;Ljava/util/ArrayList;)Lcom/helpshift/support/Faq;
    .locals 39
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "question"    # Lcom/helpshift/support/Faq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/helpshift/support/Faq;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/helpshift/support/Faq;"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 96
    .local v3, "newQuestion":Lcom/helpshift/support/Faq;
    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 97
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 98
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "titleText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getBody()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "bodyText":Ljava/lang/String;
    new-instance v31, Ljava/util/LinkedHashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/LinkedHashSet;-><init>()V

    .line 104
    .local v31, "reverseTransKeywords":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    sget v4, Lcom/helpshift/R$attr;->hs__searchHighlightColor:I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/helpshift/support/util/Styles;->getHexColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    .line 106
    .local v23, "hexColor":Ljava/lang/String;
    invoke-static {v9}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-static {v10}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v26, 0x1

    .line 109
    .local v26, "isEnglish":Z
    :goto_0
    if-nez v26, :cond_7

    .line 110
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v35

    .line 111
    .local v35, "titleLength":I
    const-string/jumbo v37, ""

    .line 113
    .local v37, "titleTrans":Ljava/lang/String;
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v34, "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    .line 115
    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 116
    .local v19, "character":C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "charTransliteration":Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_1

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 119
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 107
    .end local v18    # "charTransliteration":Ljava/lang/String;
    .end local v19    # "character":C
    .end local v24    # "i":I
    .end local v26    # "isEnglish":Z
    .end local v27    # "j":I
    .end local v34    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v35    # "titleLength":I
    .end local v37    # "titleTrans":Ljava/lang/String;
    :cond_0
    const/16 v26, 0x0

    goto :goto_0

    .line 114
    .restart local v18    # "charTransliteration":Ljava/lang/String;
    .restart local v19    # "character":C
    .restart local v24    # "i":I
    .restart local v26    # "isEnglish":Z
    .restart local v27    # "j":I
    .restart local v34    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v35    # "titleLength":I
    .restart local v37    # "titleTrans":Ljava/lang/String;
    :cond_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 122
    .end local v18    # "charTransliteration":Ljava/lang/String;
    .end local v19    # "character":C
    .end local v27    # "j":I
    :cond_2
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v37

    .line 124
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    .line 125
    .local v15, "bodyLength":I
    invoke-static {v10}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    const-string/jumbo v17, ""

    .line 128
    .local v17, "bodyTrans":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "bodyIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v0, v15, :cond_4

    .line 130
    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    .line 131
    .restart local v19    # "character":C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/helpshift/support/util/HSTransliterator;->unidecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 132
    .restart local v18    # "charTransliteration":Ljava/lang/String;
    const/16 v27, 0x0

    .restart local v27    # "j":I
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_3

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 134
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 129
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 137
    .end local v18    # "charTransliteration":Ljava/lang/String;
    .end local v19    # "character":C
    .end local v27    # "j":I
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 139
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 140
    .local v38, "word":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_5

    .line 141
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    .line 142
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v25

    .line 143
    .local v25, "index":I
    :goto_5
    if-ltz v25, :cond_6

    .line 144
    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 145
    .local v33, "startIndex":I
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v25

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 146
    .local v21, "endIndex":I
    add-int/lit8 v4, v21, 0x1

    move/from16 v0, v33

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 147
    .local v30, "reverseTransKeyword":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v25

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v25

    .line 149
    goto :goto_5

    .line 151
    .end local v21    # "endIndex":I
    .end local v30    # "reverseTransKeyword":Ljava/lang/String;
    .end local v33    # "startIndex":I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v25

    .line 152
    :goto_6
    if-ltz v25, :cond_5

    .line 153
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 154
    .restart local v33    # "startIndex":I
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v25

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 155
    .restart local v21    # "endIndex":I
    add-int/lit8 v4, v21, 0x1

    move/from16 v0, v33

    invoke-virtual {v10, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 156
    .restart local v30    # "reverseTransKeyword":Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v25

    .line 158
    goto :goto_6

    .line 162
    .end local v2    # "bodyIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "bodyLength":I
    .end local v17    # "bodyTrans":Ljava/lang/String;
    .end local v21    # "endIndex":I
    .end local v24    # "i":I
    .end local v25    # "index":I
    .end local v30    # "reverseTransKeyword":Ljava/lang/String;
    .end local v33    # "startIndex":I
    .end local v34    # "titleIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v35    # "titleLength":I
    .end local v37    # "titleTrans":Ljava/lang/String;
    .end local v38    # "word":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 163
    .restart local v38    # "word":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_8

    .line 164
    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 168
    .end local v38    # "word":Ljava/lang/String;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 171
    const-string/jumbo v4, ">[^<]+<"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v29

    .line 172
    .local v29, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual/range {v31 .. v31}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 173
    .local v32, "reverseTransWord":Ljava/lang/String;
    move-object/from16 v36, v9

    .line 174
    .local v36, "titleTextCopy":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 175
    .local v28, "matcher":Ljava/util/regex/Matcher;
    :goto_8
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 176
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 177
    .local v20, "content":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(?i)("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<span style=\"background-color: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\">$1</span>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 179
    .local v22, "formattedContent":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 180
    goto :goto_8

    .line 182
    .end local v20    # "content":Ljava/lang/String;
    .end local v22    # "formattedContent":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v10

    .line 183
    .local v16, "bodyTextCopy":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 184
    :goto_9
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 185
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 186
    .restart local v20    # "content":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(?i)("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<span style=\"background-color: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\">$1</span>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 188
    .restart local v22    # "formattedContent":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 189
    goto :goto_9

    .line 192
    .end local v16    # "bodyTextCopy":Ljava/lang/String;
    .end local v20    # "content":Ljava/lang/String;
    .end local v22    # "formattedContent":Ljava/lang/String;
    .end local v28    # "matcher":Ljava/util/regex/Matcher;
    .end local v32    # "reverseTransWord":Ljava/lang/String;
    .end local v36    # "titleTextCopy":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 193
    const/4 v4, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 195
    new-instance v3, Lcom/helpshift/support/Faq;

    .end local v3    # "newQuestion":Lcom/helpshift/support/Faq;
    const-wide/16 v4, 0x1

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getPublishId()Ljava/lang/String;

    move-result-object v7

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getSectionPublishId()Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getIsHelpful()I

    move-result v11

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getIsRtl()Ljava/lang/Boolean;

    move-result-object v12

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getTags()Ljava/util/List;

    move-result-object v13

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v14

    invoke-direct/range {v3 .. v14}, Lcom/helpshift/support/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V

    .line 206
    .end local v9    # "titleText":Ljava/lang/String;
    .end local v10    # "bodyText":Ljava/lang/String;
    .end local v23    # "hexColor":Ljava/lang/String;
    .end local v26    # "isEnglish":Z
    .end local v29    # "pattern":Ljava/util/regex/Pattern;
    .end local v31    # "reverseTransKeywords":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    .restart local v3    # "newQuestion":Lcom/helpshift/support/Faq;
    :cond_d
    return-object v3
.end method

.method public static setAccentColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ratingBar"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    sget v0, Lcom/helpshift/R$attr;->hs__accentColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 86
    return-void
.end method

.method public static setAcceptButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acceptButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 53
    sget v0, Lcom/helpshift/support/D$attr;->hs__acceptButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 54
    return-void
.end method

.method public static setActionButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    sget v0, Lcom/helpshift/support/D$attr;->hs__actionButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 34
    return-void
.end method

.method public static setActionButtonNotificationIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionButtonNotificationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 37
    sget v0, Lcom/helpshift/support/D$attr;->hs__actionButtonNotificationIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 38
    return-void
.end method

.method public static setAdminChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adminChatBubbleNinePatch"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 69
    sget v0, Lcom/helpshift/R$attr;->hs__chatBubbleAdminBackgroundColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 70
    return-void
.end method

.method public static setAttachScreenshotButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachScreenshotButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    sget v0, Lcom/helpshift/support/D$attr;->hs__attachScreenshotButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 62
    return-void
.end method

.method public static setButtonCompoundDrawableIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonCompoundDrawableIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    sget v0, Lcom/helpshift/support/D$attr;->hs__buttonCompoundDrawableIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 42
    return-void
.end method

.method private static setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "attr"    # I

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-static {p0, p2}, Lcom/helpshift/support/util/Styles;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static setDownloadAttachmentButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadAttachmentButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 77
    sget v0, Lcom/helpshift/support/D$attr;->hs__downloadAttachmentButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 78
    return-void
.end method

.method public static setLaunchAttachmentButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launchAttachmentButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 81
    sget v0, Lcom/helpshift/support/D$attr;->hs__launchAttachmentButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 82
    return-void
.end method

.method public static setRejectButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rejectButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 57
    sget v0, Lcom/helpshift/support/D$attr;->hs__rejectButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 58
    return-void
.end method

.method public static setReviewButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reviewButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 65
    sget v0, Lcom/helpshift/support/D$attr;->hs__reviewButtonIconColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 66
    return-void
.end method

.method public static setSendMessageButtonActiveIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendMessageButtonActiveIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 49
    sget v0, Lcom/helpshift/R$attr;->hs__accentColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 50
    return-void
.end method

.method public static setSendMessageButtonIconColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendMessageButtonIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 45
    const v0, 0x101009a

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 46
    return-void
.end method

.method public static setUserChatBubbleColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userChatBubbleNinePatch"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    sget v0, Lcom/helpshift/R$attr;->hs__chatBubbleUserBackgroundColor:I

    invoke-static {p0, p1, v0}, Lcom/helpshift/support/util/Styles;->setColorFilter(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 74
    return-void
.end method
