.class public Lsfs2x/client/requests/RoomExtension;
.super Ljava/lang/Object;
.source "RoomExtension.java"


# instance fields
.field private className:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private propertiesFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lsfs2x/client/requests/RoomExtension;->id:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lsfs2x/client/requests/RoomExtension;->className:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsfs2x/client/requests/RoomExtension;->propertiesFile:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lsfs2x/client/requests/RoomExtension;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lsfs2x/client/requests/RoomExtension;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertiesFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lsfs2x/client/requests/RoomExtension;->propertiesFile:Ljava/lang/String;

    return-object v0
.end method

.method public setPropertiesFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lsfs2x/client/requests/RoomExtension;->propertiesFile:Ljava/lang/String;

    .line 68
    return-void
.end method
