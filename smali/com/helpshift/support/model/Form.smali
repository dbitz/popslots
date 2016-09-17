.class public Lcom/helpshift/support/model/Form;
.super Ljava/lang/Object;
.source "Form.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final isFormValid:Z

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "isFormValid"    # Z

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/helpshift/support/model/Form;->description:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/helpshift/support/model/Form;->username:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/helpshift/support/model/Form;->email:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lcom/helpshift/support/model/Form;->isFormValid:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/helpshift/support/model/Form;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/helpshift/support/model/Form;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/helpshift/support/model/Form;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isFormValid()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/helpshift/support/model/Form;->isFormValid:Z

    return v0
.end method
