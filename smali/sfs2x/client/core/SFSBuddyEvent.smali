.class public Lsfs2x/client/core/SFSBuddyEvent;
.super Lsfs2x/client/core/BaseEvent;
.source "SFSBuddyEvent.java"


# static fields
.field public static final BUDDY_ADD:Ljava/lang/String; = "buddyAdd"

.field public static final BUDDY_BLOCK:Ljava/lang/String; = "buddyBlock"

.field public static final BUDDY_ERROR:Ljava/lang/String; = "buddyError"

.field public static final BUDDY_LIST_INIT:Ljava/lang/String; = "buddyListInit"

.field public static final BUDDY_MESSAGE:Ljava/lang/String; = "buddyMessage"

.field public static final BUDDY_ONLINE_STATE_UPDATE:Ljava/lang/String; = "buddyOnlineStateChange"

.field public static final BUDDY_REMOVE:Ljava/lang/String; = "buddyRemove"

.field public static final BUDDY_VARIABLES_UPDATE:Ljava/lang/String; = "buddyVariablesUpdate"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lsfs2x/client/core/BaseEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 355
    return-void
.end method
