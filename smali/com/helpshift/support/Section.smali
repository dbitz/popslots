.class public Lcom/helpshift/support/Section;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J

.field private publish_id:Ljava/lang/String;

.field private section_id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/helpshift/support/Section$1;

    invoke-direct {v0}, Lcom/helpshift/support/Section$1;-><init>()V

    sput-object v0, Lcom/helpshift/support/Section;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/support/Section;->id:J

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "sectionId"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "publish_id"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/helpshift/support/Section;->id:J

    .line 23
    iput-object p3, p0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/helpshift/support/Section$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/helpshift/support/Section$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/helpshift/support/Section;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "publish_id"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/support/Section;->id:J

    .line 31
    iput-object p1, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "publish_id"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/helpshift/support/Section;->id:J

    .line 38
    iput-object p1, p0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Lcom/helpshift/support/Section;

    .line 86
    .local v0, "other":Lcom/helpshift/support/Section;
    iget-object v1, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPublishId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/helpshift/support/Section;->id:J

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/helpshift/support/Section;->section_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/helpshift/support/Section;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/helpshift/support/Section;->publish_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method
