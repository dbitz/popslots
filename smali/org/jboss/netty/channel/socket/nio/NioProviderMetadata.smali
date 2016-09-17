.class Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;
.super Ljava/lang/Object;
.source "NioProviderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$SelectorLoop;,
        Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$ConstraintLevelAutodetector;
    }
.end annotation


# static fields
.field static final CONSTRAINT_LEVEL:I

.field private static final CONSTRAINT_LEVEL_PROPERTY:Ljava/lang/String; = "org.jboss.netty.channel.socket.nio.constraintLevel"

.field private static final OLD_CONSTRAINT_LEVEL_PROPERTY:Ljava/lang/String; = "java.nio.channels.spi.constraintLevel"

.field static final logger:Lorg/jboss/netty/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x2

    .line 47
    const-class v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;

    invoke-static {v1}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    .line 64
    const/4 v0, -0x1

    .line 67
    .local v0, "constraintLevel":I
    const-string/jumbo v1, "org.jboss.netty.channel.socket.nio.constraintLevel"

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;I)I

    move-result v0

    .line 68
    if-ltz v0, :cond_0

    if-le v0, v4, :cond_2

    .line 70
    :cond_0
    const-string/jumbo v1, "java.nio.channels.spi.constraintLevel"

    invoke-static {v1, v2}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;I)I

    move-result v0

    .line 71
    if-ltz v0, :cond_1

    if-le v0, v4, :cond_6

    .line 72
    :cond_1
    const/4 v0, -0x1

    .line 82
    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    .line 83
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting the NIO constraint level to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 87
    :cond_3
    if-gez v0, :cond_4

    .line 88
    invoke-static {}, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->detectConstraintLevelFromSystemProperties()I

    move-result v0

    .line 90
    if-gez v0, :cond_7

    .line 91
    const/4 v0, 0x2

    .line 92
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v2, "Couldn\'t determine the NIO constraint level from the system properties; using the safest level (2)"

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 107
    :cond_4
    :goto_1
    sput v0, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    .line 109
    sget v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    if-ltz v1, :cond_5

    sget v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    if-le v1, v4, :cond_9

    .line 110
    :cond_5
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected NIO constraint level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", please report this error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_6
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    const-string/jumbo v2, "System property \'java.nio.channels.spi.constraintLevel\' has been deprecated.  Use \'org.jboss.netty.channel.socket.nio.constraintLevel\' instead."

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_7
    if-eqz v0, :cond_8

    .line 96
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Using the autodetected NIO constraint level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (Use better NIO provider for better performance)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_8
    sget-object v1, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->logger:Lorg/jboss/netty/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Using the autodetected NIO constraint level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    return-void
.end method

.method private static detectConstraintLevelFromSystemProperties()I
    .locals 16

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 117
    const-string/jumbo v13, "java.specification.version"

    invoke-static {v13}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "version":Ljava/lang/String;
    const-string/jumbo v13, "java.vm.info"

    const-string/jumbo v14, ""

    invoke-static {v13, v14}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "vminfo":Ljava/lang/String;
    const-string/jumbo v13, "os.name"

    invoke-static {v13}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "os":Ljava/lang/String;
    const-string/jumbo v13, "java.vm.vendor"

    invoke-static {v13}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, "vendor":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 129
    .local v6, "provider":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    if-nez v6, :cond_2

    :cond_0
    move v10, v12

    .line 230
    :cond_1
    :goto_1
    return v10

    .line 124
    .end local v6    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 126
    .local v4, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .restart local v6    # "provider":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 143
    const-string/jumbo v13, "sun"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_7

    .line 145
    const-string/jumbo v11, "linux"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_4

    .line 146
    const-string/jumbo v11, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_3
    move v10, v12

    .line 230
    goto :goto_1

    .line 152
    :cond_4
    const-string/jumbo v11, "windows"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_5

    .line 153
    const-string/jumbo v11, "sun.nio.ch.WindowsSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    .line 158
    :cond_5
    const-string/jumbo v11, "sun"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_6

    const-string/jumbo v11, "solaris"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_3

    .line 159
    :cond_6
    const-string/jumbo v11, "sun.nio.ch.DevPollSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    .line 164
    :cond_7
    const-string/jumbo v13, "apple"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_8

    .line 166
    const-string/jumbo v11, "mac"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_3

    const-string/jumbo v11, "os"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_3

    .line 167
    const-string/jumbo v11, "sun.nio.ch.KQueueSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_1

    .line 172
    :cond_8
    const-string/jumbo v13, "ibm"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_e

    .line 174
    const-string/jumbo v13, "linux"

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_9

    const-string/jumbo v13, "aix"

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_3

    .line 175
    :cond_9
    const-string/jumbo v13, "1.5"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string/jumbo v13, "^1\\.5\\D.*$"

    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 176
    :cond_a
    const-string/jumbo v10, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v11

    .line 177
    goto/16 :goto_1

    .line 179
    :cond_b
    const-string/jumbo v13, "1.6"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string/jumbo v13, "^1\\.6\\D.*$"

    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 183
    :cond_c
    const-string/jumbo v13, "(?:^|[^0-9])([2-9][0-9]{3}(?:0[1-9]|1[0-2])(?:0[1-9]|[12][0-9]|3[01]))(?:$|[^0-9])"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 190
    .local v1, "datePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 191
    .local v0, "dateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 192
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 193
    .local v2, "dateValue":J
    const-wide/32 v14, 0x13269d1

    cmp-long v13, v2, v14

    if-gez v13, :cond_d

    .line 195
    const/4 v10, 0x2

    goto/16 :goto_1

    .line 198
    :cond_d
    const-string/jumbo v13, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 200
    const-string/jumbo v10, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v11

    .line 201
    goto/16 :goto_1

    .line 208
    .end local v0    # "dateMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "datePattern":Ljava/util/regex/Pattern;
    .end local v2    # "dateValue":J
    :cond_e
    const-string/jumbo v13, "bea"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_f

    const-string/jumbo v13, "oracle"

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_11

    .line 210
    :cond_f
    const-string/jumbo v11, "linux"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_10

    .line 211
    const-string/jumbo v11, "sun.nio.ch.EPollSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "sun.nio.ch.PollSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_1

    .line 217
    :cond_10
    const-string/jumbo v11, "windows"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_3

    .line 218
    const-string/jumbo v11, "sun.nio.ch.WindowsSelectorProvider"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto/16 :goto_1

    .line 223
    :cond_11
    const-string/jumbo v10, "apache"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_3

    .line 224
    const-string/jumbo v10, "org.apache.harmony.nio.internal.SelectorProviderImpl"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v11

    .line 225
    goto/16 :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 435
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 438
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hard-coded Constraint Level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata;->CONSTRAINT_LEVEL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Auto-detected Constraint Level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$ConstraintLevelAutodetector;

    invoke-direct {v4}, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$ConstraintLevelAutodetector;-><init>()V

    invoke-virtual {v4}, Lorg/jboss/netty/channel/socket/nio/NioProviderMetadata$ConstraintLevelAutodetector;->autodetect()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    return-void
.end method
