.class final Lcom/adjust/sdk/ActivityHandler$SessionHandler;
.super Landroid/os/Handler;
.source "ActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/ActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionHandler"
.end annotation


# static fields
.field private static final ATTRIBUTION_TASKS:I = 0x11bc1

.field private static final BASE_ADDRESS:I = 0x11bb6

.field private static final DEEP_LINK:I = 0x11bbc

.field private static final END:I = 0x11bb9

.field private static final EVENT:I = 0x11bba

.field private static final EVENT_TASKS:I = 0x11bbb

.field private static final INIT:I = 0x11bb7

.field private static final SEND_REFERRER:I = 0x11bbd

.field private static final SESSION_TASKS:I = 0x11bc0

.field private static final START:I = 0x11bb8

.field private static final TIMER_FIRED:I = 0x11bbf

.field private static final UPDATE_HANDLERS_STATUS:I = 0x11bbe


# instance fields
.field private final sessionHandlerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adjust/sdk/ActivityHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sessionHandler"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 365
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sessionHandlerReference:Ljava/lang/ref/WeakReference;

    .line 366
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 372
    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sessionHandlerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adjust/sdk/ActivityHandler;

    .line 373
    .local v4, "sessionHandler":Lcom/adjust/sdk/ActivityHandler;
    if-nez v4, :cond_0

    .line 418
    :goto_0
    return-void

    .line 377
    :cond_0
    iget v7, p1, Landroid/os/Message;->arg1:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 379
    :pswitch_0
    # invokes: Lcom/adjust/sdk/ActivityHandler;->initInternal()V
    invoke-static {v4}, Lcom/adjust/sdk/ActivityHandler;->access$000(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 382
    :pswitch_1
    # invokes: Lcom/adjust/sdk/ActivityHandler;->startInternal()V
    invoke-static {v4}, Lcom/adjust/sdk/ActivityHandler;->access$100(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 385
    :pswitch_2
    # invokes: Lcom/adjust/sdk/ActivityHandler;->endInternal()V
    invoke-static {v4}, Lcom/adjust/sdk/ActivityHandler;->access$200(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/adjust/sdk/AdjustEvent;

    .line 389
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    # invokes: Lcom/adjust/sdk/ActivityHandler;->trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V
    invoke-static {v4, v1}, Lcom/adjust/sdk/ActivityHandler;->access$300(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0

    .line 392
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/adjust/sdk/EventResponseData;

    .line 393
    .local v2, "eventResponseData":Lcom/adjust/sdk/EventResponseData;
    # invokes: Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasksInternal(Lcom/adjust/sdk/EventResponseData;)V
    invoke-static {v4, v2}, Lcom/adjust/sdk/ActivityHandler;->access$400(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    goto :goto_0

    .line 396
    .end local v2    # "eventResponseData":Lcom/adjust/sdk/EventResponseData;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;

    .line 397
    .local v6, "urlClickTime":Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    iget-object v7, v6, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;->url:Landroid/net/Uri;

    iget-wide v8, v6, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;->clickTime:J

    # invokes: Lcom/adjust/sdk/ActivityHandler;->readOpenUrlInternal(Landroid/net/Uri;J)V
    invoke-static {v4, v7, v8, v9}, Lcom/adjust/sdk/ActivityHandler;->access$500(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V

    goto :goto_0

    .line 400
    .end local v6    # "urlClickTime":Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;

    .line 401
    .local v3, "referrerClickTime":Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;
    iget-object v7, v3, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;->referrer:Ljava/lang/String;

    iget-wide v8, v3, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;->clickTime:J

    # invokes: Lcom/adjust/sdk/ActivityHandler;->sendReferrerInternal(Ljava/lang/String;J)V
    invoke-static {v4, v7, v8, v9}, Lcom/adjust/sdk/ActivityHandler;->access$600(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V

    goto :goto_0

    .line 404
    .end local v3    # "referrerClickTime":Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;
    :pswitch_7
    # invokes: Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusInternal()V
    invoke-static {v4}, Lcom/adjust/sdk/ActivityHandler;->access$700(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 407
    :pswitch_8
    # invokes: Lcom/adjust/sdk/ActivityHandler;->timerFiredInternal()V
    invoke-static {v4}, Lcom/adjust/sdk/ActivityHandler;->access$800(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    .line 410
    :pswitch_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/adjust/sdk/SessionResponseData;

    .line 411
    .local v5, "sessionResponseData":Lcom/adjust/sdk/SessionResponseData;
    # invokes: Lcom/adjust/sdk/ActivityHandler;->launchSessionResponseTasksInternal(Lcom/adjust/sdk/SessionResponseData;)V
    invoke-static {v4, v5}, Lcom/adjust/sdk/ActivityHandler;->access$900(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    goto :goto_0

    .line 414
    .end local v5    # "sessionResponseData":Lcom/adjust/sdk/SessionResponseData;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/adjust/sdk/AttributionResponseData;

    .line 415
    .local v0, "attributionResponseData":Lcom/adjust/sdk/AttributionResponseData;
    # invokes: Lcom/adjust/sdk/ActivityHandler;->launchAttributionResponseTasksInternal(Lcom/adjust/sdk/AttributionResponseData;)V
    invoke-static {v4, v0}, Lcom/adjust/sdk/ActivityHandler;->access$1000(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x11bb7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
