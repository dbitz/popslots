.class public final Lcom/helpshift/support/Faq;
.super Ljava/lang/Object;
.source "Faq.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private body:Ljava/lang/String;

.field private categoryTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private is_helpful:I

.field private is_rtl:Ljava/lang/Boolean;

.field private publish_id:Ljava/lang/String;

.field private qId:Ljava/lang/String;

.field private searchTerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private section_publish_id:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/helpshift/support/Faq$1;

    invoke-direct {v0}, Lcom/helpshift/support/Faq$1;-><init>()V

    sput-object v0, Lcom/helpshift/support/Faq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Faq;->type:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    .line 37
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "qId"    # Ljava/lang/String;
    .param p4, "publish_id"    # Ljava/lang/String;
    .param p5, "sectionId"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "isHelpful"    # I
    .param p9, "isRtl"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p10, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "categoryTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/helpshift/support/Faq;->id:J

    .line 58
    iput-object p3, p0, Lcom/helpshift/support/Faq;->qId:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "faq"

    iput-object v0, p0, Lcom/helpshift/support/Faq;->type:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    .line 64
    iput p8, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    .line 65
    iput-object p9, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    .line 66
    iput-object p10, p0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    .line 67
    iput-object p11, p0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->qId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->type:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    .line 79
    iget-object v0, p0, Lcom/helpshift/support/Faq;->searchTerms:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 82
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/helpshift/support/Faq$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/helpshift/support/Faq$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/helpshift/support/Faq;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "publish_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/helpshift/support/Faq;->type:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private static mergeSearchTerms(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "searchTerms1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "searchTerms2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    .local v0, "searchTermsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 192
    :cond_0
    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 195
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method protected addSearchTerms(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "searchTerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/helpshift/support/Faq;->searchTerms:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/helpshift/support/Faq;->mergeSearchTerms(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->searchTerms:Ljava/util/ArrayList;

    .line 184
    return-void
.end method

.method protected clearSearchTerms()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/helpshift/support/Faq;->searchTerms:Ljava/util/ArrayList;

    .line 180
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 200
    move-object v0, p1

    check-cast v0, Lcom/helpshift/support/Faq;

    .line 202
    .local v0, "other":Lcom/helpshift/support/Faq;
    iget-object v1, p0, Lcom/helpshift/support/Faq;->qId:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->qId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    iget v2, v0, Lcom/helpshift/support/Faq;->is_helpful:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    .line 209
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    iget-object v2, v0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    .line 210
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    const/4 v1, 0x0

    .line 213
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/helpshift/support/Faq;->qId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHelpful()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    return v0
.end method

.method public getIsRtl()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPublishId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTerms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/helpshift/support/Faq;->searchTerms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectionPublishId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/helpshift/support/Faq;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/helpshift/support/Faq;->id:J

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/helpshift/support/Faq;->qId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/helpshift/support/Faq;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    iget-object v0, p0, Lcom/helpshift/support/Faq;->searchTerms:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/helpshift/support/Faq;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/helpshift/support/Faq;->categoryTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 102
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
