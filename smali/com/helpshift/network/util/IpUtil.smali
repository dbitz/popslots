.class public Lcom/helpshift/network/util/IpUtil;
.super Ljava/lang/Object;
.source "IpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 1
    .param p0, "useIPv4"    # Z

    .prologue
    .line 53
    invoke-static {p0}, Lcom/helpshift/network/util/IpUtil;->getInterfaceAddress(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/helpshift/network/util/IpUtil;->validateIPAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInterfaceAddress(Z)Ljava/lang/String;
    .locals 10
    .param p0, "useIPv4"    # Z

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 25
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 26
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 27
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 28
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "sAddr":Ljava/lang/String;
    invoke-static {v6}, Lcom/helpshift/network/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v5

    .line 31
    .local v5, "isIPv4":Z
    if-eqz p0, :cond_3

    .line 32
    if-eqz v5, :cond_1

    .line 45
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 35
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "isIPv4":Z
    .restart local v6    # "sAddr":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_1

    .line 36
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 37
    .local v2, "delim":I
    if-ltz v2, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 43
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 45
    :cond_4
    const-string/jumbo v6, ""

    goto :goto_0
.end method

.method private static validateIPAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "useIPv4"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/helpshift/util/HSPattern;->checkIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "address":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "address":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
