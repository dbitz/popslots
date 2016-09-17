.class public Lcom/helpshift/support/external/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lcom/helpshift/support/external/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "GN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "KN"

    aput-object v1, v0, v4

    const-string/jumbo v1, "PN"

    aput-object v1, v0, v5

    const-string/jumbo v1, "WR"

    aput-object v1, v0, v6

    const-string/jumbo v1, "PS"

    aput-object v1, v0, v7

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "L"

    aput-object v1, v0, v3

    const-string/jumbo v1, "R"

    aput-object v1, v0, v4

    const-string/jumbo v1, "N"

    aput-object v1, v0, v5

    const-string/jumbo v1, "M"

    aput-object v1, v0, v6

    const-string/jumbo v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 53
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ES"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "EB"

    aput-object v1, v0, v5

    const-string/jumbo v1, "EL"

    aput-object v1, v0, v6

    const-string/jumbo v1, "EY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "IB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "L"

    aput-object v1, v0, v3

    const-string/jumbo v1, "T"

    aput-object v1, v0, v4

    const-string/jumbo v1, "K"

    aput-object v1, v0, v5

    const-string/jumbo v1, "S"

    aput-object v1, v0, v6

    const-string/jumbo v1, "N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/support/external/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/helpshift/support/external/DoubleMetaphone;->maxCodeLen:I

    .line 68
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 885
    if-nez p1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-object v0

    .line 888
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 889
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 778
    const/4 v3, 0x4

    const-string/jumbo v4, "CHIA"

    invoke-static {p1, p2, v3, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 789
    :cond_0
    :goto_0
    return v1

    .line 780
    :cond_1
    if-le p2, v2, :cond_0

    .line 782
    add-int/lit8 v3, p2, -0x2

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x3

    const-string/jumbo v5, "ACH"

    invoke-static {p1, v3, v4, v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    .line 788
    .local v0, "c":C
    const/16 v3, 0x49

    if-eq v0, v3, :cond_2

    const/16 v3, 0x45

    if-ne v0, v3, :cond_3

    :cond_2
    add-int/lit8 v3, p2, -0x2

    const/4 v4, 0x6

    const-string/jumbo v5, "BACHER"

    const-string/jumbo v6, "MACHER"

    .line 789
    invoke-static {p1, v3, v4, v5, v6}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 797
    if-eqz p2, :cond_0

    move v0, v7

    .line 805
    :goto_0
    return v0

    .line 799
    :cond_0
    add-int/lit8 v0, p2, 0x1

    const-string/jumbo v1, "HARAC"

    const-string/jumbo v2, "HARIS"

    invoke-static {p1, v0, v8, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    const-string/jumbo v3, "HOR"

    const-string/jumbo v4, "HYM"

    const-string/jumbo v5, "HIA"

    const-string/jumbo v6, "HEM"

    move-object v0, p1

    .line 800
    invoke-static/range {v0 .. v6}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 801
    goto :goto_0

    .line 802
    :cond_1
    const-string/jumbo v0, "CHORE"

    invoke-static {p1, v7, v8, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 803
    goto :goto_0

    .line 805
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 813
    const/4 v0, 0x4

    const-string/jumbo v1, "VAN "

    const-string/jumbo v2, "VON "

    invoke-static {p1, v7, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string/jumbo v1, "SCH"

    invoke-static {p1, v7, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x6

    const-string/jumbo v3, "ORCHES"

    const-string/jumbo v4, "ARCHIT"

    const-string/jumbo v5, "ORCHID"

    move-object v0, p1

    .line 814
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x2

    const-string/jumbo v1, "T"

    const-string/jumbo v2, "S"

    .line 815
    invoke-static {p1, v0, v8, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, -0x1

    const-string/jumbo v3, "A"

    const-string/jumbo v4, "O"

    const-string/jumbo v5, "U"

    const-string/jumbo v6, "E"

    move-object v0, p1

    move v2, v8

    .line 816
    invoke-static/range {v0 .. v6}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    add-int/lit8 v0, p2, 0x2

    sget-object v1, Lcom/helpshift/support/external/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 817
    invoke-static {p1, v0, v8, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v8

    :goto_0
    return v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    .line 824
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    const-string/jumbo v3, "ILLO"

    const-string/jumbo v4, "ILLA"

    const-string/jumbo v5, "ALLE"

    move-object v0, p1

    .line 825
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 832
    :goto_0
    return v0

    .line 827
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x2

    const-string/jumbo v3, "AS"

    const-string/jumbo v4, "OS"

    invoke-static {p1, v0, v1, v3, v4}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "A"

    const-string/jumbo v3, "O"

    invoke-static {p1, v0, v6, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, p2, -0x1

    const-string/jumbo v1, "ALLE"

    .line 829
    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 830
    goto :goto_0

    .line 832
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 840
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_1

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 843
    :cond_1
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x3

    const-string/jumbo v3, "UMB"

    invoke-static {p1, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    const-string/jumbo v3, "ER"

    invoke-static {p1, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # Ljava/lang/String;

    .prologue
    .line 911
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;

    .prologue
    .line 919
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;

    .prologue
    .line 927
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;

    .prologue
    .line 936
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;

    .prologue
    .line 947
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;
    .param p8, "criteria6"    # Ljava/lang/String;

    .prologue
    .line 959
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    const/4 v1, 0x5

    aput-object p8, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    .prologue
    .line 970
    const/4 v1, 0x0

    .line 971
    .local v1, "result":Z
    if-ltz p1, :cond_0

    add-int v3, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 972
    add-int v3, p1, p2

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, "target":Ljava/lang/String;
    array-length v4, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p3, v3

    .line 975
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 976
    const/4 v1, 0x1

    .line 981
    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return v1

    .line 974
    .restart local v0    # "element":Ljava/lang/String;
    .restart local v2    # "target":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private handleAEIOUY(Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p2, "index"    # I

    .prologue
    .line 271
    if-nez p2, :cond_0

    .line 272
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 274
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x58

    const/16 v7, 0x4b

    const/16 v6, 0x53

    const/4 v2, 0x2

    .line 281
    invoke-direct {p0, p1, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 283
    add-int/lit8 p3, p3, 0x2

    :goto_0
    move v0, p3

    .line 326
    :goto_1
    return v0

    .line 284
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x6

    const-string/jumbo v1, "CAESAR"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p2, v6}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 286
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 287
    :cond_1
    const-string/jumbo v0, "CH"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->handleCH(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto :goto_0

    .line 289
    :cond_2
    const-string/jumbo v0, "CZ"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x4

    const-string/jumbo v3, "WICZ"

    .line 290
    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 292
    invoke-virtual {p2, v6, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 293
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 294
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string/jumbo v3, "CIA"

    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    invoke-virtual {p2, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 297
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 298
    :cond_4
    const-string/jumbo v0, "CC"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p3, v9, :cond_5

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    .line 301
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->handleCC(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    goto :goto_1

    .line 302
    :cond_6
    const-string/jumbo v3, "CK"

    const-string/jumbo v4, "CG"

    const-string/jumbo v5, "CQ"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 303
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 304
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 305
    :cond_7
    const-string/jumbo v3, "CI"

    const-string/jumbo v4, "CE"

    const-string/jumbo v5, "CY"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 307
    const/4 v2, 0x3

    const-string/jumbo v3, "CIO"

    const-string/jumbo v4, "CIE"

    const-string/jumbo v5, "CIA"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 308
    invoke-virtual {p2, v6, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 312
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 310
    :cond_8
    invoke-virtual {p2, v6}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 314
    :cond_9
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 315
    add-int/lit8 v1, p3, 0x1

    const-string/jumbo v3, " C"

    const-string/jumbo v4, " Q"

    const-string/jumbo v5, " G"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 317
    add-int/lit8 p3, p3, 0x3

    goto/16 :goto_0

    .line 318
    :cond_a
    add-int/lit8 v4, p3, 0x1

    const-string/jumbo v6, "C"

    const-string/jumbo v7, "K"

    const-string/jumbo v8, "Q"

    move-object v3, p1

    move v5, v9

    invoke-static/range {v3 .. v8}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "CE"

    const-string/jumbo v3, "CI"

    .line 319
    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 320
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 322
    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleCC(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 333
    add-int/lit8 v1, p3, 0x2

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "H"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string/jumbo v3, "HU"

    .line 334
    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    if-ne p3, v2, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    const-string/jumbo v2, "UCCEE"

    const-string/jumbo v3, "UCCES"

    .line 337
    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    :cond_1
    const-string/jumbo v0, "KS"

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 344
    :goto_0
    add-int/lit8 p3, p3, 0x3

    .line 350
    :goto_1
    return p3

    .line 342
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 346
    :cond_3
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 347
    add-int/lit8 p3, p3, 0x2

    goto :goto_1
.end method

.method private handleCH(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v4, 0x58

    const/16 v3, 0x4b

    .line 357
    if-lez p3, :cond_0

    const/4 v0, 0x4

    const-string/jumbo v1, "CHAE"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p2, v3, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 359
    add-int/lit8 v0, p3, 0x2

    .line 378
    :goto_0
    return v0

    .line 360
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p2, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 363
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 364
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p2, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 367
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 369
    :cond_2
    if-lez p3, :cond_4

    .line 370
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string/jumbo v2, "MC"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    invoke-virtual {p2, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 378
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p2, v4, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 376
    :cond_4
    invoke-virtual {p2, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleD(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v3, 0x54

    const/4 v2, 0x2

    .line 386
    const-string/jumbo v0, "DG"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 390
    add-int/lit8 p3, p3, 0x3

    .line 403
    :goto_0
    return p3

    .line 393
    :cond_0
    const-string/jumbo v0, "TK"

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 394
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 396
    :cond_1
    const-string/jumbo v0, "DT"

    const-string/jumbo v1, "DD"

    invoke-static {p1, p3, v2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p2, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 398
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 400
    :cond_2
    invoke-virtual {p2, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 401
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private handleG(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    .line 410
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 411
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->handleGH(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    .line 460
    :goto_0
    return p3

    .line 412
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3

    .line 413
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 414
    const-string/jumbo v0, "KN"

    const-string/jumbo v1, "N"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 415
    :cond_1
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string/jumbo v2, "EY"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    .line 416
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_2

    if-nez p4, :cond_2

    .line 417
    const-string/jumbo v0, "N"

    const-string/jumbo v1, "KN"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :cond_2
    const-string/jumbo v0, "KN"

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "LI"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 423
    const-string/jumbo v0, "KL"

    const-string/jumbo v1, "L"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 425
    :cond_4
    if-nez p3, :cond_6

    add-int/lit8 v0, p3, 0x1

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    sget-object v2, Lcom/helpshift/support/external/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 427
    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    :cond_5
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 430
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 431
    :cond_6
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "ER"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, p3, 0x1

    .line 432
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string/jumbo v3, "DANGER"

    const-string/jumbo v4, "RANGER"

    const-string/jumbo v5, "MANGER"

    move-object v0, p1

    .line 433
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "E"

    const-string/jumbo v3, "I"

    .line 434
    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x3

    const-string/jumbo v2, "RGY"

    const-string/jumbo v3, "OGY"

    .line 435
    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 437
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 438
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 439
    :cond_8
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    const-string/jumbo v3, "E"

    const-string/jumbo v4, "I"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x4

    const-string/jumbo v2, "AGGI"

    const-string/jumbo v3, "OGGI"

    .line 440
    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 442
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string/jumbo v2, "VAN "

    const-string/jumbo v3, "VON "

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string/jumbo v2, "SCH"

    .line 443
    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "ET"

    .line 444
    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 446
    :cond_a
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 452
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    .line 447
    :cond_b
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string/jumbo v2, "IER"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 448
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 450
    :cond_c
    const/16 v0, 0x4a

    const/16 v1, 0x4b

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 453
    :cond_d
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_e

    .line 454
    add-int/lit8 p3, p3, 0x2

    .line 455
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0

    .line 457
    :cond_e
    add-int/lit8 p3, p3, 0x1

    .line 458
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto/16 :goto_0
.end method

.method private handleGH(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v9, 0x49

    const/4 v6, 0x2

    const/16 v8, 0x4b

    const/4 v2, 0x1

    .line 467
    if-lez p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p2, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 469
    add-int/lit8 p3, p3, 0x2

    .line 492
    :goto_0
    return p3

    .line 470
    :cond_0
    if-nez p3, :cond_2

    .line 471
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v9, :cond_1

    .line 472
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 476
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {p2, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 477
    :cond_2
    if-le p3, v2, :cond_3

    add-int/lit8 v1, p3, -0x2

    const-string/jumbo v3, "B"

    const-string/jumbo v4, "H"

    const-string/jumbo v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-le p3, v6, :cond_4

    add-int/lit8 v1, p3, -0x3

    const-string/jumbo v3, "B"

    const-string/jumbo v4, "H"

    const-string/jumbo v5, "D"

    move-object v0, p1

    .line 478
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    if-le p3, v0, :cond_6

    add-int/lit8 v0, p3, -0x4

    const-string/jumbo v1, "B"

    const-string/jumbo v3, "H"

    .line 479
    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 481
    :cond_5
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 483
    :cond_6
    if-le p3, v6, :cond_8

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_8

    add-int/lit8 v1, p3, -0x3

    const-string/jumbo v3, "C"

    const-string/jumbo v4, "G"

    const-string/jumbo v5, "L"

    const-string/jumbo v6, "R"

    const-string/jumbo v7, "T"

    move-object v0, p1

    .line 484
    invoke-static/range {v0 .. v7}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 486
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 490
    :cond_7
    :goto_2
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 487
    :cond_8
    if-lez p3, :cond_7

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-eq v0, v9, :cond_7

    .line 488
    invoke-virtual {p2, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2
.end method

.method private handleH(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    .line 500
    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 501
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 503
    add-int/lit8 p3, p3, 0x2

    .line 508
    :goto_0
    return p3

    .line 506
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method private handleJ(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x48

    const/4 v3, 0x4

    const/16 v6, 0x4a

    .line 515
    const-string/jumbo v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    :cond_0
    if-nez p3, :cond_1

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 518
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string/jumbo v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    :cond_2
    invoke-virtual {p2, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 523
    :goto_0
    add-int/lit8 p3, p3, 0x1

    .line 543
    :goto_1
    return p3

    .line 521
    :cond_3
    invoke-virtual {p2, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 525
    :cond_4
    if-nez p3, :cond_6

    const-string/jumbo v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 526
    const/16 v0, 0x41

    invoke-virtual {p2, v6, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 537
    :cond_5
    :goto_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v6, :cond_a

    .line 538
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 527
    :cond_6
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    add-int/lit8 v0, p3, 0x1

    .line 528
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_8

    .line 529
    :cond_7
    invoke-virtual {p2, v6, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 530
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_9

    .line 531
    const/16 v0, 0x20

    invoke-virtual {p2, v6, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 532
    :cond_9
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lcom/helpshift/support/external/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v1, p3, -0x1

    const-string/jumbo v3, "S"

    const-string/jumbo v4, "K"

    const-string/jumbo v5, "L"

    move-object v0, p1

    .line 533
    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 534
    invoke-virtual {p2, v6}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 540
    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleL(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v1, 0x4c

    .line 550
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 551
    invoke-direct {p0, p1, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p2, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    .line 556
    :goto_0
    add-int/lit8 p3, p3, 0x2

    .line 561
    :goto_1
    return p3

    .line 554
    :cond_0
    invoke-virtual {p2, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 558
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 559
    invoke-virtual {p2, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1
.end method

.method private handleP(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    .line 568
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 569
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 570
    add-int/lit8 p3, p3, 0x2

    .line 575
    :goto_0
    return p3

    .line 572
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 573
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "P"

    const-string/jumbo v3, "B"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, 0x2

    :goto_1
    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleR(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0x52

    .line 582
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x2

    const-string/jumbo v1, "IE"

    .line 583
    invoke-static {p1, v0, v4, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x4

    const-string/jumbo v1, "ME"

    const-string/jumbo v2, "MA"

    .line 584
    invoke-static {p1, v0, v4, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p2, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 589
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, p3, 0x2

    :goto_1
    return v0

    .line 587
    :cond_0
    invoke-virtual {p2, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 589
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private handleS(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x58

    const/4 v2, 0x1

    const/16 v7, 0x53

    .line 596
    add-int/lit8 v0, p3, -0x1

    const-string/jumbo v1, "ISL"

    const-string/jumbo v3, "YSL"

    invoke-static {p1, v0, v4, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    add-int/lit8 p3, p3, 0x1

    .line 638
    :goto_0
    return p3

    .line 599
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x5

    const-string/jumbo v1, "SUGAR"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p2, v8, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 602
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 603
    :cond_1
    const-string/jumbo v0, "SH"

    invoke-static {p1, p3, v9, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 604
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x4

    const-string/jumbo v3, "HEIM"

    const-string/jumbo v4, "HOEK"

    const-string/jumbo v5, "HOLM"

    const-string/jumbo v6, "HOLZ"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 610
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {p2, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 611
    :cond_3
    const-string/jumbo v0, "SIO"

    const-string/jumbo v1, "SIA"

    invoke-static {p1, p3, v4, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    const-string/jumbo v1, "SIAN"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 613
    :cond_4
    if-eqz p4, :cond_5

    .line 614
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 618
    :goto_2
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 616
    :cond_5
    invoke-virtual {p2, v7, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_2

    .line 619
    :cond_6
    if-nez p3, :cond_7

    add-int/lit8 v1, p3, 0x1

    const-string/jumbo v3, "M"

    const-string/jumbo v4, "N"

    const-string/jumbo v5, "L"

    const-string/jumbo v6, "W"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "Z"

    .line 620
    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 625
    :cond_8
    invoke-virtual {p2, v7, v8}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 626
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 p3, p3, 0x2

    :goto_3
    goto/16 :goto_0

    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 627
    :cond_a
    const-string/jumbo v0, "SC"

    invoke-static {p1, p3, v9, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 628
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->handleSC(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto/16 :goto_0

    .line 630
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_c

    add-int/lit8 v0, p3, -0x2

    const-string/jumbo v1, "AI"

    const-string/jumbo v3, "OI"

    invoke-static {p1, v0, v9, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 632
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 636
    :goto_4
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "S"

    const-string/jumbo v3, "Z"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 p3, p3, 0x2

    :goto_5
    goto/16 :goto_0

    .line 634
    :cond_c
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 636
    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_5
.end method

.method private handleSC(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v11, 0x58

    const/16 v10, 0x53

    const/4 v9, 0x3

    const/4 v2, 0x2

    .line 645
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 647
    add-int/lit8 v1, p3, 0x3

    const-string/jumbo v3, "OO"

    const-string/jumbo v4, "ER"

    const-string/jumbo v5, "EN"

    const-string/jumbo v6, "UY"

    const-string/jumbo v7, "ED"

    const-string/jumbo v8, "EM"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    add-int/lit8 v0, p3, 0x3

    const-string/jumbo v1, "ER"

    const-string/jumbo v3, "EN"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string/jumbo v0, "X"

    const-string/jumbo v1, "SK"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0

    .line 653
    :cond_0
    const-string/jumbo v0, "SK"

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v9}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    .line 657
    invoke-virtual {p2, v11, v10}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 659
    :cond_2
    invoke-virtual {p2, v11}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 662
    :cond_3
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 663
    invoke-virtual {p2, v10}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 665
    :cond_4
    const-string/jumbo v0, "SK"

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleT(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x54

    const/4 v3, 0x3

    .line 674
    const-string/jumbo v0, "TION"

    invoke-static {p1, p3, v7, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 676
    add-int/lit8 p3, p3, 0x3

    .line 694
    :goto_0
    return p3

    .line 677
    :cond_0
    const-string/jumbo v0, "TIA"

    const-string/jumbo v1, "TCH"

    invoke-static {p1, p3, v3, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 679
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 680
    :cond_1
    const-string/jumbo v0, "TH"

    invoke-static {p1, p3, v6, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TTH"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 681
    :cond_2
    add-int/lit8 v0, p3, 0x2

    const-string/jumbo v1, "OM"

    const-string/jumbo v2, "AM"

    invoke-static {p1, v0, v6, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "VAN "

    const-string/jumbo v1, "VON "

    .line 683
    invoke-static {p1, v5, v7, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "SCH"

    .line 684
    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 685
    :cond_3
    invoke-virtual {p2, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 689
    :goto_1
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 687
    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_1

    .line 691
    :cond_5
    invoke-virtual {p2, v4}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 692
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "T"

    const-string/jumbo v3, "D"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p3, p3, 0x2

    :goto_2
    goto :goto_0

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method private handleW(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    const/16 v7, 0x46

    const/16 v2, 0x41

    const/4 v1, 0x2

    .line 701
    const-string/jumbo v0, "WR"

    invoke-static {p1, p3, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 704
    add-int/lit8 p3, p3, 0x2

    .line 730
    :goto_0
    return p3

    .line 706
    :cond_0
    if-nez p3, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "WH"

    .line 707
    invoke-static {p1, p3, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p2, v2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 715
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 713
    :cond_2
    invoke-virtual {p2, v2}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 716
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_4

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x5

    const-string/jumbo v3, "EWSKI"

    const-string/jumbo v4, "EWSKY"

    const-string/jumbo v5, "OWSKI"

    const-string/jumbo v6, "OWSKY"

    move-object v0, p1

    .line 717
    invoke-static/range {v0 .. v6}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string/jumbo v2, "SCH"

    .line 718
    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 720
    :cond_5
    invoke-virtual {p2, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 721
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 722
    :cond_6
    const/4 v0, 0x4

    const-string/jumbo v1, "WICZ"

    const-string/jumbo v2, "WITZ"

    invoke-static {p1, p3, v0, v1, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 724
    const-string/jumbo v0, "TS"

    const-string/jumbo v1, "FX"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    add-int/lit8 p3, p3, 0x4

    goto/16 :goto_0

    .line 727
    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method

.method private handleX(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .prologue
    .line 737
    if-nez p3, :cond_0

    .line 738
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 739
    add-int/lit8 p3, p3, 0x1

    .line 749
    :goto_0
    return p3

    .line 741
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x3

    const-string/jumbo v2, "IAU"

    const-string/jumbo v3, "EAU"

    .line 742
    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x2

    const-string/jumbo v2, "AU"

    const-string/jumbo v3, "OU"

    .line 743
    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    :cond_1
    const-string/jumbo v0, "KS"

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 747
    :cond_2
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "C"

    const-string/jumbo v3, "X"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, 0x2

    :goto_1
    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private handleZ(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .prologue
    .line 756
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 758
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 759
    add-int/lit8 p3, p3, 0x2

    .line 769
    :goto_0
    return p3

    .line 761
    :cond_0
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    const-string/jumbo v3, "ZO"

    const-string/jumbo v4, "ZI"

    const-string/jumbo v5, "ZA"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/support/external/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    .line 762
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    .line 763
    :cond_1
    const-string/jumbo v0, "S"

    const-string/jumbo v1, "TS"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    add-int/lit8 p3, p3, 0x2

    :goto_2
    goto :goto_0

    .line 765
    :cond_2
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 767
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 871
    const/4 v1, 0x0

    .line 872
    .local v1, "result":Z
    sget-object v3, Lcom/helpshift/support/external/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 873
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 874
    const/4 v1, 0x1

    .line 878
    .end local v0    # "element":Ljava/lang/String;
    :cond_0
    return v1

    .line 872
    .restart local v0    # "element":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 854
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "CZ"

    .line 855
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVowel(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 862
    const-string/jumbo v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 901
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 902
    :cond_0
    const/4 v0, 0x0

    .line 904
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    .prologue
    const/16 v7, 0x4e

    const/16 v6, 0x4b

    const/16 v5, 0x46

    .line 88
    invoke-direct {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v3, 0x0

    .line 191
    :goto_0
    return-object v3

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v2

    .line 94
    .local v2, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 96
    .local v0, "index":I
    :goto_1
    new-instance v1, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lcom/helpshift/support/external/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lcom/helpshift/support/external/DoubleMetaphone;I)V

    .line 98
    .local v1, "result":Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_2
    invoke-virtual {v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_9

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    goto :goto_2

    .line 94
    .end local v0    # "index":I
    .end local v1    # "result":Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 106
    .restart local v0    # "index":I
    .restart local v1    # "result":Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;
    :sswitch_0
    invoke-direct {p0, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleAEIOUY(Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 107
    goto :goto_2

    .line 109
    :sswitch_1
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 110
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 111
    :goto_3
    goto :goto_2

    .line 110
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 114
    :sswitch_2
    const/16 v3, 0x53

    invoke-virtual {v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    goto :goto_2

    .line 118
    :sswitch_3
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleC(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 119
    goto :goto_2

    .line 121
    :sswitch_4
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleD(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 122
    goto :goto_2

    .line 124
    :sswitch_5
    invoke-virtual {v1, v5}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 125
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v5, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 126
    :goto_4
    goto :goto_2

    .line 125
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 128
    :sswitch_6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->handleG(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 129
    goto :goto_2

    .line 131
    :sswitch_7
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleH(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 132
    goto :goto_2

    .line 134
    :sswitch_8
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->handleJ(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 135
    goto :goto_2

    .line 137
    :sswitch_9
    invoke-virtual {v1, v6}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 138
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v6, :cond_4

    add-int/lit8 v0, v0, 0x2

    .line 139
    :goto_5
    goto :goto_2

    .line 138
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 141
    :sswitch_a
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleL(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 142
    goto :goto_2

    .line 144
    :sswitch_b
    const/16 v3, 0x4d

    invoke-virtual {v1, v3}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 146
    :goto_6
    goto/16 :goto_2

    .line 145
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 148
    :sswitch_c
    invoke-virtual {v1, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 149
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v7, :cond_6

    add-int/lit8 v0, v0, 0x2

    .line 150
    :goto_7
    goto/16 :goto_2

    .line 149
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 153
    :sswitch_d
    invoke-virtual {v1, v7}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    goto/16 :goto_2

    .line 157
    :sswitch_e
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleP(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 158
    goto/16 :goto_2

    .line 160
    :sswitch_f
    invoke-virtual {v1, v6}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 161
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x51

    if-ne v3, v4, :cond_7

    add-int/lit8 v0, v0, 0x2

    .line 162
    :goto_8
    goto/16 :goto_2

    .line 161
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 164
    :sswitch_10
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->handleR(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 165
    goto/16 :goto_2

    .line 167
    :sswitch_11
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->handleS(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 168
    goto/16 :goto_2

    .line 170
    :sswitch_12
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleT(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 171
    goto/16 :goto_2

    .line 173
    :sswitch_13
    invoke-virtual {v1, v5}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 174
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/helpshift/support/external/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_8

    add-int/lit8 v0, v0, 0x2

    .line 175
    :goto_9
    goto/16 :goto_2

    .line 174
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 177
    :sswitch_14
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleW(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 178
    goto/16 :goto_2

    .line 180
    :sswitch_15
    invoke-direct {p0, p1, v1, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->handleX(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    .line 181
    goto/16 :goto_2

    .line 183
    :sswitch_16
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/helpshift/support/external/DoubleMetaphone;->handleZ(Ljava/lang/String;Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v0

    .line 184
    goto/16 :goto_2

    .line 191
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/helpshift/support/external/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_0
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x48 -> :sswitch_7
        0x49 -> :sswitch_0
        0x4a -> :sswitch_8
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_c
        0x4f -> :sswitch_0
        0x50 -> :sswitch_e
        0x51 -> :sswitch_f
        0x52 -> :sswitch_10
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x55 -> :sswitch_0
        0x56 -> :sswitch_13
        0x57 -> :sswitch_14
        0x58 -> :sswitch_15
        0x59 -> :sswitch_0
        0x5a -> :sswitch_16
        0xc7 -> :sswitch_2
        0xd1 -> :sswitch_d
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/support/external/EncoderException;
        }
    .end annotation

    .prologue
    .line 204
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/helpshift/support/external/EncoderException;

    const-string/jumbo v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lcom/helpshift/support/external/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/helpshift/support/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/helpshift/support/external/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/support/external/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    .prologue
    .line 246
    invoke-virtual {p0, p1, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/helpshift/support/external/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/helpshift/support/external/DoubleMetaphone;->maxCodeLen:I

    .line 263
    return-void
.end method
