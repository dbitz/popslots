.class public Lsfs2x/client/util/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# instance fields
.field private bboxHost:Ljava/lang/String;

.field private bboxPollingRate:I

.field private debug:Z

.field private host:Ljava/lang/String;

.field private httpPort:I

.field private httpsPort:I

.field private port:I

.field private udpHost:Ljava/lang/String;

.field private udpPort:I

.field private useBBox:Z

.field private zone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x26cd

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "127.0.0.1"

    iput-object v0, p0, Lsfs2x/client/util/ConfigData;->host:Ljava/lang/String;

    .line 17
    iput v1, p0, Lsfs2x/client/util/ConfigData;->port:I

    .line 18
    const-string/jumbo v0, "127.0.0.1"

    iput-object v0, p0, Lsfs2x/client/util/ConfigData;->udpHost:Ljava/lang/String;

    .line 19
    iput v1, p0, Lsfs2x/client/util/ConfigData;->udpPort:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsfs2x/client/util/ConfigData;->debug:Z

    .line 22
    const/16 v0, 0x1f90

    iput v0, p0, Lsfs2x/client/util/ConfigData;->httpPort:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsfs2x/client/util/ConfigData;->useBBox:Z

    .line 25
    const/16 v0, 0x20fb

    iput v0, p0, Lsfs2x/client/util/ConfigData;->httpsPort:I

    .line 27
    const/16 v0, 0x2bc

    iput v0, p0, Lsfs2x/client/util/ConfigData;->bboxPollingRate:I

    .line 14
    return-void
.end method


# virtual methods
.method public getBboxHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lsfs2x/client/util/ConfigData;->bboxHost:Ljava/lang/String;

    return-object v0
.end method

.method public getBboxPollingRate()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lsfs2x/client/util/ConfigData;->bboxPollingRate:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lsfs2x/client/util/ConfigData;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpPort()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lsfs2x/client/util/ConfigData;->httpPort:I

    return v0
.end method

.method public getHttpsPort()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lsfs2x/client/util/ConfigData;->httpsPort:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lsfs2x/client/util/ConfigData;->port:I

    return v0
.end method

.method public getUdpHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lsfs2x/client/util/ConfigData;->udpHost:Ljava/lang/String;

    return-object v0
.end method

.method public getUdpPort()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lsfs2x/client/util/ConfigData;->udpPort:I

    return v0
.end method

.method public getZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lsfs2x/client/util/ConfigData;->zone:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lsfs2x/client/util/ConfigData;->debug:Z

    return v0
.end method

.method public isUseBBox()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lsfs2x/client/util/ConfigData;->useBBox:Z

    return v0
.end method

.method public setBboxHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "bboxHost"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lsfs2x/client/util/ConfigData;->bboxHost:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setBboxPollingRate(I)V
    .locals 0
    .param p1, "bboxPollingRate"    # I

    .prologue
    .line 172
    iput p1, p0, Lsfs2x/client/util/ConfigData;->bboxPollingRate:I

    .line 173
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lsfs2x/client/util/ConfigData;->debug:Z

    .line 47
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lsfs2x/client/util/ConfigData;->host:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setHttpPort(I)V
    .locals 0
    .param p1, "httpPort"    # I

    .prologue
    .line 191
    iput p1, p0, Lsfs2x/client/util/ConfigData;->httpPort:I

    .line 192
    return-void
.end method

.method public setHttpsPort(I)V
    .locals 0
    .param p1, "httpsPort"    # I

    .prologue
    .line 230
    iput p1, p0, Lsfs2x/client/util/ConfigData;->httpsPort:I

    .line 231
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 82
    iput p1, p0, Lsfs2x/client/util/ConfigData;->port:I

    .line 83
    return-void
.end method

.method public setUdpHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "udpHost"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lsfs2x/client/util/ConfigData;->udpHost:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUdpPort(I)V
    .locals 0
    .param p1, "udpPort"    # I

    .prologue
    .line 118
    iput p1, p0, Lsfs2x/client/util/ConfigData;->udpPort:I

    .line 119
    return-void
.end method

.method public setUseBBox(Z)V
    .locals 0
    .param p1, "useBBox"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lsfs2x/client/util/ConfigData;->useBBox:Z

    .line 137
    return-void
.end method

.method public setZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zone"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lsfs2x/client/util/ConfigData;->zone:Ljava/lang/String;

    .line 210
    return-void
.end method
