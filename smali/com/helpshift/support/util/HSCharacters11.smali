.class public Lcom/helpshift/support/util/HSCharacters11;
.super Ljava/lang/Object;
.source "HSCharacters11.java"


# instance fields
.field characters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/16 v9, 0x9b

    const/16 v8, 0x9a

    const/16 v7, 0x99

    const/16 v6, 0x98

    const/16 v5, 0x97

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Mu "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Pei "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Weng "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Tun "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Deng "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Kao "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Niu "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Sa "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Zu "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Da "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Ban "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Tomo "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Hen "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Kohaze "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Da "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Sui "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Tiao "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Qiao "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Xuan "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Kong "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Beng "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Ta "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Kuo "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "La "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Rou "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Bang "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Mu "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "On "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Gou "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Ta "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Pan "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Kuo "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Lou "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Jiang "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Da "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Wa "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Lan "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Rou "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "She "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Gou "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Wa "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Za "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Heng "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Pan "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Shun "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Hang "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Ban "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Dun "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Pan "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Po "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Ce "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Dui "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Tou "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Pin "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Chui "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Cui "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Sai "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Kan "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Sang "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Jiang "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Ku "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Rao "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Pin "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Lan "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Nie "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Shun "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Dun "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Ban "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Hang "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Po "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Pin "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Ke "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Ti "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Yong "

    aput-object v3, v2, v7

    const-string/jumbo v3, "E "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Zhuan "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Nie "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Sang "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Pin "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Oroshi "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Sa "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Kai "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Sao "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Se "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Sa "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Sun "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Tun "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Sun "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Zhai "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Tie "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Nei "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Guo "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Zhui "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Tan "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Nuan "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Tie "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Rao "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Zuan "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Tun "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Rao "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Nei "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Guo "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Shou "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Kui "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Guo "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Xiang "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Fen "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Ba "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Pei "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Ri "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Sa "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Zhao "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Nu "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Zang "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Rong "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Teng "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Shuu "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Mang "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Zhui "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "She "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Sao "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Cong "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Rou "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Teng "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Cao "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Sao "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Cong "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Hua "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Dun "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Zeng "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Tan "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Tie "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Teng "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Huan "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Ri "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Zang "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Nu "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Hua "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Zhui "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Pian "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Zhi "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Kui "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Sao "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Wu "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Cong "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Ang "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Tou "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Ku "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Gou "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Kua "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Geng "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Ka "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Sui "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Lou "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Kuan "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Lou "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Nao "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Zang "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Sui "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Kuan "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Kao "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Zao "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Ran "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Fa "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Tiao "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Fa "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Ran "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Rong "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Zhua "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Zheng "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Shun "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "La "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Seng "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Huan "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Ning "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Rang "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Nao "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Shang "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Po "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Wang "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Dao "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Eri "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Hang "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Tun "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Za "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Namazu "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Todo "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Gun "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Kajika "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Tong "

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Ta "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Jie "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Shu "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Tiao "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Bora "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Mate "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Kao "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Gori "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Za "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Nei "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Zhe "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Gun "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Geng "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Ugui "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Asari "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Subashiri "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Kazunoko "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Nei "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Chun "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Qie "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Lun "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Shachi "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Dojou "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Sukesou "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "La "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    const/16 v1, 0x9c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Huan "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Ze "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Qun "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Rou "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Die "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Sai "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Muroaji "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Ruo "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Haraka "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Sao "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Z "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Teng "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Ta "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Rong "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Ruo "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Hatahata "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Tiao "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Sao "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Jiang "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Kang "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Bie "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Zun "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Miao "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Eso "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Kyou "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Zei "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Sao "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Hatahata "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Shiira "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Mutsu "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Shiira "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Mie "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Dao "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Tun "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Kao "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Ze "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Hou "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Kuai "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Ji "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Jiao "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Za "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Geng "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Tiao "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Gun "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Die "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Sai "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Jiang "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Sao "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Ta "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Bie "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Zun "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Niao "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Nio "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Ming "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    const/16 v1, 0x9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Fou "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Yiao "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Huan "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Zheng "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Te "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Nu "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Mie "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Rong "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Tie "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Shigi "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Zhui "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Heng "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Mou "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Chidori "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Toki "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Ten "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Luan "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Huan "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Ikaruga "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Kakesu "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Zhao "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Que "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Zhui "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Kong "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Zhui "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Chun "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Geng "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Isuka "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Kikuitadaki "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Miao "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Rou "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Ti "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Hu "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Ti "

    aput-object v3, v2, v7

    const-string/jumbo v3, "E "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Jie "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Chun "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Pian "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Dun "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Mu "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Tsugumi "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Weng "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Ruo "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Zhun "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Kou "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Zhe "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Rong "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Lou "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Zhuo "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Hua "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Kao "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Zun "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Tuan "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    const/16 v1, 0x9e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Zhe "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Ning "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Yue "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Yue "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Luan "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Niao "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Ming "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Heng "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Luan "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Que "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Miao "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Chun "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Geng "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Mu "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Weng "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Zhe "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Cuo "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Cuo "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Cu "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Cu "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Li "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Xiang "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Yan "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Jia "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Mi "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "She "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Cu "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Chao "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Mou "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Nen "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Guang "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Tou "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Heng "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Heng "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Hei "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Hei "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Tuan "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Dang "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Tan "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    const/16 v1, 0x9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Cu "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Chao "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Wa "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Mang "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Bie "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Chao "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Nai "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Teng "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Weng "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Zhai "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Ken "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Cuo "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Tiao "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Ken "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Nie "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Chuo "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Kun "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Cuo "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Nen "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Wo "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Chuo "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Zou "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Ken "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Tiao "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Ken "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Chuo "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Wo "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Kan "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Ta "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Ling "

    aput-object v3, v2, v5

    const-string/jumbo v3, "Ta "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Long "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Gong "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Kan "

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Bie "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Yue "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Chui "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "it"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ix"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "ip"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "iet"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "iex"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "ie"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "iep"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "at"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "ax"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "ap"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "uox"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "uo"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "uop"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "ot"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ox"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "op"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "ex"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "wu"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "bit"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "bix"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "bi"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "bip"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "biet"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "biex"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "bie"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "biep"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "bat"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "bax"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "ba"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "bap"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "buox"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "buo"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "buop"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "bot"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "box"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "bo"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "bop"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "bex"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "be"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "bep"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "but"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "bux"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "bu"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "bup"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "burx"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "bur"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "byt"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "byx"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "by"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "byp"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "byrx"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "byr"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "pit"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "pix"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "pip"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "piex"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "pie"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "piep"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "pat"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "pax"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "pap"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "puox"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "puo"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "puop"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "pot"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "pox"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "po"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "pop"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "put"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "pux"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "pu"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "pup"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "purx"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "pur"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "pyt"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "pyx"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "py"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "pyp"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "pyrx"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "pyr"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "bbit"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "bbix"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "bbi"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "bbip"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "bbiet"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "bbiex"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "bbie"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "bbiep"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "bbat"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "bbax"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "bba"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "bbap"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "bbuox"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "bbuo"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "bbuop"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "bbot"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "bbox"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "bbo"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "bbop"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "bbex"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "bbe"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "bbep"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "bbut"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "bbux"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "bbu"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "bbup"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "bburx"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "bbur"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "bbyt"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "bbyx"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "bby"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "bbyp"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "nbit"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "nbix"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "nbi"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "nbip"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "nbiex"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "nbie"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "nbiep"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "nbat"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "nbax"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "nba"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "nbap"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "nbot"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "nbox"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "nbo"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "nbop"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "nbut"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "nbux"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "nbu"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "nbup"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "nburx"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "nbur"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "nbyt"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "nbyx"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "nby"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "nbyp"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "nbyrx"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "nbyr"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "hmit"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "hmix"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "hmi"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "hmip"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "hmiex"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "hmie"

    aput-object v4, v2, v3

    const-string/jumbo v3, "hmiep"

    aput-object v3, v2, v5

    const-string/jumbo v3, "hmat"

    aput-object v3, v2, v6

    const-string/jumbo v3, "hmax"

    aput-object v3, v2, v7

    const-string/jumbo v3, "hma"

    aput-object v3, v2, v8

    const-string/jumbo v3, "hmap"

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "hmuox"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "hmuo"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "hmuop"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "hmot"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "hmox"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "hmo"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "hmop"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "hmut"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "hmux"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "hmu"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "hmup"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "hmurx"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "hmur"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "hmyx"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "hmy"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "hmyp"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "hmyrx"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "hmyr"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "mit"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "mix"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "mip"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "miex"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "mie"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "miep"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "mat"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "max"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "map"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "muot"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "muox"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "muo"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "muop"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "mot"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "mox"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "mop"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "mex"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "mut"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "mux"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "mup"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "murx"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "mur"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "myt"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "myx"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "my"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "myp"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "fit"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "fix"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "fi"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "fip"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "fat"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "fax"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "fa"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "fap"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "fox"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "fo"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "fop"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "fut"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "fux"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "fu"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "fup"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "furx"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "fur"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "fyt"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "fyx"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "fy"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "fyp"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "vit"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "vix"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "vi"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "vip"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "viet"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "viex"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "vie"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "viep"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "vat"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "vax"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "va"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "vap"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "vot"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "vox"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "vo"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "vop"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "vex"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "vep"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "vut"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "vux"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "vu"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "vup"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "vurx"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "vur"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "vyt"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "vyx"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "vy"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "vyp"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "vyrx"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "vyr"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    const/16 v1, 0xa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "dit"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "dix"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "di"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "dip"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "diex"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "die"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "diep"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "dat"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "dax"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "da"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "dap"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "duox"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "duo"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "dot"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "dox"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "do"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "dop"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "dex"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "de"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "dep"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "dut"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "dux"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "du"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "dup"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "durx"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "dur"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "tit"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "tix"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "tip"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "tiex"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tie"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tiep"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "tat"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "tax"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "tap"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "tuot"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "tuox"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "tuo"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "tuop"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "tot"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "tox"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "top"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "tex"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "tep"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "tut"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "tux"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "tu"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "tup"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "turx"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "tur"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "ddit"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "ddix"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "ddi"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "ddip"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "ddiex"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "ddie"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "ddiep"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "ddat"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "ddax"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "dda"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "ddap"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "dduox"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "dduo"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "dduop"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "ddot"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "ddox"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "ddo"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "ddop"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "ddex"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "dde"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "ddep"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "ddut"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "ddux"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "ddu"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "ddup"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "ddurx"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "ddur"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "ndit"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "ndix"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "ndi"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "ndip"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "ndiex"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "ndie"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "ndat"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "ndax"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "nda"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "ndap"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "ndot"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "ndox"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "ndo"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "ndop"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "ndex"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "nde"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "ndep"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "ndut"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "ndux"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "ndu"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "ndup"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "ndurx"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "ndur"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "hnit"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "hnix"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "hni"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "hnip"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "hniet"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "hniex"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "hnie"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "hniep"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "hnat"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "hnax"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "hna"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "hnap"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "hnuox"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "hnuo"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "hnot"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "hnox"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "hnop"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "hnex"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "hne"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "hnep"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "hnut"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "nit"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "nix"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "nip"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "niex"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "nie"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "niep"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "nax"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "nap"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "nuox"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "nuo"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "nuop"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "not"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "nox"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "nop"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "nex"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "nep"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "nut"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "nux"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "nup"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "nurx"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "nur"

    aput-object v4, v2, v3

    const-string/jumbo v3, "hlit"

    aput-object v3, v2, v5

    const-string/jumbo v3, "hlix"

    aput-object v3, v2, v6

    const-string/jumbo v3, "hli"

    aput-object v3, v2, v7

    const-string/jumbo v3, "hlip"

    aput-object v3, v2, v8

    const-string/jumbo v3, "hliex"

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "hlie"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "hliep"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "hlat"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "hlax"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "hla"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "hlap"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "hluox"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "hluo"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "hluop"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "hlox"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "hlo"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "hlop"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "hlex"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "hle"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "hlep"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "hlut"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "hlux"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "hlu"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "hlup"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "hlurx"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "hlur"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "hlyt"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "hlyx"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "hly"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "hlyp"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "hlyrx"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "hlyr"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "lit"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "lix"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "li"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "lip"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "liet"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "liex"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "lie"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "liep"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "lat"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "lax"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "la"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "lap"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "luot"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "luox"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "luo"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "luop"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "lot"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "lox"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "lo"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "lop"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "lex"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "le"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "lep"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "lut"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "lux"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "lu"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "lup"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "lurx"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "lur"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "lyt"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "lyx"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "ly"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "lyp"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "lyrx"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "lyr"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "git"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "gix"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "gi"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "gip"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "giet"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "giex"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "gie"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "giep"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "gat"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "gax"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "ga"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "gap"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "guot"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "guox"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "guo"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "guop"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "got"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "gox"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "go"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "gop"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "get"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "gex"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "ge"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "gep"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "gut"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "gux"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "gu"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "gup"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "gurx"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "gur"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "kit"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "kix"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "kip"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "kiex"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "kie"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "kiep"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "kat"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    const/16 v1, 0xa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "kax"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "kap"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "kuox"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "kuo"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "kuop"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "kot"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "kox"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "kop"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "ket"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "kex"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "kep"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "kut"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "kux"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ku"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "kup"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "kurx"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "kur"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "ggit"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "ggix"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "ggi"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "ggiex"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "ggie"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ggiep"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "ggat"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ggax"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "gga"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "ggap"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "gguot"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "gguox"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "gguo"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "gguop"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "ggot"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "ggox"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "ggo"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "ggop"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "gget"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "ggex"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "gge"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "ggep"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "ggut"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "ggux"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "ggu"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "ggup"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "ggurx"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "ggur"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "mgiex"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "mgie"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "mgat"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "mgax"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "mga"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "mgap"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "mguox"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "mguo"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "mguop"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "mgot"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "mgox"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "mgo"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "mgop"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "mgex"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "mge"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "mgep"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "mgut"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "mgux"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "mgu"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "mgup"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "mgurx"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "mgur"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "hxit"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "hxix"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "hxi"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "hxip"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "hxiet"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "hxiex"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "hxie"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "hxiep"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "hxat"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "hxax"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "hxa"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "hxap"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "hxuot"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "hxuox"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "hxuo"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "hxuop"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "hxot"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "hxox"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "hxo"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "hxop"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "hxex"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "hxe"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "hxep"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "ngiex"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "ngie"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "ngiep"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "ngat"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "ngax"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "nga"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "ngap"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "nguot"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "nguox"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "nguo"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "ngot"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "ngox"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "ngo"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "ngop"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "ngex"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "nge"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "ngep"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "hit"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "hiex"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "hie"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "hat"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "hax"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "hap"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "huot"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "huox"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "huo"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "huop"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "hot"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "hox"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "hop"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "hex"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "hep"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "wat"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "wax"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "wap"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "wuox"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "wuo"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "wuop"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "wox"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "wop"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "wex"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "wep"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "zit"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "zix"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "zi"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "zip"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "ziex"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "zie"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "ziep"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "zat"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "zax"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "za"

    aput-object v4, v2, v3

    const-string/jumbo v3, "zap"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zuox"

    aput-object v3, v2, v6

    const-string/jumbo v3, "zuo"

    aput-object v3, v2, v7

    const-string/jumbo v3, "zuop"

    aput-object v3, v2, v8

    const-string/jumbo v3, "zot"

    aput-object v3, v2, v9

    const/16 v3, 0x9c

    const-string/jumbo v4, "zox"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "zo"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "zop"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "zex"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "ze"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "zep"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "zut"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "zux"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "zu"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "zup"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "zurx"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "zur"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "zyt"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "zyx"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "zy"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "zyp"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "zyrx"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "zyr"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "cit"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "cix"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "ci"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "cip"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "ciet"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ciex"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "cie"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "ciep"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "cat"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "cax"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "ca"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "cap"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "cuox"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "cuo"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "cuop"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "cot"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "cox"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "co"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "cop"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "cex"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "ce"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "cep"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "cut"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "cux"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "cu"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "cup"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "curx"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "cur"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "cyt"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "cyx"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "cy"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "cyp"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "cyrx"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "cyr"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "zzit"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "zzix"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "zzi"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "zzip"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "zziet"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "zziex"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "zzie"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "zziep"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "zzat"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "zzax"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "zza"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "zzap"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "zzox"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "zzo"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "zzop"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "zzex"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "zze"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "zzep"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "zzux"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "zzu"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "zzup"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "zzurx"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "zzur"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "zzyt"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "zzyx"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "zzy"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "zzyp"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "zzyrx"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "zzyr"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "nzit"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "nzix"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "nzi"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "nzip"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "nziex"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "nzie"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "nziep"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "nzat"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "nzax"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "nza"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "nzap"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "nzuox"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "nzuo"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "nzox"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "nzop"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "nzex"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "nze"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "nzux"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "nzu"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public containsKey(II)Z
    .locals 3
    .param p1, "high"    # I
    .param p2, "low"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 49
    .local v0, "entries":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(II)Ljava/lang/String;
    .locals 3
    .param p1, "high"    # I
    .param p2, "low"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters11;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 54
    .local v0, "entries":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 55
    const-string/jumbo v1, ""

    .line 57
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p2

    goto :goto_0
.end method
