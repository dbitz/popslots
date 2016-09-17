.class public Lcom/helpshift/support/util/HSCharacters2;
.super Ljava/lang/Object;
.source "HSCharacters2.java"


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
    const/16 v9, 0x15

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/16 v6, 0x12

    const/16 v5, 0x11

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "gg"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "bb"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "jj"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const-string/jumbo v3, "p"

    aput-object v3, v2, v5

    const-string/jumbo v3, "h"

    aput-object v3, v2, v6

    const-string/jumbo v3, "ng"

    aput-object v3, v2, v7

    const-string/jumbo v3, "nn"

    aput-object v3, v2, v8

    const-string/jumbo v3, "nd"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "nb"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "dg"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "rn"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "rh"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "rN"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "mb"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "mN"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "bg"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "bn"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "bs"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "bsg"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "bst"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "bsb"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "bss"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "bsj"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "bj"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "bc"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "bt"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "bp"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "bN"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "bbN"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "sg"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "sn"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "sd"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "sr"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "sm"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "sb"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "sbg"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "sss"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "sj"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "sc"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "sk"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "st"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "sp"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "ck"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "pb"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "pN"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "hh"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "yae"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "eo"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "yeo"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "ye"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "wae"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "weo"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "eu"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "a-o"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "a-u"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "ya-o"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "ya-yo"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "eo-o"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "eo-u"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "eo-eu"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "yeo-o"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "yeo-u"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "o-eo"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "o-e"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "o-ye"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "o-o"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "o-u"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "yo-ya"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "yo-yae"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "yo-yeo"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "yo-o"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "yo-i"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "u-a"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "u-ae"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "u-eo-eu"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "u-ye"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "u-u"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "yu-a"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "yu-eo"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "yu-e"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "yu-yeo"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "yu-ye"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "yu-u"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "yu-i"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "eu-u"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "eu-eu"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "yi-u"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "i-a"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "i-ya"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "i-o"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "i-u"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "i-eu"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "i-U"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "U-eo"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "U-u"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "U-i"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "UU"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "gg"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "gs"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "nj"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "nh"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "lg"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "lm"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "lb"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ls"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "lt"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "lp"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "lh"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "bs"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "gl"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "gsg"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "nd"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "ns"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "nZ"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "nt"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "dg"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "tl"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "lgs"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "ln"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "ld"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "lth"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "lmg"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "lms"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "lbs"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "lbh"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "rNp"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "lss"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "lZ"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "lk"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "lQ"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "mg"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "ml"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "mb"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "ms"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "mss"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "mZ"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "mc"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "mh"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "mN"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "bl"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "bp"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "pN"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "sg"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "sd"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "sl"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "sb"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Ns"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "NZ"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "pb"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "pN"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "hn"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "hl"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "hm"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "hb"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Q"

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

    .line 13
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "hu"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "haa"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "hee"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "la"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "lu"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "li"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "laa"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "lee"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "le"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "lo"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "lwa"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "hha"

    aput-object v4, v2, v3

    const-string/jumbo v3, "hhu"

    aput-object v3, v2, v5

    const-string/jumbo v3, "hhi"

    aput-object v3, v2, v6

    const-string/jumbo v3, "hhaa"

    aput-object v3, v2, v7

    const-string/jumbo v3, "hhee"

    aput-object v3, v2, v8

    const-string/jumbo v3, "hhe"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "hho"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "hhwa"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "maa"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "mee"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "mwa"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "sza"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "szu"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "szi"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "szaa"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "szee"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "sze"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "szo"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "szwa"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "ru"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "raa"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "ree"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "rwa"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "su"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "si"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "saa"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "see"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "swa"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "sha"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "shu"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "shi"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "shaa"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "shee"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "she"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "sho"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "shwa"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "qa"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "qu"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "qi"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "qaa"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "qee"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "qe"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "qo"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "qwa"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "qwi"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "qwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "qwee"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "qwe"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "qha"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "qhu"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "qhi"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "qhaa"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "qhee"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "qhe"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "qho"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "qhwa"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "qhwi"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "qhwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "qhwee"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "qhwe"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "ba"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "bu"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "bi"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "baa"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "bee"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "be"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "bo"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "bwa"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "va"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "vu"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "vi"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "vaa"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "vee"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "ve"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "vo"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "vwa"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "tu"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "taa"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "tee"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "twa"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "ca"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "cu"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "ci"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "caa"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "cee"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "ce"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "co"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "cwa"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "xa"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "xu"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "xi"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "xaa"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "xee"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "xe"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "xo"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "xwa"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "xwi"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "xwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "xwee"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "xwe"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "naa"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "nee"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "nwa"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "nya"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "nyu"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "nyi"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "nyaa"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "nyee"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "nye"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "nyo"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "nywa"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\'a"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\'u"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\'aa"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\'ee"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\'e"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "\'o"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "\'wa"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "ku"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "kaa"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "kee"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "kwa"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "kwi"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "kwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "kwee"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "kwe"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "kxa"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "kxu"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "kxi"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "kxaa"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "kxee"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "kxe"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "kxo"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "kxwa"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "kxwi"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "kxwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "kxwee"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "kxwe"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "wu"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "waa"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "wee"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "`a"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "`u"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "`i"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "`aa"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "`ee"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "`e"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "`o"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "za"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "zu"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "zi"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "zaa"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "zee"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "ze"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "zo"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "zwa"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "zha"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "zhu"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "zhi"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "zhaa"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "zhee"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "zhe"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "zho"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "zhwa"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "yaa"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "yee"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "ye"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "da"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "du"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "di"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "daa"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "dee"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "de"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "do"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "dwa"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "dda"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "ddu"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "ddi"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "ddaa"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "ddee"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "dde"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "ddo"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "ddwa"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ja"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ju"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "ji"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "jaa"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "jee"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "je"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "jo"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "jwa"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ga"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "gu"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "gi"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "gaa"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "gee"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "ge"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "go"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "gwa"

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "gwi"

    aput-object v3, v2, v6

    const-string/jumbo v3, "gwaa"

    aput-object v3, v2, v7

    const-string/jumbo v3, "gwee"

    aput-object v3, v2, v8

    const-string/jumbo v3, "gwe"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gga"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ggu"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "ggi"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ggaa"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "ggee"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "gge"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "ggo"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tha"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "thu"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "thi"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "thaa"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "thee"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "the"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "tho"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "thwa"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "cha"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "chu"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "chi"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "chaa"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "chee"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "che"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "cho"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "chwa"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "pha"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "phu"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "phi"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "phaa"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "phee"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "phe"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "pho"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "phwa"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "tsa"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "tsi"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "tsaa"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "tsee"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "tse"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "tso"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "tswa"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "tza"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "tzu"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "tzi"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "tzaa"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "tzee"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "tze"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "tzo"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "fa"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "fu"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "fi"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "faa"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "fee"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "fe"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "fo"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "fwa"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "pu"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "paa"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "pee"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "pe"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "po"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "pwa"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "rya"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "mya"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "fya"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, ":: "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "//"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "10+"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "20+"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "30+"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "40+"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "50+"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "60+"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "70+"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "80+"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "90+"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "100+"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "10,000+"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "ga"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "ge"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "gi"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "go"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "gu"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "gv"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "hu"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "hv"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "la"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "le"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "li"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "lo"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "lu"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "lv"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "hna"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "nah"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "nv"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "qua"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "que"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "qui"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "quo"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "quu"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "quv"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "si"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "su"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "sv"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "da"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "de"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "di"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "do"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "du"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "dv"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "dla"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "tla"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "tle"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "tli"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "tlo"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "tlu"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "tlv"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "tsa"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "tse"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "tsi"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "tso"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "tsv"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "wu"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "wv"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "ye"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "yv"

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

    .line 19
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "aai"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "wii"

    aput-object v4, v2, v3

    const-string/jumbo v3, "wii"

    aput-object v3, v2, v5

    const-string/jumbo v3, "wo"

    aput-object v3, v2, v6

    const-string/jumbo v3, "wo"

    aput-object v3, v2, v7

    const-string/jumbo v3, "woo"

    aput-object v3, v2, v8

    const-string/jumbo v3, "woo"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "woo"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "waa"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "waa"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "waa"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "en"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "in"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "on"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "an"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "pe"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "paai"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "pii"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "po"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "poo"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "poo"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "hee"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "paa"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "pwe"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "pwe"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "pwi"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "pwi"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "pwii"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "pwii"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "pwo"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "pwo"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "pwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "pwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "pwa"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "pwa"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "pwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "pwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "pwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "taai"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "tii"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "too"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "too"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "dee"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "di"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "taa"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "twe"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "twe"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "twi"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "twi"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "twii"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "twii"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "two"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "two"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "twoo"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "twoo"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "twa"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "twa"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "twaa"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "twaa"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "twaa"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "tte"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "tti"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "tto"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "tta"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "kaai"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "kii"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "koo"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "koo"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "kaa"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "kwe"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "kwe"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "kwi"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "kwi"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "kwii"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "kwii"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "kwo"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "kwo"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "kwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "kwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "kwa"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "kwa"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "kwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "kwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "kwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "kw"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "keh"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "kih"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "koh"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "kah"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "ce"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "caai"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "ci"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "cii"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "co"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "coo"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "coo"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "ca"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "caa"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "cwe"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "cwe"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "cwi"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "cwi"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "cwii"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "cwii"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "cwo"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "cwo"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "cwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "cwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "cwa"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "cwa"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "cwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "cwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "cwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "maai"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "mii"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "moo"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "moo"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "maa"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "mwe"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "mwe"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "mwi"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "mwi"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "mwii"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "mwii"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "mwo"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "mwo"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "mwoo"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "mwoo"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "mwa"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "mwa"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "mwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "mwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "mwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "mh"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "naai"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "nii"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "noo"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "noo"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "naa"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "nwe"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "nwe"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "nwa"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "nwa"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "nwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "nwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "nwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "nh"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "le"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "laai"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "li"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "lii"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "lo"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "loo"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "loo"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "la"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "laa"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "lwe"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "lwe"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "lwi"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "lwi"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "lwii"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "lwii"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "lwo"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "lwo"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "lwoo"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "lwoo"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "lwa"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "lwa"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "lwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "lwaa"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "saai"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "si"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "sii"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "soo"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "soo"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "saa"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "swe"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "swe"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "swi"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "swi"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "swii"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "swii"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "swo"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "swo"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "swoo"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "swoo"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "swa"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "swa"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "swaa"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "swaa"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "swaa"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "sw"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "sk"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "skw"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "sW"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "spwa"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "stwa"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "skwa"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "scwa"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "she"

    aput-object v4, v2, v3

    const-string/jumbo v3, "shi"

    aput-object v3, v2, v5

    const-string/jumbo v3, "shii"

    aput-object v3, v2, v6

    const-string/jumbo v3, "sho"

    aput-object v3, v2, v7

    const-string/jumbo v3, "shoo"

    aput-object v3, v2, v8

    const-string/jumbo v3, "sha"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "shaa"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "shwe"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "shwe"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "shwi"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "shwi"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "shwii"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "shwii"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "shwo"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "shwo"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "shwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "shwoo"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "shwa"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "shwa"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "shwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "shwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "ye"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "yaai"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "yii"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "yoo"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "yoo"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "yaa"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "ywe"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "ywe"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "ywi"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "ywi"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "ywii"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "ywii"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "ywo"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "ywo"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "ywoo"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "ywoo"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "ywa"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "ywa"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "ywaa"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "ywaa"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "ywaa"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "le"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "raai"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "rii"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "roo"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "lo"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "raa"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "la"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "rwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "rwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "fe"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "faai"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "fi"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "fii"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "fo"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "foo"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "fa"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "faa"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "fwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "fwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "the"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "the"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "thi"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "thi"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "thii"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "thii"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "tho"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "thoo"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "tha"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "thaa"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "thwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "thwaa"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "tthe"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "tthi"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "ttho"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "ttha"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "tye"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "tyi"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "tyo"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "tya"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "hii"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "hoo"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "haa"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "hk"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "qaai"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "qi"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "qii"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "qo"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "qoo"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "qa"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "qaa"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "tlhe"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "tlhi"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "tlho"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "tlha"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "ngaai"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "ngi"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "ngii"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "ngo"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "ngoo"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "nga"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "ngaa"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "nng"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "she"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "shi"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "sho"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "sha"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "the"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "thi"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "tho"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "tha"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "lhi"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "lhii"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "lho"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "lhoo"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "lha"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "lhaa"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "lh"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "the"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "thi"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "thii"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "tho"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "thoo"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "tha"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "thaa"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "ghu"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "gho"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "ghe"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "ghee"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "ghi"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "gha"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "ru"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "ree"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "wu"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "wee"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "hwu"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "hwo"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "hwe"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "hwee"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "hwi"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "hwa"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "thu"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "tho"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "the"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "thee"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "thi"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "tha"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "ttu"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "tto"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "tte"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "ttee"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "tti"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "tta"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "pu"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "po"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "pe"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "pee"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "gu"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "go"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "ge"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "gee"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "gi"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "ga"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "khu"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "kho"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "khe"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "khee"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "khi"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "kha"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "kku"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "kko"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "kke"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "kkee"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "kki"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "kka"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "kk"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "nee"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "mee"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ye"

    aput-object v4, v2, v3

    const-string/jumbo v3, "yee"

    aput-object v3, v2, v5

    const-string/jumbo v3, "yi"

    aput-object v3, v2, v6

    const-string/jumbo v3, "ya"

    aput-object v3, v2, v7

    const-string/jumbo v3, "ju"

    aput-object v3, v2, v8

    const-string/jumbo v3, "ju"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "jo"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "je"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "jee"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ji"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "ji"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ja"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "jju"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jjo"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "jje"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "jjee"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "jji"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "jja"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "lu"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "lo"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "le"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "lee"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "li"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "la"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "dlu"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "dlo"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "dle"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "dlee"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "dli"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "dla"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "lhu"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "lho"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "lhe"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "lhee"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "lhi"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "lha"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "tlhu"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "tlho"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "tlhe"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "tlhee"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "tlhi"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "tlha"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "tlu"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "tlo"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "tle"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "tlee"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "tli"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "tla"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "zu"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "zo"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "ze"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "zee"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "zi"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "za"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "dzu"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "dzo"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "dze"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "dzee"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "dzi"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "dza"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "su"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "see"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "si"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "shu"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "sho"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "she"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "shee"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "shi"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "sha"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "tso"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "tse"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "tsee"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "tsi"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "tsa"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "chu"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "cho"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "che"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "chee"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "chi"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "cha"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "ttsu"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "ttso"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "ttse"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "ttsee"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "ttsi"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "ttsa"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "qai"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "ngai"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "nngi"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "nngii"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "nngo"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "nngoo"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "nnga"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "nngaa"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "yr"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "ac"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "on"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "eo"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "ear"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "ior"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "qu"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "qu"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "qu"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "yr"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "yr"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "yr"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "17"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "18"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "19"

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

    .line 28
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "uk"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "uuv"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "ry"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "ryy"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ly"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "lyy"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "yy"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "ua"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "ie"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "a`"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "++"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, " * "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, " /// "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "KR"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "\'"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "9"

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

    .line 31
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, " @ "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " ... "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ". "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ": "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, ". "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const-string/jumbo v3, "1"

    aput-object v3, v2, v5

    const-string/jumbo v3, "2"

    aput-object v3, v2, v6

    const-string/jumbo v3, "3"

    aput-object v3, v2, v7

    const-string/jumbo v3, "4"

    aput-object v3, v2, v8

    const-string/jumbo v3, "5"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "kha"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "zr"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "lh"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "jy"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "iy"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, " 3 "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, " 333 "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "tta"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "cy"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "\'"

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

    .line 34
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const-string/jumbo v3, "d"

    aput-object v3, v2, v5

    const-string/jumbo v3, "D"

    aput-object v3, v2, v6

    const-string/jumbo v3, "d"

    aput-object v3, v2, v7

    const-string/jumbo v3, "E"

    aput-object v3, v2, v8

    const-string/jumbo v3, "e"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Ss"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "y"

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

    .line 40
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const-string/jumbo v3, "e"

    aput-object v3, v2, v5

    const-string/jumbo v3, "e"

    aput-object v3, v2, v6

    const-string/jumbo v3, "e"

    aput-object v3, v2, v7

    const-string/jumbo v3, "e"

    aput-object v3, v2, v8

    const-string/jumbo v3, "e"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "\"~"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "\'`"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\'\'"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "\'~"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "`\'"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "`\'"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "`~"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "\"`"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\"\'"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const-string/jumbo v3, "-"

    aput-object v3, v2, v5

    const-string/jumbo v3, "-"

    aput-object v3, v2, v6

    const-string/jumbo v3, "-"

    aput-object v3, v2, v7

    const-string/jumbo v3, "--"

    aput-object v3, v2, v8

    const-string/jumbo v3, "--"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "||"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, ",,"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "++"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "*>"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, ".."

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "..."

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\n"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\n\n"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "%0"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "%00"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\'\'"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\'\'\'"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "``"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "```"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "!!"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "!?"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "***"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "--"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "-["

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "]-"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "?!"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "!?"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "PP"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "(]"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[)"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "ECU"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "CL"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Cr"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "FF"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "mil"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Pts"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Rs"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "NS"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "EU"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Dr"

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

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, ""

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

    .line 46
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, " 1/3 "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, " 2/3 "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, " 1/5 "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, " 2/5 "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, " 3/5 "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, " 4/5 "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, " 1/6 "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, " 5/6 "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, " 1/8 "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, " 3/8 "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, " 5/8 "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, " 7/8 "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, " 1/"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "II"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "III"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "IV"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "VI"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "VII"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "VIII"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "IX"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "XI"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "XII"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "iii"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "iv"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "vi"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "vii"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "viii"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "ix"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "xi"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "xii"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "(D"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "D)"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "((|))"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "|"

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

    .line 49
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "[?]"

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

    .line 52
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "[?]"

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

    .line 55
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0x16

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "0"

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

    .line 57
    return-void
.end method


# virtual methods
.method public containsKey(II)Z
    .locals 3
    .param p1, "high"    # I
    .param p2, "low"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 61
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
    .line 65
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters2;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 66
    .local v0, "entries":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v1, ""

    .line 69
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p2

    goto :goto_0
.end method
