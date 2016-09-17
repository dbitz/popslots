.class public Lsfs2x/client/util/ConfigLoader;
.super Ljava/lang/Object;
.source "ConfigLoader.java"


# instance fields
.field private dispatcher:Lsfs2x/client/core/EventDispatcher;

.field private xmldoc:Lorg/jdom/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lsfs2x/client/core/EventDispatcher;

    invoke-direct {v0, p0}, Lsfs2x/client/core/EventDispatcher;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsfs2x/client/util/ConfigLoader;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    .line 29
    return-void
.end method

.method private onConfigLoadFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "message"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v1, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v2, "configLoadFailure"

    invoke-direct {v1, v2, v0}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    .local v1, "sfsEvt":Lsfs2x/client/core/BaseEvent;
    iget-object v2, p0, Lsfs2x/client/util/ConfigLoader;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v2, v1}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 139
    return-void
.end method

.method private tryParse()V
    .locals 8

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 59
    .local v4, "log":Lorg/slf4j/Logger;
    new-instance v0, Lsfs2x/client/util/ConfigData;

    invoke-direct {v0}, Lsfs2x/client/util/ConfigData;-><init>()V

    .line 63
    .local v0, "cfgData":Lsfs2x/client/util/ConfigData;
    :try_start_0
    iget-object v6, p0, Lsfs2x/client/util/ConfigLoader;->xmldoc:Lorg/jdom/Document;

    invoke-virtual {v6}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v1

    .line 66
    .local v1, "configNode":Lorg/jdom/Element;
    const-string/jumbo v6, "ip"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "ip"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    :cond_0
    const-string/jumbo v6, "Required config node missing: ip"

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 70
    :cond_1
    const-string/jumbo v6, "port"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "port"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    :cond_2
    const-string/jumbo v6, "Required config node missing: port"

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 74
    :cond_3
    const-string/jumbo v6, "udpIp"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "udpIp"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 76
    :cond_4
    const-string/jumbo v6, "Required config node missing: udpIp"

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 78
    :cond_5
    const-string/jumbo v6, "udpPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "udpPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 80
    :cond_6
    const-string/jumbo v6, "Required config node missing: udpPort"

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 82
    :cond_7
    const-string/jumbo v6, "zone"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "zone"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 84
    :cond_8
    const-string/jumbo v6, "Required config node missing: zone"

    invoke-interface {v4, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 88
    :cond_9
    const-string/jumbo v6, "ip"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setHost(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v6, "port"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setPort(I)V

    .line 90
    const-string/jumbo v6, "udpIp"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setUdpHost(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v6, "udpPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setUdpPort(I)V

    .line 92
    const-string/jumbo v6, "zone"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setZone(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v6, "debug"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "debug"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 96
    const-string/jumbo v6, "debug"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setDebug(Z)V

    .line 99
    :cond_a
    const-string/jumbo v6, "useBlueBox"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "useBlueBox"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 101
    const-string/jumbo v6, "useBlueBox"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setUseBBox(Z)V

    .line 104
    :cond_b
    const-string/jumbo v6, "httpPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "httpPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 106
    const-string/jumbo v6, "httpPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setHttpPort(I)V

    .line 109
    :cond_c
    const-string/jumbo v6, "httpsPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_d

    const-string/jumbo v6, "httpsPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 111
    const-string/jumbo v6, "httpsPort"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setHttpsPort(I)V

    .line 114
    :cond_d
    const-string/jumbo v6, "blueBoxPollingRate"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "blueBoxPollingRate"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 116
    const-string/jumbo v6, "blueBoxPollingRate"

    invoke-virtual {v1, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lsfs2x/client/util/ConfigData;->setBboxPollingRate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "cfg"

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v5, Lsfs2x/client/core/SFSEvent;

    const-string/jumbo v6, "configLoadSuccess"

    invoke-direct {v5, v6, v2}, Lsfs2x/client/core/SFSEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    .local v5, "sfsEvt":Lsfs2x/client/core/BaseEvent;
    iget-object v6, p0, Lsfs2x/client/util/ConfigLoader;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    invoke-virtual {v6, v5}, Lsfs2x/client/core/EventDispatcher;->dispatchEvent(Lsfs2x/client/core/BaseEvent;)V

    .line 131
    .end local v1    # "configNode":Lorg/jdom/Element;
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "sfsEvt":Lsfs2x/client/core/BaseEvent;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v3

    .line 122
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Error parsing config file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lsfs2x/client/util/ConfigLoader;->onConfigLoadFailure(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDispatcher()Lsfs2x/client/core/EventDispatcher;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lsfs2x/client/util/ConfigLoader;->dispatcher:Lsfs2x/client/core/EventDispatcher;

    return-object v0
.end method

.method public loadConfig(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Lorg/jdom/input/SAXBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/jdom/input/SAXBuilder;-><init>(Z)V

    .line 44
    .local v0, "b":Lorg/jdom/input/SAXBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/File;)Lorg/jdom/Document;

    move-result-object v2

    iput-object v2, p0, Lsfs2x/client/util/ConfigLoader;->xmldoc:Lorg/jdom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    invoke-direct {p0}, Lsfs2x/client/util/ConfigLoader;->tryParse()V

    .line 54
    .end local v0    # "b":Lorg/jdom/input/SAXBuilder;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error loading config file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsfs2x/client/util/ConfigLoader;->onConfigLoadFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
