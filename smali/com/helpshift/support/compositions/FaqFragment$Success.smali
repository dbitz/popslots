.class Lcom/helpshift/support/compositions/FaqFragment$Success;
.super Landroid/os/Handler;
.source "FaqFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/compositions/FaqFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Success"
.end annotation


# instance fields
.field private final faqFragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/helpshift/support/compositions/FaqFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/support/compositions/FaqFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/helpshift/support/compositions/FaqFragment;

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/helpshift/support/compositions/FaqFragment$Success;->faqFragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 201
    iget-object v3, p0, Lcom/helpshift/support/compositions/FaqFragment$Success;->faqFragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/compositions/FaqFragment;

    .line 202
    .local v0, "faqFragment":Lcom/helpshift/support/compositions/FaqFragment;
    if-eqz v0, :cond_1

    .line 204
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 205
    .local v1, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    iget v2, p1, Landroid/os/Message;->what:I

    .line 206
    .local v2, "status":I
    if-eqz v1, :cond_0

    .line 207
    # invokes: Lcom/helpshift/support/compositions/FaqFragment;->removeEmptySections(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/helpshift/support/compositions/FaqFragment;->access$000(Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    # setter for: Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I
    invoke-static {v3}, Lcom/helpshift/support/compositions/FaqFragment;->access$102(I)I

    .line 211
    :cond_0
    sget v3, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->DATABASE_SUCCESS:I

    if-ne v2, v3, :cond_2

    .line 212
    # getter for: Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I
    invoke-static {}, Lcom/helpshift/support/compositions/FaqFragment;->access$100()I

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v0, v4}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 215
    # invokes: Lcom/helpshift/support/compositions/FaqFragment;->updateFragment(Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V
    invoke-static {v0, v0, v1}, Lcom/helpshift/support/compositions/FaqFragment;->access$200(Lcom/helpshift/support/compositions/FaqFragment;Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V

    .line 236
    .end local v1    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    .end local v2    # "status":I
    :cond_1
    :goto_0
    return-void

    .line 218
    .restart local v1    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/helpshift/support/Section;>;"
    .restart local v2    # "status":I
    :cond_2
    sget v3, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NEW_DATA:I

    if-ne v2, v3, :cond_4

    .line 219
    # getter for: Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I
    invoke-static {}, Lcom/helpshift/support/compositions/FaqFragment;->access$100()I

    move-result v3

    if-nez v3, :cond_3

    .line 221
    invoke-virtual {v0, v5}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual {v0, v4}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    .line 226
    # invokes: Lcom/helpshift/support/compositions/FaqFragment;->updateFragment(Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V
    invoke-static {v0, v0, v1}, Lcom/helpshift/support/compositions/FaqFragment;->access$200(Lcom/helpshift/support/compositions/FaqFragment;Lcom/helpshift/support/compositions/FaqFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 229
    :cond_4
    sget v3, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->API_SUCCESS_NO_NEW_DATA:I

    if-ne v2, v3, :cond_1

    .line 230
    # getter for: Lcom/helpshift/support/compositions/FaqFragment;->sectionsSize:I
    invoke-static {}, Lcom/helpshift/support/compositions/FaqFragment;->access$100()I

    move-result v3

    if-nez v3, :cond_1

    .line 232
    invoke-virtual {v0, v5}, Lcom/helpshift/support/compositions/FaqFragment;->updateFaqLoadingUI(I)V

    goto :goto_0
.end method
