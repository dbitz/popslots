.class public Lcom/helpshift/support/util/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConversationFlowFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/ConversationFlowFragment;
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 281
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 288
    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .line 285
    .restart local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    :cond_0
    instance-of v1, v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    if-eqz v1, :cond_1

    .line 286
    check-cast v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {v0}, Lcom/helpshift/support/util/FragmentUtil;->getConversationFlowFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/ConversationFlowFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConversationFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/ConversationFlowFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 253
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 255
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    if-eqz v3, :cond_0

    .line 257
    check-cast v0, Lcom/helpshift/support/fragments/ConversationFlowFragment;

    .line 261
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFaqFlowFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/FaqFlowFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 214
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 216
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-eqz v3, :cond_0

    .line 218
    check-cast v0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    .line 222
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFaqFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/compositions/FaqFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 229
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/compositions/FaqFragment;

    if-eqz v3, :cond_0

    .line 231
    check-cast v0, Lcom/helpshift/support/compositions/FaqFragment;

    .line 235
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHSMessagesFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSMessagesFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 167
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 169
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/HSMessagesFragment;

    if-eqz v3, :cond_0

    .line 171
    check-cast v0, Lcom/helpshift/support/HSMessagesFragment;

    .line 175
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHsAddIssueFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSAddIssueFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 156
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/HSAddIssueFragment;

    if-eqz v3, :cond_0

    .line 158
    check-cast v0, Lcom/helpshift/support/HSAddIssueFragment;

    .line 162
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHsMessagesFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSMessagesFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 182
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/HSMessagesFragment;

    if-eqz v3, :cond_0

    .line 184
    check-cast v0, Lcom/helpshift/support/HSMessagesFragment;

    .line 188
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScreenshotPreviewFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 193
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 195
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    if-eqz v3, :cond_0

    .line 197
    check-cast v0, Lcom/helpshift/support/fragments/ScreenshotPreviewFragment;

    .line 201
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSearchFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/SearchFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 240
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 242
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/SearchFragment;

    if-eqz v3, :cond_0

    .line 244
    check-cast v0, Lcom/helpshift/support/fragments/SearchFragment;

    .line 248
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSingleQuestionFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/fragments/SingleQuestionFragment;
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 143
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    if-eqz v3, :cond_0

    .line 145
    check-cast v0, Lcom/helpshift/support/fragments/SingleQuestionFragment;

    .line 149
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 267
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 274
    .end local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .line 271
    .restart local v0    # "parentFragment":Landroid/support/v4/app/Fragment;
    :cond_0
    instance-of v1, v0, Lcom/helpshift/support/fragments/SupportFragment;

    if-eqz v1, :cond_1

    .line 272
    check-cast v0, Lcom/helpshift/support/fragments/SupportFragment;

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {v0}, Lcom/helpshift/support/util/FragmentUtil;->getSupportFragment(Landroid/support/v4/app/Fragment;)Lcom/helpshift/support/fragments/SupportFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVisibleFragments(Landroid/support/v4/app/FragmentManager;)Ljava/util/List;
    .locals 5
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, "visibleFragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 117
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-object v2
.end method

.method public static isSearchFragmentPresentButNotVisible(Landroid/support/v4/app/FragmentManager;)Z
    .locals 4
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 129
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/helpshift/support/fragments/SearchFragment;

    if-eqz v3, :cond_0

    .line 132
    const/4 v2, 0x1

    .line 136
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static popBackStack(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "backStackName"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public static popBackStackImmediate(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "backStackName"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 106
    return-void
.end method

.method public static removeFragment(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 110
    return-void
.end method

.method public static removeHsAddIssueFragmentImmediate(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/helpshift/support/util/FragmentUtil;->getHsAddIssueFragment(Landroid/support/v4/app/FragmentManager;)Lcom/helpshift/support/HSAddIssueFragment;

    move-result-object v0

    .line 206
    .local v0, "hsAddIssueFragment":Lcom/helpshift/support/HSAddIssueFragment;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 210
    :cond_0
    return-void
.end method

.method private static shouldHaveAnimation(Landroid/support/v4/app/Fragment;)Z
    .locals 4
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v1, 0x0

    .line 293
    instance-of v2, p0, Lcom/helpshift/support/compositions/FaqFragment;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/helpshift/support/fragments/SectionListFragment;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/helpshift/support/fragments/FaqFlowFragment;

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/R$bool;->is_screen_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 297
    .local v0, "isScreenLarge":Z
    if-nez v0, :cond_2

    instance-of v2, p0, Lcom/helpshift/support/fragments/QuestionListFragment;

    if-nez v2, :cond_0

    .line 300
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static startFragment(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragmentContainerId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "backStackName"    # Ljava/lang/String;
    .param p5, "executePendingTransactions"    # Z

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 36
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p2}, Lcom/helpshift/support/util/FragmentUtil;->shouldHaveAnimation(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    sget v1, Lcom/helpshift/R$anim;->slide_in_from_right:I

    sget v2, Lcom/helpshift/R$anim;->slide_out_to_left:I

    sget v3, Lcom/helpshift/R$anim;->slide_in_from_left:I

    sget v4, Lcom/helpshift/R$anim;->slide_out_to_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 39
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 40
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    invoke-virtual {v0, p4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 43
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    if-eqz p5, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 47
    :cond_2
    return-void
.end method

.method public static startFragmentWithBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragmentContainerId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "executePendingTransactions"    # Z

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 55
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p2}, Lcom/helpshift/support/util/FragmentUtil;->shouldHaveAnimation(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget v1, Lcom/helpshift/R$anim;->slide_in_from_right:I

    sget v2, Lcom/helpshift/R$anim;->slide_out_to_left:I

    sget v3, Lcom/helpshift/R$anim;->slide_in_from_left:I

    sget v4, Lcom/helpshift/R$anim;->slide_out_to_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 61
    if-eqz p4, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 64
    :cond_1
    return-void
.end method

.method public static startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/ConversationFlowController;Z)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragmentContainerId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "conversationFlowController"    # Lcom/helpshift/support/controllers/ConversationFlowController;
    .param p5, "executePendingTransactions"    # Z

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 73
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p2}, Lcom/helpshift/support/util/FragmentUtil;->shouldHaveAnimation(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget v1, Lcom/helpshift/R$anim;->slide_in_from_right:I

    sget v2, Lcom/helpshift/R$anim;->slide_out_to_left:I

    sget v3, Lcom/helpshift/R$anim;->slide_in_from_left:I

    sget v4, Lcom/helpshift/R$anim;->slide_out_to_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 78
    if-eqz p5, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 81
    :cond_1
    return-void
.end method

.method public static startFragmentWithoutBackStack(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/helpshift/support/controllers/FaqFlowController;Z)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "fragmentContainerId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "faqFlowController"    # Lcom/helpshift/support/controllers/FaqFlowController;
    .param p5, "executePendingTransactions"    # Z

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 90
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p2}, Lcom/helpshift/support/util/FragmentUtil;->shouldHaveAnimation(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget v1, Lcom/helpshift/R$anim;->slide_in_from_right:I

    sget v2, Lcom/helpshift/R$anim;->slide_out_to_left:I

    sget v3, Lcom/helpshift/R$anim;->slide_in_from_left:I

    sget v4, Lcom/helpshift/R$anim;->slide_out_to_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 94
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 95
    if-eqz p5, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 98
    :cond_1
    return-void
.end method
