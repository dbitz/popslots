.class public final Lcom/helpshift/support/viewstructs/HSMsg;
.super Ljava/lang/Object;
.source "HSMsg.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public agentName:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public clickable:Ljava/lang/Boolean;

.field public date:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public inProgress:Ljava/lang/Boolean;

.field public invisible:Ljava/lang/Boolean;

.field public origin:Ljava/lang/String;

.field public screenshot:Ljava/lang/String;

.field public state:I

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "HelpShiftDebug"

    sput-object v0, Lcom/helpshift/support/viewstructs/HSMsg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "origin"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/String;
    .param p6, "invisible"    # Ljava/lang/Boolean;
    .param p7, "screenshot"    # Ljava/lang/String;
    .param p8, "state"    # I
    .param p9, "inProgress"    # Ljava/lang/Boolean;
    .param p10, "agentName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/support/viewstructs/HSMsg;->clickable:Ljava/lang/Boolean;

    .line 21
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    .line 22
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 23
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/helpshift/support/viewstructs/HSMsg;->agentName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/helpshift/support/viewstructs/HSMsg;->id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/helpshift/support/viewstructs/HSMsg;->type:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/helpshift/support/viewstructs/HSMsg;->origin:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/helpshift/support/viewstructs/HSMsg;->invisible:Ljava/lang/Boolean;

    .line 34
    iput-object p7, p0, Lcom/helpshift/support/viewstructs/HSMsg;->screenshot:Ljava/lang/String;

    .line 35
    iput p8, p0, Lcom/helpshift/support/viewstructs/HSMsg;->state:I

    .line 36
    iput-object p9, p0, Lcom/helpshift/support/viewstructs/HSMsg;->inProgress:Ljava/lang/Boolean;

    .line 37
    iput-object p4, p0, Lcom/helpshift/support/viewstructs/HSMsg;->body:Ljava/lang/String;

    .line 39
    const-string/jumbo v3, "admin"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {p10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/support/viewstructs/HSMsg;->agentName:Ljava/lang/String;

    .line 43
    :cond_0
    move-object v1, p5

    .line 44
    .local v1, "inputDate":Ljava/lang/String;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 47
    .local v2, "outputDate":Ljava/util/Date;
    :try_start_0
    sget-object v3, Lcom/helpshift/util/HSFormat;->inputMsgFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/helpshift/support/viewstructs/HSMsg;->agentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/helpshift/util/HSFormat;->outputMsgFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/helpshift/support/viewstructs/HSMsg;->date:Ljava/lang/String;

    .line 53
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/text/ParseException;
    sget-object v3, Lcom/helpshift/support/viewstructs/HSMsg;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
