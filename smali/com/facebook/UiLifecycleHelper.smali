.class public Lcom/facebook/UiLifecycleHelper;
.super Ljava/lang/Object;
.source "UiLifecycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/UiLifecycleHelper$1;,
        Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_NULL_MESSAGE:Ljava/lang/String; = "activity cannot be null"

.field private static final DIALOG_CALL_ID_SAVE_KEY:Ljava/lang/String; = "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private appEventsLogger:Lcom/facebook/AppEventsLogger;

.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final callback:Lcom/facebook/Session$StatusCallback;

.field private pendingFacebookDialogCallId:Ljava/util/UUID;

.field private pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    .line 75
    iput-object p2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    .line 76
    new-instance v0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/UiLifecycleHelper;Lcom/facebook/UiLifecycleHelper$1;)V

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 78
    invoke-static {}, Lcom/facebook/internal/PendingCallStore;->getInstance()Lcom/facebook/internal/PendingCallStore;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

    .line 81
    invoke-static {p1}, Lcom/facebook/Settings;->sdkInitialize(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/UiLifecycleHelper;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method private cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 6
    .param p1, "facebookDialogCallback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    .line 313
    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    if-nez v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

    iget-object v4, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lcom/facebook/internal/PendingCallStore;->getPendingCallById(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v1

    .line 319
    .local v1, "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    if-eqz v1, :cond_0

    .line 323
    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v2

    .line 326
    .local v2, "pendingIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.facebook.platform.protocol.CALL_ID"

    const-string/jumbo v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string/jumbo v3, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    const-string/jumbo v4, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string/jumbo v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const-string/jumbo v4, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string/jumbo v3, "com.facebook.platform.status.ERROR_TYPE"

    const-string/jumbo v4, "UnknownError"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v4

    invoke-static {v3, v1, v4, v0, p1}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 339
    .end local v0    # "cancelIntent":Landroid/content/Intent;
    .end local v2    # "pendingIntent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/UiLifecycleHelper;->stopTrackingPendingAppCall()V

    goto :goto_0
.end method

.method private handleFacebookDialogActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "facebookDialogCallback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v4, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    if-nez v4, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 282
    :cond_1
    iget-object v4, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

    iget-object v5, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Lcom/facebook/internal/PendingCallStore;->getPendingCallById(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v1

    .line 284
    .local v1, "pendingCall":Lcom/facebook/widget/FacebookDialog$PendingCall;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 288
    if-nez p3, :cond_2

    .line 291
    invoke-direct {p0, p4}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    move v2, v3

    .line 292
    goto :goto_0

    .line 295
    :cond_2
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v0

    .line 298
    .local v0, "callId":Ljava/util/UUID;
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    invoke-virtual {v2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-static {v2, v1, p1, p3, p4}, Lcom/facebook/widget/FacebookDialog;->handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    .line 308
    :goto_1
    invoke-direct {p0}, Lcom/facebook/UiLifecycleHelper;->stopTrackingPendingAppCall()V

    move v2, v3

    .line 309
    goto :goto_0

    .line 305
    :cond_3
    invoke-direct {p0, p4}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    goto :goto_1
.end method

.method private stopTrackingPendingAppCall()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/PendingCallStore;->stopTrackingPendingCall(Ljava/util/UUID;)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    .line 345
    return-void
.end method


# virtual methods
.method public getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 240
    .local v0, "session":Lcom/facebook/Session;
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/AppEventsLogger;->isValidForSession(Lcom/facebook/Session;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v1, :cond_2

    .line 248
    invoke-static {}, Lcom/facebook/AppEventsLogger;->onContextStop()V

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 142
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "facebookDialogCallback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    .line 155
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 156
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/facebook/internal/LikeActionController;->handleOnActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/UiLifecycleHelper;->handleFacebookDialogActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 91
    .local v1, "session":Lcom/facebook/Session;
    if-nez v1, :cond_2

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v2, v3, v4, p1}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v1

    .line 95
    :cond_0
    if-nez v1, :cond_1

    .line 96
    new-instance v1, Lcom/facebook/Session;

    .end local v1    # "session":Lcom/facebook/Session;
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 98
    .restart local v1    # "session":Lcom/facebook/Session;
    :cond_1
    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 100
    :cond_2
    if-eqz p1, :cond_4

    .line 101
    const-string/jumbo v2, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "callIdString":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 103
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

    invoke-virtual {v2, p1}, Lcom/facebook/internal/PendingCallStore;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 107
    .end local v0    # "callIdString":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 189
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 193
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 114
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 118
    :cond_0
    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 124
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v2, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/facebook/UiLifecycleHelper;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v3, p0, Lcom/facebook/UiLifecycleHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 131
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/Session;->saveSession(Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/PendingCallStore;->saveInstanceState(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 199
    invoke-static {}, Lcom/facebook/AppEventsLogger;->onContextStop()V

    .line 200
    return-void
.end method

.method public trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    .locals 2
    .param p1, "pendingCall"    # Lcom/facebook/widget/FacebookDialog$PendingCall;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 218
    const-string/jumbo v0, "Facebook"

    const-string/jumbo v1, "Tracking new app call while one is still pending; canceling pending call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/UiLifecycleHelper;->cancelPendingAppCall(Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 221
    :cond_0
    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallId:Ljava/util/UUID;

    .line 223
    iget-object v0, p0, Lcom/facebook/UiLifecycleHelper;->pendingFacebookDialogCallStore:Lcom/facebook/internal/PendingCallStore;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/PendingCallStore;->trackPendingCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V

    .line 225
    :cond_1
    return-void
.end method
