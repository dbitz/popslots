.class public Lcom/helpshift/support/util/HSCharacters15;
.super Ljava/lang/Object;
.source "HSCharacters15.java"


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
    const/16 v9, 0xcf

    const/16 v8, 0xce

    const/16 v7, 0xcd

    const/16 v6, 0xcc

    const/16 v5, 0xcb

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "jjwaels"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "jjwaelt"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "jjwaelp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "jjwaelh"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "jjwaem"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "jjwaeb"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "jjwaebs"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "jjwaes"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "jjwaess"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "jjwaeng"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "jjwaej"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "jjwaec"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "jjwaek"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "jjwaet"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "jjwaep"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "jjwaeh"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "jjoe"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "jjoeg"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "jjoegg"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "jjoegs"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "jjoen"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "jjoenj"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "jjoenh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "jjoed"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "jjoel"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "jjoelg"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "jjoelm"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "jjoelb"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "jjoels"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jjoelt"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "jjoelp"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "jjoelh"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "jjoem"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "jjoeb"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "jjoebs"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "jjoes"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "jjoess"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "jjoeng"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "jjoej"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "jjoec"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "jjoek"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "jjoet"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "jjoep"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "jjoeh"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "jjyo"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "jjyog"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "jjyogg"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "jjyogs"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "jjyon"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "jjyonj"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "jjyonh"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "jjyod"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "jjyol"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "jjyolg"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "jjyolm"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "jjyolb"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "jjyols"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "jjyolt"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "jjyolp"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "jjyolh"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "jjyom"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "jjyob"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "jjyobs"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "jjyos"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "jjyoss"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "jjyong"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "jjyoj"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "jjyoc"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "jjyok"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "jjyot"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "jjyop"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "jjyoh"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "jju"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "jjug"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "jjugg"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "jjugs"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "jjun"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "jjunj"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "jjunh"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "jjud"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "jjul"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "jjulg"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "jjulm"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "jjulb"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "jjuls"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "jjult"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "jjulp"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "jjulh"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "jjum"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "jjub"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "jjubs"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "jjus"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "jjuss"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "jjung"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "jjuj"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "jjuc"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "jjuk"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "jjut"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "jjup"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "jjuh"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "jjweo"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "jjweog"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "jjweogg"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "jjweogs"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "jjweon"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "jjweonj"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "jjweonh"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "jjweod"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "jjweol"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "jjweolg"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "jjweolm"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "jjweolb"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "jjweols"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "jjweolt"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "jjweolp"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "jjweolh"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "jjweom"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "jjweob"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "jjweobs"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "jjweos"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "jjweoss"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "jjweong"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "jjweoj"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "jjweoc"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "jjweok"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "jjweot"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "jjweop"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "jjweoh"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "jjwe"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "jjweg"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "jjwegg"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "jjwegs"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "jjwen"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "jjwenj"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "jjwenh"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "jjwed"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "jjwel"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "jjwelg"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "jjwelm"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "jjwelb"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "jjwels"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "jjwelt"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "jjwelp"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "jjwelh"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "jjwem"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "jjweb"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "jjwebs"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "jjwes"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "jjwess"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "jjweng"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "jjwej"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "jjwec"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "jjwek"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "jjwet"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "jjwep"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "jjweh"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "jjwi"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "jjwig"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "jjwigg"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "jjwigs"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "jjwin"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "jjwinj"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "jjwinh"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "jjwid"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "jjwil"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "jjwilg"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "jjwilm"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "jjwilb"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "jjwils"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "jjwilt"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "jjwilp"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "jjwilh"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "jjwim"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "jjwib"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "jjwibs"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "jjwis"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "jjwiss"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "jjwing"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "jjwij"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "jjwic"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "jjwik"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "jjwit"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "jjwip"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "jjwih"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "jjyu"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "jjyug"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "jjyugg"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "jjyugs"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "jjyun"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "jjyunj"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "jjyunh"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "jjyud"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "jjyul"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "jjyulg"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "jjyulm"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "jjyulb"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "jjyuls"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "jjyult"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "jjyulp"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "jjyulh"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "jjyum"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "jjyub"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "jjyubs"

    aput-object v4, v2, v3

    const-string/jumbo v3, "jjyus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "jjyuss"

    aput-object v3, v2, v6

    const-string/jumbo v3, "jjyung"

    aput-object v3, v2, v7

    const-string/jumbo v3, "jjyuj"

    aput-object v3, v2, v8

    const-string/jumbo v3, "jjyuc"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "jjyuk"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "jjyut"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "jjyup"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "jjyuh"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "jjeu"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "jjeug"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "jjeugg"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "jjeugs"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "jjeun"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "jjeunj"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "jjeunh"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "jjeud"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "jjeul"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "jjeulg"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "jjeulm"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "jjeulb"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "jjeuls"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "jjeult"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "jjeulp"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "jjeulh"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "jjeum"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "jjeub"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "jjeubs"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "jjeus"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "jjeuss"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "jjeung"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "jjeuj"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "jjeuc"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "jjeuk"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "jjeut"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "jjeup"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "jjeuh"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "jjyi"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "jjyig"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "jjyigg"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "jjyigs"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "jjyin"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "jjyinj"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "jjyinh"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "jjyid"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "jjyil"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "jjyilg"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "jjyilm"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "jjyilb"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "jjyils"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "jjyilt"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "jjyilp"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "jjyilh"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "jjyim"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "jjyib"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "jjyibs"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "jjyis"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "jjyiss"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "jjying"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "jjyij"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "jjyic"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "jjyik"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "jjyit"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "jjyip"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "jjyih"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "jji"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "jjig"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "jjigg"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "jjigs"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "jjin"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "jjinj"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "jjinh"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "jjid"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "jjil"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "jjilg"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "jjilm"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "jjilb"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "jjils"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "jjilt"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "jjilp"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "jjilh"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "jjim"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jjib"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "jjibs"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "jjis"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "jjiss"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "jjing"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "jjij"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "jjic"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "jjik"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "jjit"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "jjip"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "jjih"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "ca"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "cag"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "cagg"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "cags"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "can"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "canj"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "canh"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "cad"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "cal"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "calg"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "calm"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "calb"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "cals"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "calt"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "calp"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "calh"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "cam"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "cab"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "cabs"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "cas"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "cass"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "cang"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "caj"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "cac"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "cak"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "cat"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "cap"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "cah"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "cae"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "caeg"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "caegg"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "caegs"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "caen"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "caenj"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "caenh"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "caed"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "cael"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "caelg"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "caelm"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "caelb"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "caels"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "caelt"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "caelp"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "caelh"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "caem"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "caeb"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "caebs"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "caes"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "caess"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "caeng"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "caej"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "caec"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "caek"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "caet"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "caep"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "caeh"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "cya"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "cyag"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "cyagg"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "cyags"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "cyan"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "cyanj"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "cyanh"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "cyad"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "cyal"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "cyalg"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "cyalm"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "cyalb"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "cyals"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "cyalt"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "cyalp"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "cyalh"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "cyam"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "cyab"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "cyabs"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "cyas"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "cyass"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "cyang"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "cyaj"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "cyac"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "cyak"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "cyat"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "cyap"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "cyah"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "cyae"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "cyaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "cyaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "cyaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "cyaen"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "cyaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "cyaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "cyaed"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "cyael"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "cyaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "cyaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "cyaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "cyaels"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "cyaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "cyaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "cyaelh"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "cyaem"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "cyaeb"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "cyaebs"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "cyaes"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "cyaess"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "cyaeng"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "cyaej"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "cyaec"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "cyaek"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "cyaet"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "cyaep"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "cyaeh"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "ceo"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "ceog"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "ceogg"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "ceogs"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "ceon"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "ceonj"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ceonh"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "ceod"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "ceol"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "ceolg"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "ceolm"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "ceolb"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "ceols"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "ceolt"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "ceolp"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "ceolh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "ceom"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "ceob"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "ceobs"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "ceos"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "ceoss"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ceong"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "ceoj"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "ceoc"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "ceok"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "ceot"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "ceop"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ceoh"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "ce"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "ceg"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "cegg"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "cegs"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "cen"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "cenj"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "cenh"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "ced"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "cel"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "celg"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "celm"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "celb"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "cels"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "celt"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "celp"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "celh"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "cem"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "ceb"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "cebs"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "ces"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "cess"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "ceng"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "cej"

    aput-object v4, v2, v3

    const-string/jumbo v3, "cec"

    aput-object v3, v2, v5

    const-string/jumbo v3, "cek"

    aput-object v3, v2, v6

    const-string/jumbo v3, "cet"

    aput-object v3, v2, v7

    const-string/jumbo v3, "cep"

    aput-object v3, v2, v8

    const-string/jumbo v3, "ceh"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "cyeo"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "cyeog"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "cyeogg"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "cyeogs"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "cyeon"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "cyeonj"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "cyeonh"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "cyeod"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "cyeol"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "cyeolg"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "cyeolm"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "cyeolb"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "cyeols"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "cyeolt"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "cyeolp"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "cyeolh"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "cyeom"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "cyeob"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "cyeobs"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "cyeos"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "cyeoss"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "cyeong"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "cyeoj"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "cyeoc"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "cyeok"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "cyeot"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "cyeop"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "cyeoh"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "cye"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "cyeg"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "cyegg"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "cyegs"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "cyen"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "cyenj"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "cyenh"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "cyed"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "cyel"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "cyelg"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "cyelm"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "cyelb"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "cyels"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "cyelt"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "cyelp"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "cyelh"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "cyem"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "cyeb"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "cyebs"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "cyes"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "cyess"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "cyeng"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "cyej"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "cyec"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "cyek"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "cyet"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "cyep"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "cyeh"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "co"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "cog"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "cogg"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "cogs"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "con"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "conj"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "conh"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "cod"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "col"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "colg"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "colm"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "colb"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "cols"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "colt"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "colp"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "colh"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "com"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "cob"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "cobs"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "cos"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "coss"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "cong"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "coj"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "coc"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "cok"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "cot"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "cop"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "coh"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "cwa"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "cwag"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "cwagg"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "cwags"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "cwan"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "cwanj"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "cwanh"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "cwad"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "cwal"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "cwalg"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "cwalm"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "cwalb"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "cwals"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "cwalt"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "cwalp"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "cwalh"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "cwam"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "cwab"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "cwabs"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "cwas"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "cwass"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "cwang"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "cwaj"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "cwac"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "cwak"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "cwat"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "cwap"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "cwah"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "cwae"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "cwaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "cwaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "cwaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "cwaen"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "cwaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "cwaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "cwaed"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "cwael"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "cwaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "cwaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "cwaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "cwaels"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "cwaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "cwaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "cwaelh"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "cwaem"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "cwaeb"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "cwaebs"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "cwaes"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "cwaess"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "cwaeng"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "cwaej"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "cwaec"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "cwaek"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "cwaet"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "cwaep"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "cwaeh"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "coe"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "coeg"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "coegg"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "coegs"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "coen"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "coenj"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "coenh"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "coed"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "coel"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "coelg"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "coelm"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "coelb"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "coels"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "coelt"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "coelp"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "coelh"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "coem"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "coeb"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "coebs"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "coes"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "coess"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "coeng"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "coej"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "coec"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "coek"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "coet"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "coep"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "coeh"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "cyo"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "cyog"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "cyogg"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "cyogs"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "cyon"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "cyonj"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "cyonh"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "cyod"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "cyol"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "cyolg"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "cyolm"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "cyolb"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "cyols"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "cyolt"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "cyolp"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "cyolh"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "cyom"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "cyob"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "cyobs"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "cyos"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "cyoss"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "cyong"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "cyoj"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "cyoc"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "cyok"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "cyot"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "cyop"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "cyoh"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "cu"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "cug"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "cugg"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "cugs"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "cun"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "cunj"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "cunh"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "cud"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "cul"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "culg"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "culm"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "culb"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "culs"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "cult"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "culp"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "culh"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "cum"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "cub"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "cubs"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "cus"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "cuss"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "cung"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "cuj"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "cuc"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "cuk"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "cut"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "cup"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "cuh"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "cweo"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "cweog"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "cweogg"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "cweogs"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "cweon"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "cweonj"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "cweonh"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "cweod"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "cweol"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "cweolg"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "cweolm"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "cweolb"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "cweols"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "cweolt"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "cweolp"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "cweolh"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "cweom"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "cweob"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "cweobs"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "cweos"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "cweoss"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "cweong"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "cweoj"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "cweoc"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "cweok"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "cweot"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "cweop"

    aput-object v4, v2, v3

    const-string/jumbo v3, "cweoh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "cwe"

    aput-object v3, v2, v6

    const-string/jumbo v3, "cweg"

    aput-object v3, v2, v7

    const-string/jumbo v3, "cwegg"

    aput-object v3, v2, v8

    const-string/jumbo v3, "cwegs"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "cwen"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "cwenj"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "cwenh"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "cwed"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "cwel"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "cwelg"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "cwelm"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "cwelb"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "cwels"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "cwelt"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "cwelp"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "cwelh"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "cwem"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "cweb"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "cwebs"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "cwes"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "cwess"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "cweng"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "cwej"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "cwec"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "cwek"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "cwet"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "cwep"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "cweh"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "cwi"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "cwig"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "cwigg"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "cwigs"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "cwin"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "cwinj"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "cwinh"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "cwid"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "cwil"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "cwilg"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "cwilm"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "cwilb"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "cwils"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "cwilt"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "cwilp"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "cwilh"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "cwim"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "cwib"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "cwibs"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "cwis"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "cwiss"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "cwing"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "cwij"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "cwic"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "cwik"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "cwit"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "cwip"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "cwih"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "cyu"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "cyug"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "cyugg"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "cyugs"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "cyun"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "cyunj"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "cyunh"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "cyud"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "cyul"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "cyulg"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "cyulm"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "cyulb"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "cyuls"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "cyult"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "cyulp"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "cyulh"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "cyum"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "cyub"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "cyubs"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "cyus"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "cyuss"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "cyung"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "cyuj"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "cyuc"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "cyuk"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "cyut"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "cyup"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "cyuh"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "ceu"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "ceug"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "ceugg"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "ceugs"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "ceun"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "ceunj"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "ceunh"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "ceud"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "ceul"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "ceulg"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "ceulm"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "ceulb"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "ceuls"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "ceult"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "ceulp"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "ceulh"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "ceum"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "ceub"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "ceubs"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "ceus"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "ceuss"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "ceung"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "ceuj"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "ceuc"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "ceuk"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "ceut"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "ceup"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "ceuh"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "cyi"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "cyig"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "cyigg"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "cyigs"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "cyin"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "cyinj"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "cyinh"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "cyid"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "cyil"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "cyilg"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "cyilm"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "cyilb"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "cyils"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "cyilt"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "cyilp"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "cyilh"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "cyim"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "cyib"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "cyibs"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "cyis"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "cyiss"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "cying"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "cyij"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "cyic"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "cyik"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "cyit"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "cyip"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "cyih"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "ci"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "cig"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "cigg"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "cigs"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "cin"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "cinj"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "cinh"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "cid"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "cil"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "cilg"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "cilm"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "cilb"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "cils"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "cilt"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "cilp"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "cilh"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "cim"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "cib"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "cibs"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "cis"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "ciss"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "cing"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "cij"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "cic"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "cik"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "cit"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "cip"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "cih"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "kag"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "kagg"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "kags"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "kan"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "kanj"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "kanh"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "kad"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "kal"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "kalg"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "kalm"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "kalb"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "kals"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "kalt"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "kalp"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "kalh"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "kam"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "kab"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "kabs"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "kas"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "kass"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "kang"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "kaj"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "kac"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "kak"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "kat"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "kap"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "kah"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "kae"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "kaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "kaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "kaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "kaen"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "kaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "kaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "kaed"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "kael"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "kaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "kaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "kaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "kaels"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "kaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "kaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "kaelh"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "kaem"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "kaeb"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "kaebs"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "kaes"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "kaess"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "kaeng"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "kaej"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "kaec"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "kaek"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "kaet"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "kaep"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "kaeh"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "kya"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "kyag"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "kyagg"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "kyags"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "kyan"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "kyanj"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "kyanh"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "kyad"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "kyal"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "kyalg"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "kyalm"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "kyalb"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "kyals"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "kyalt"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "kyalp"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "kyalh"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "kyam"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "kyab"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "kyabs"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "kyas"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "kyass"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "kyang"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "kyaj"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "kyac"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "kyak"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "kyat"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "kyap"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "kyah"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "kyae"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "kyaeg"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "kyaegg"

    aput-object v4, v2, v3

    const-string/jumbo v3, "kyaegs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "kyaen"

    aput-object v3, v2, v6

    const-string/jumbo v3, "kyaenj"

    aput-object v3, v2, v7

    const-string/jumbo v3, "kyaenh"

    aput-object v3, v2, v8

    const-string/jumbo v3, "kyaed"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "kyael"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "kyaelg"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "kyaelm"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "kyaelb"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "kyaels"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "kyaelt"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "kyaelp"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "kyaelh"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "kyaem"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "kyaeb"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "kyaebs"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "kyaes"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "kyaess"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "kyaeng"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "kyaej"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "kyaec"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "kyaek"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "kyaet"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "kyaep"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "kyaeh"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "keo"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "keog"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "keogg"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "keogs"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "keon"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "keonj"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "keonh"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "keod"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "keol"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "keolg"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "keolm"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "keolb"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "keols"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "keolt"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "keolp"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "keolh"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "keom"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "keob"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "keobs"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "keos"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "keoss"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "keong"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "keoj"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "keoc"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "keok"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "keot"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "keop"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "keoh"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "keg"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "kegg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "kegs"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "ken"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "kenj"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "kenh"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "ked"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "kel"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "kelg"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "kelm"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "kelb"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "kels"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "kelt"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "kelp"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "kelh"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "kem"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "keb"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "kebs"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "kes"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "kess"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "keng"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kej"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "kec"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "kek"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ket"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "kep"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "keh"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "kyeo"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "kyeog"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "kyeogg"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "kyeogs"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "kyeon"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "kyeonj"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "kyeonh"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "kyeod"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "kyeol"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "kyeolg"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "kyeolm"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "kyeolb"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "kyeols"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "kyeolt"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "kyeolp"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "kyeolh"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "kyeom"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "kyeob"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "kyeobs"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "kyeos"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "kyeoss"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "kyeong"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "kyeoj"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "kyeoc"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "kyeok"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "kyeot"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "kyeop"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "kyeoh"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "kye"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "kyeg"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "kyegg"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "kyegs"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "kyen"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "kyenj"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "kyenh"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "kyed"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "kyel"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "kyelg"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "kyelm"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "kyelb"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "kyels"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "kyelt"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "kyelp"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "kyelh"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "kyem"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "kyeb"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "kyebs"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "kyes"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "kyess"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "kyeng"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "kyej"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "kyec"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "kyek"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "kyet"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "kyep"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "kyeh"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "kog"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "kogg"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "kogs"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "kon"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "konj"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "konh"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "kod"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "kol"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "kolg"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "kolm"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "kolb"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "kols"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "kolt"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "kolp"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "kolh"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "kom"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "kob"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "kobs"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "kos"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "koss"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "kong"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "koj"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "koc"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "kok"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "kot"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "kop"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "koh"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "kwa"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "kwag"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "kwagg"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "kwags"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "kwan"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "kwanj"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "kwanh"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "kwad"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "kwal"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "kwalg"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "kwalm"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "kwalb"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "kwals"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "kwalt"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "kwalp"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "kwalh"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "kwam"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "kwab"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "kwabs"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "kwas"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "kwass"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "kwang"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "kwaj"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "kwac"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "kwak"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "kwat"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "kwap"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "kwah"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "kwae"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "kwaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "kwaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "kwaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "kwaen"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "kwaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "kwaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "kwaed"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "kwael"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "kwaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "kwaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "kwaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "kwaels"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "kwaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "kwaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "kwaelh"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "kwaem"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "kwaeb"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "kwaebs"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "kwaes"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "kwaess"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "kwaeng"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "kwaej"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "kwaec"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "kwaek"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "kwaet"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "kwaep"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "kwaeh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "koe"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "koeg"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "koegg"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "koegs"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "koen"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "koenj"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "koenh"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "koed"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "koel"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "koelg"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "koelm"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "koelb"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "koels"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "koelt"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "koelp"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "koelh"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "koem"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "koeb"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "koebs"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "koes"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "koess"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "koeng"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "koej"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "koec"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "koek"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "koet"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "koep"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "koeh"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "kyo"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "kyog"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "kyogg"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "kyogs"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "kyon"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "kyonj"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "kyonh"

    aput-object v4, v2, v3

    const-string/jumbo v3, "kyod"

    aput-object v3, v2, v5

    const-string/jumbo v3, "kyol"

    aput-object v3, v2, v6

    const-string/jumbo v3, "kyolg"

    aput-object v3, v2, v7

    const-string/jumbo v3, "kyolm"

    aput-object v3, v2, v8

    const-string/jumbo v3, "kyolb"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "kyols"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "kyolt"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "kyolp"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "kyolh"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "kyom"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "kyob"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "kyobs"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "kyos"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "kyoss"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "kyong"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "kyoj"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "kyoc"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "kyok"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "kyot"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "kyop"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "kyoh"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "ku"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "kug"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "kugg"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "kugs"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "kun"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "kunj"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "kunh"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "kud"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "kul"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "kulg"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "kulm"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "kulb"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "kuls"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "kult"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "kulp"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "kulh"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "kum"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "kub"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "kubs"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "kus"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "kuss"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "kung"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "kuj"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "kuc"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "kuk"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "kut"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "kup"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "kuh"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "kweo"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "kweog"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "kweogg"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "kweogs"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "kweon"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "kweonj"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "kweonh"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "kweod"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "kweol"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "kweolg"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "kweolm"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "kweolb"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "kweols"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "kweolt"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "kweolp"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "kweolh"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "kweom"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "kweob"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "kweobs"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "kweos"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "kweoss"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "kweong"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "kweoj"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "kweoc"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "kweok"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "kweot"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kweop"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "kweoh"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "kwe"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "kweg"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "kwegg"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "kwegs"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "kwen"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "kwenj"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "kwenh"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "kwed"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "kwel"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "kwelg"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "kwelm"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "kwelb"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "kwels"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "kwelt"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "kwelp"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "kwelh"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "kwem"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "kweb"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "kwebs"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "kwes"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "kwess"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "kweng"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "kwej"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "kwec"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "kwek"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "kwet"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "kwep"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "kweh"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "kwi"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "kwig"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "kwigg"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "kwigs"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "kwin"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "kwinj"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "kwinh"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "kwid"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "kwil"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "kwilg"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "kwilm"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "kwilb"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "kwils"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "kwilt"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "kwilp"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "kwilh"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "kwim"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "kwib"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "kwibs"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "kwis"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "kwiss"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "kwing"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "kwij"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "kwic"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "kwik"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "kwit"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "kwip"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "kwih"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "kyu"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "kyug"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "kyugg"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "kyugs"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "kyun"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "kyunj"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "kyunh"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "kyud"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "kyul"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "kyulg"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "kyulm"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "kyulb"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "kyuls"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "kyult"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "kyulp"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "kyulh"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "kyum"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "kyub"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "kyubs"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "kyus"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "kyuss"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "kyung"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "kyuj"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "kyuc"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "kyuk"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "kyut"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "kyup"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "kyuh"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "keu"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "keug"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "keugg"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "keugs"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "keun"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "keunj"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "keunh"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "keud"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "keul"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "keulg"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "keulm"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "keulb"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "keuls"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "keult"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "keulp"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "keulh"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "keum"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "keub"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "keubs"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "keus"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "keuss"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "keung"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "keuj"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "keuc"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "keuk"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "keut"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "keup"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "keuh"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "kyi"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "kyig"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "kyigg"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "kyigs"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "kyin"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "kyinj"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "kyinh"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "kyid"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "kyil"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "kyilg"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "kyilm"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "kyilb"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "kyils"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "kyilt"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "kyilp"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "kyilh"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "kyim"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "kyib"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "kyibs"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "kyis"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "kyiss"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "kying"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "kyij"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "kyic"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "kyik"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "kyit"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "kyip"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "kyih"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "kig"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "kigg"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "kigs"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "kin"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "kinj"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "kinh"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "kid"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "kil"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "kilg"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "kilm"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "kilb"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "kils"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "kilt"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "kilp"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "kilh"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "kim"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "kib"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "kibs"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "kis"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "kiss"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "king"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "kij"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "kic"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "kik"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "kit"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "kip"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "kih"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "tag"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "tagg"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "tags"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "tan"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "tanj"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "tanh"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "tad"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "tal"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "talg"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "talm"

    aput-object v4, v2, v3

    const-string/jumbo v3, "talb"

    aput-object v3, v2, v5

    const-string/jumbo v3, "tals"

    aput-object v3, v2, v6

    const-string/jumbo v3, "talt"

    aput-object v3, v2, v7

    const-string/jumbo v3, "talp"

    aput-object v3, v2, v8

    const-string/jumbo v3, "talh"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "tam"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "tab"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "tabs"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "tas"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "tass"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "tang"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "taj"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "tac"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "tak"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "tat"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "tap"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "tah"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "tae"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "taeg"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "taegg"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "taegs"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "taen"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "taenj"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "taenh"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "taed"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "tael"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "taelg"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "taelm"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "taelb"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "taels"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "taelt"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "taelp"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "taelh"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "taem"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "taeb"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "taebs"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "taes"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "taess"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "taeng"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "taej"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "taec"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "taek"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "taet"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "taep"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "taeh"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "tya"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "tyag"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "tyagg"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "tyags"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "tyan"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "tyanj"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "tyanh"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "tyad"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tyal"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "tyalg"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "tyalm"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "tyalb"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "tyals"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "tyalt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "tyalp"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "tyalh"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "tyam"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "tyab"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "tyabs"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "tyas"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "tyass"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "tyang"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "tyaj"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "tyac"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "tyak"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "tyat"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "tyap"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "tyah"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "tyae"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "tyaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "tyaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "tyaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "tyaen"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "tyaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "tyaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "tyaed"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "tyael"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "tyaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "tyaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tyaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tyaels"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "tyaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "tyaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "tyaelh"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "tyaem"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "tyaeb"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "tyaebs"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "tyaes"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "tyaess"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "tyaeng"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "tyaej"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "tyaec"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "tyaek"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "tyaet"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "tyaep"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "tyaeh"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "teo"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "teog"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "teogg"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "teogs"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "teon"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "teonj"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "teonh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "teod"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "teol"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "teolg"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "teolm"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "teolb"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "teols"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "teolt"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "teolp"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "teolh"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "teom"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "teob"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "teobs"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "teos"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "teoss"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "teong"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "teoj"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "teoc"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "teok"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "teot"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "teop"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "teoh"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "teg"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "tegg"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "tegs"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "ten"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "tenj"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "tenh"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "ted"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "tel"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "telg"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "telm"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "telb"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "tels"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "telt"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "telp"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "telh"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "tem"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "teb"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "tebs"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "tes"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "tess"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "teng"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "tej"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "tec"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "tek"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "tet"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "tep"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "teh"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "tyeo"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "tyeog"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "tyeogg"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "tyeogs"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "tyeon"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "tyeonj"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "tyeonh"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "tyeod"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "tyeol"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "tyeolg"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "tyeolm"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "tyeolb"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "tyeols"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "tyeolt"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "tyeolp"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "tyeolh"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "tyeom"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "tyeob"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "tyeobs"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "tyeos"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "tyeoss"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "tyeong"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "tyeoj"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "tyeoc"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "tyeok"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "tyeot"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "tyeop"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "tyeoh"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "tye"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "tyeg"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "tyegg"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "tyegs"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "tyen"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "tyenj"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "tyenh"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "tyed"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "tyel"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "tyelg"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "tyelm"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "tyelb"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "tyels"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "tyelt"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "tyelp"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "tyelh"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "tyem"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "tyeb"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "tyebs"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "tyes"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "tyess"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "tyeng"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "tyej"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "tyec"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "tyek"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "tyet"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "tyep"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "tyeh"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "tog"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "togg"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "togs"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "ton"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "tonj"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "tonh"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "tod"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "tol"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "tolg"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "tolm"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "tolb"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "tols"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "tolt"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "tolp"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "tolh"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "tom"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "tob"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "tobs"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "tos"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "toss"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "tong"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "toj"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "toc"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "tok"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "tot"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "top"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "toh"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "twa"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "twag"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "twagg"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "twags"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "twan"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "twanj"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "twanh"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "twad"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "twal"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "twalg"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "twalm"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "twalb"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "twals"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "twalt"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "twalp"

    aput-object v4, v2, v3

    const-string/jumbo v3, "twalh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "twam"

    aput-object v3, v2, v6

    const-string/jumbo v3, "twab"

    aput-object v3, v2, v7

    const-string/jumbo v3, "twabs"

    aput-object v3, v2, v8

    const-string/jumbo v3, "twas"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "twass"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "twang"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "twaj"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "twac"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "twak"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "twat"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "twap"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "twah"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "twae"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "twaeg"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "twaegg"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "twaegs"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "twaen"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "twaenj"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "twaenh"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "twaed"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "twael"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "twaelg"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "twaelm"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "twaelb"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "twaels"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "twaelt"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "twaelp"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "twaelh"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "twaem"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "twaeb"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "twaebs"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "twaes"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "twaess"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "twaeng"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "twaej"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "twaec"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "twaek"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "twaet"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "twaep"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "twaeh"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "toe"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "toeg"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "toegg"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "toegs"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "toen"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "toenj"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "toenh"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "toed"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "toel"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "toelg"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "toelm"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "toelb"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "toels"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "toelt"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "toelp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "toelh"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "toem"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "toeb"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "toebs"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "toes"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "toess"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "toeng"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "toej"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "toec"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "toek"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "toet"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "toep"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "toeh"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "tyo"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "tyog"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "tyogg"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "tyogs"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "tyon"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "tyonj"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "tyonh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "tyod"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "tyol"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "tyolg"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "tyolm"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "tyolb"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "tyols"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "tyolt"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "tyolp"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tyolh"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tyom"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "tyob"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "tyobs"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "tyos"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "tyoss"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "tyong"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "tyoj"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "tyoc"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "tyok"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "tyot"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "tyop"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "tyoh"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "tu"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "tug"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "tugg"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "tugs"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "tun"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "tunj"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "tunh"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "tud"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "tul"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "tulg"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "tulm"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "tulb"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "tuls"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "tult"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "tulp"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "tulh"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "tum"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "tub"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "tubs"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "tus"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "tuss"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "tung"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "tuj"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "tuc"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "tuk"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "tut"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "tup"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "tuh"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "tweo"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "tweog"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "tweogg"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "tweogs"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "tweon"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "tweonj"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "tweonh"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "tweod"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "tweol"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "tweolg"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "tweolm"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "tweolb"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "tweols"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "tweolt"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "tweolp"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "tweolh"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "tweom"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "tweob"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "tweobs"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "tweos"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "tweoss"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "tweong"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "tweoj"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "tweoc"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "tweok"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "tweot"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "tweop"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "tweoh"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "twe"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "tweg"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "twegg"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "twegs"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "twen"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "twenj"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "twenh"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "twed"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "twel"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "twelg"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "twelm"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "twelb"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "twels"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "twelt"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "twelp"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "twelh"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "twem"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "tweb"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "twebs"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "twes"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "twess"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "tweng"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "twej"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "twec"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "twek"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "twet"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "twep"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "tweh"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "twi"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "twig"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "twigg"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "twigs"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "twin"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "twinj"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "twinh"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "twid"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "twil"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "twilg"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "twilm"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "twilb"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "twils"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "twilt"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "twilp"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "twilh"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "twim"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "twib"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "twibs"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "twis"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "twiss"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "twing"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "twij"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "twic"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "twik"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "twit"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "twip"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "twih"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "tyu"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "tyug"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "tyugg"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "tyugs"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "tyun"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "tyunj"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "tyunh"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "tyud"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "tyul"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "tyulg"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "tyulm"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "tyulb"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "tyuls"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "tyult"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "tyulp"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "tyulh"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "tyum"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "tyub"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "tyubs"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "tyus"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "tyuss"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "tyung"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "tyuj"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "tyuc"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "tyuk"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "tyut"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "tyup"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "tyuh"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "teu"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "teug"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "teugg"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "teugs"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "teun"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "teunj"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "teunh"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "teud"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "teul"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "teulg"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "teulm"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "teulb"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "teuls"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "teult"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "teulp"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "teulh"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "teum"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "teub"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "teubs"

    aput-object v4, v2, v3

    const-string/jumbo v3, "teus"

    aput-object v3, v2, v5

    const-string/jumbo v3, "teuss"

    aput-object v3, v2, v6

    const-string/jumbo v3, "teung"

    aput-object v3, v2, v7

    const-string/jumbo v3, "teuj"

    aput-object v3, v2, v8

    const-string/jumbo v3, "teuc"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "teuk"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "teut"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "teup"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "teuh"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "tyi"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "tyig"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "tyigg"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "tyigs"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "tyin"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "tyinj"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "tyinh"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "tyid"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "tyil"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "tyilg"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "tyilm"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "tyilb"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "tyils"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "tyilt"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "tyilp"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "tyilh"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "tyim"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "tyib"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "tyibs"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "tyis"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "tyiss"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "tying"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "tyij"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "tyic"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "tyik"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "tyit"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "tyip"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "tyih"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "tig"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "tigg"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "tigs"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "tin"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "tinj"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "tinh"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "til"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "tilg"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "tilm"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "tilb"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "tils"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "tilt"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "tilp"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "tilh"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tim"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "tib"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "tibs"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "tis"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "tiss"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "ting"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "tij"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "tic"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "tik"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "tit"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "tip"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "tih"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "pag"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "pagg"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "pags"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "pan"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "panj"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "panh"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "pad"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "pal"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "palg"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "palm"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "palb"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "pals"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "palt"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "palp"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "palh"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "pam"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "pab"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "pabs"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "pas"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "pass"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "pang"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "paj"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "pac"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "pak"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "pat"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "pap"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "pah"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "pae"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "paeg"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "paegg"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "paegs"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "paen"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "paenj"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "paenh"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "paed"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "pael"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "paelg"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "paelm"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "paelb"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "paels"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "paelt"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "paelp"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "paelh"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "paem"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "paeb"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "paebs"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "paes"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "paess"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "paeng"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "paej"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "paec"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "paek"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "paet"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "paep"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "paeh"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "pya"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "pyag"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "pyagg"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "pyags"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "pyan"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "pyanj"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "pyanh"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "pyad"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "pyal"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "pyalg"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "pyalm"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "pyalb"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "pyals"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "pyalt"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "pyalp"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "pyalh"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "pyam"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "pyab"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "pyabs"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "pyas"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "pyass"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "pyang"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "pyaj"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "pyac"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "pyak"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "pyat"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "pyap"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "pyah"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "pyae"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "pyaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "pyaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "pyaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "pyaen"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "pyaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "pyaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "pyaed"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "pyael"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "pyaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "pyaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "pyaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "pyaels"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "pyaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "pyaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "pyaelh"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "pyaem"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "pyaeb"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "pyaebs"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "pyaes"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "pyaess"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "pyaeng"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "pyaej"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "pyaec"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "pyaek"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "pyaet"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "pyaep"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "pyaeh"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "peo"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "peog"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "peogg"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "peogs"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "peon"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "peonj"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "peonh"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "peod"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "peol"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "peolg"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "peolm"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "peolb"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "peols"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "peolt"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "peolp"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "peolh"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "peom"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "peob"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "peobs"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "peos"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "peoss"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "peong"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "peoj"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "peoc"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "peok"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "peot"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "peop"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "peoh"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "pe"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "peg"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "pegg"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "pegs"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "pen"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "penj"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "penh"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "ped"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "pel"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "pelg"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "pelm"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "pelb"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "pels"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "pelt"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "pelp"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "pelh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "pem"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "peb"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "pebs"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "pes"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "pess"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "peng"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "pej"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "pec"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "pek"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "pet"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "pep"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "peh"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "pyeo"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "pyeog"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "pyeogg"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "pyeogs"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "pyeon"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "pyeonj"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "pyeonh"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "pyeod"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "pyeol"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "pyeolg"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "pyeolm"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "pyeolb"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "pyeols"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "pyeolt"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "pyeolp"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "pyeolh"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "pyeom"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "pyeob"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "pyeobs"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "pyeos"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "pyeoss"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "pyeong"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "pyeoj"

    aput-object v4, v2, v3

    const-string/jumbo v3, "pyeoc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "pyeok"

    aput-object v3, v2, v6

    const-string/jumbo v3, "pyeot"

    aput-object v3, v2, v7

    const-string/jumbo v3, "pyeop"

    aput-object v3, v2, v8

    const-string/jumbo v3, "pyeoh"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "pye"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "pyeg"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "pyegg"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "pyegs"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "pyen"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "pyenj"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "pyenh"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "pyed"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "pyel"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "pyelg"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "pyelm"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "pyelb"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "pyels"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "pyelt"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "pyelp"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "pyelh"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "pyem"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "pyeb"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "pyebs"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "pyes"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "pyess"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "pyeng"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "pyej"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "pyec"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "pyek"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "pyet"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "pyep"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "pyeh"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "po"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "pog"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "pogg"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "pogs"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "pon"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "ponj"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "ponh"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "pod"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "pol"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "polg"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "polm"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "polb"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "pols"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "polt"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "polp"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "polh"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "pom"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "pob"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "pobs"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "pos"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "poss"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "pong"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "poj"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "poc"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "pok"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "pot"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "pop"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "poh"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "pwa"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "pwag"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "pwagg"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "pwags"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "pwan"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "pwanj"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "pwanh"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "pwad"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "pwal"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "pwalg"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "pwalm"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "pwalb"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "pwals"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "pwalt"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "pwalp"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "pwalh"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "pwam"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "pwab"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "pwabs"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "pwas"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "pwass"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "pwang"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "pwaj"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "pwac"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "pwak"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "pwat"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "pwap"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "pwah"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "pwae"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "pwaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "pwaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "pwaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "pwaen"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "pwaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "pwaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "pwaed"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "pwael"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "pwaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "pwaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "pwaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "pwaels"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "pwaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "pwaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "pwaelh"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "pwaem"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "pwaeb"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "pwaebs"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "pwaes"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "pwaess"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "pwaeng"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "pwaej"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "pwaec"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "pwaek"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "pwaet"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "pwaep"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "pwaeh"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "poe"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "poeg"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "poegg"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "poegs"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "poen"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "poenj"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "poenh"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "poed"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "poel"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "poelg"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "poelm"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "poelb"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "poels"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "poelt"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "poelp"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "poelh"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "poem"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "poeb"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "poebs"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "poes"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "poess"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "poeng"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "poej"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "poec"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "poek"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "poet"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "poep"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "poeh"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "pyo"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "pyog"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "pyogg"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "pyogs"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "pyon"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "pyonj"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "pyonh"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "pyod"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "pyol"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "pyolg"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "pyolm"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "pyolb"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "pyols"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "pyolt"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "pyolp"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "pyolh"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "pyom"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "pyob"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "pyobs"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "pyos"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "pyoss"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "pyong"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "pyoj"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "pyoc"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "pyok"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "pyot"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "pyop"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "pyoh"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "pu"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "pug"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "pugg"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "pugs"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "pun"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "punj"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "punh"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "pud"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "pul"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "pulg"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "pulm"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "pulb"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "puls"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "pult"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "pulp"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "pulh"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "pum"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "pub"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "pubs"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "pus"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "puss"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "pung"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "puj"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "puc"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "puk"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "put"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "pup"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "puh"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "pweo"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "pweog"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "pweogg"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "pweogs"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "pweon"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "pweonj"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "pweonh"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "pweod"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "pweol"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "pweolg"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "pweolm"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "pweolb"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "pweols"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "pweolt"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "pweolp"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "pweolh"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "pweom"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "pweob"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "pweobs"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "pweos"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "pweoss"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "pweong"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "pweoj"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "pweoc"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "pweok"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "pweot"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "pweop"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "pweoh"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "pwe"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "pweg"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "pwegg"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "pwegs"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "pwen"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "pwenj"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "pwenh"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "pwed"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "pwel"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "pwelg"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "pwelm"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "pwelb"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "pwels"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "pwelt"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "pwelp"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "pwelh"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "pwem"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "pweb"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "pwebs"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "pwes"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "pwess"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "pweng"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "pwej"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "pwec"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "pwek"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "pwet"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "pwep"

    aput-object v4, v2, v3

    const-string/jumbo v3, "pweh"

    aput-object v3, v2, v5

    const-string/jumbo v3, "pwi"

    aput-object v3, v2, v6

    const-string/jumbo v3, "pwig"

    aput-object v3, v2, v7

    const-string/jumbo v3, "pwigg"

    aput-object v3, v2, v8

    const-string/jumbo v3, "pwigs"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "pwin"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "pwinj"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "pwinh"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "pwid"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "pwil"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "pwilg"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "pwilm"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "pwilb"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "pwils"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "pwilt"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "pwilp"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "pwilh"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "pwim"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "pwib"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "pwibs"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "pwis"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "pwiss"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "pwing"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "pwij"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "pwic"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "pwik"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "pwit"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "pwip"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "pwih"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "pyu"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "pyug"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "pyugg"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "pyugs"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "pyun"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "pyunj"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "pyunh"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "pyud"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "pyul"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "pyulg"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "pyulm"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "pyulb"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "pyuls"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "pyult"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "pyulp"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "pyulh"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "pyum"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "pyub"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "pyubs"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "pyus"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "pyuss"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "pyung"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "pyuj"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "pyuc"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "pyuk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "pyut"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "pyup"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "pyuh"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "peu"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "peug"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "peugg"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "peugs"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "peun"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "peunj"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "peunh"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "peud"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "peul"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "peulg"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "peulm"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "peulb"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "peuls"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "peult"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "peulp"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "peulh"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "peum"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "peub"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "peubs"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "peus"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "peuss"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "peung"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "peuj"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "peuc"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "peuk"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "peut"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "peup"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "peuh"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "pyi"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "pyig"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "pyigg"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "pyigs"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "pyin"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "pyinj"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "pyinh"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "pyid"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "pyil"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "pyilg"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "pyilm"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "pyilb"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "pyils"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "pyilt"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "pyilp"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "pyilh"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "pyim"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "pyib"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "pyibs"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "pyis"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "pyiss"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "pying"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "pyij"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "pyic"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "pyik"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "pyit"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "pyip"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "pyih"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "pig"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "pigg"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "pigs"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "pin"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "pinj"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "pinh"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "pid"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "pil"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "pilg"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "pilm"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "pilb"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "pils"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "pilt"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "pilp"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "pilh"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "pim"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "pib"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "pibs"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "pis"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "piss"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "ping"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "pij"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "pic"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "pik"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "pit"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "pip"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "pih"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "hag"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "hagg"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "hags"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "han"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "hanj"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "hanh"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "had"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "hal"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "halg"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "halm"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "halb"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "hals"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "halt"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "halp"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "halh"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "ham"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "hab"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "habs"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "has"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "hass"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "hang"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "haj"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "hac"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "hak"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "hat"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "hap"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "hah"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "hae"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "haeg"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "haegg"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "haegs"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "haen"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "haenj"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "haenh"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "haed"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "hael"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "haelg"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "haelm"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "haelb"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "haels"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "haelt"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "haelp"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "haelh"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "haem"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "haeb"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "haebs"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "haes"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "haess"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "haeng"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "haej"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "haec"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "haek"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "haet"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "haep"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "haeh"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "hya"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "hyag"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "hyagg"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "hyags"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "hyan"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "hyanj"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "hyanh"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "hyad"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "hyal"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "hyalg"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "hyalm"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "hyalb"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "hyals"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "hyalt"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "hyalp"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "hyalh"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "hyam"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "hyab"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "hyabs"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "hyas"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "hyass"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "hyang"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "hyaj"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "hyac"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "hyak"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "hyat"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "hyap"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "hyah"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "hyae"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "hyaeg"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "hyaegg"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "hyaegs"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "hyaen"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "hyaenj"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "hyaenh"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "hyaed"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "hyael"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "hyaelg"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "hyaelm"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "hyaelb"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "hyaels"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "hyaelt"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "hyaelp"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "hyaelh"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "hyaem"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "hyaeb"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "hyaebs"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "hyaes"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "hyaess"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "hyaeng"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "hyaej"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "hyaec"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "hyaek"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "hyaet"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "hyaep"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "hyaeh"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "heo"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "heog"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "heogg"

    aput-object v4, v2, v3

    const-string/jumbo v3, "heogs"

    aput-object v3, v2, v5

    const-string/jumbo v3, "heon"

    aput-object v3, v2, v6

    const-string/jumbo v3, "heonj"

    aput-object v3, v2, v7

    const-string/jumbo v3, "heonh"

    aput-object v3, v2, v8

    const-string/jumbo v3, "heod"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "heol"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "heolg"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "heolm"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "heolb"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "heols"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "heolt"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "heolp"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "heolh"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "heom"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "heob"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "heobs"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "heos"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "heoss"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "heong"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "heoj"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "heoc"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "heok"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "heot"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "heop"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "heoh"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "heg"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "hegg"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "hegs"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "hen"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "henj"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "henh"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "hed"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "hel"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "helg"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "helm"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "helb"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "hels"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "helt"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "help"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "helh"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "hem"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "heb"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "hebs"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "hes"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "hess"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "heng"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "hej"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "hec"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "hek"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "het"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "hep"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "heh"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "hyeo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "hyeog"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "hyeogg"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "hyeogs"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "hyeon"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "hyeonj"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "hyeonh"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "hyeod"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "hyeol"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "hyeolg"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "hyeolm"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "hyeolb"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "hyeols"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "hyeolt"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "hyeolp"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "hyeolh"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "hyeom"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "hyeob"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "hyeobs"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "hyeos"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "hyeoss"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "hyeong"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "hyeoj"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "hyeoc"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "hyeok"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "hyeot"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "hyeop"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "hyeoh"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "hye"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "hyeg"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "hyegg"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "hyegs"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "hyen"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "hyenj"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "hyenh"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "hyed"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "hyel"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "hyelg"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "hyelm"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "hyelb"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "hyels"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "hyelt"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "hyelp"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "hyelh"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "hyem"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "hyeb"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "hyebs"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "hyes"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "hyess"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "hyeng"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "hyej"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "hyec"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "hyek"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "hyet"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "hyep"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "hyeh"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "hog"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "hogg"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "hogs"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "hon"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "honj"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "honh"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "hod"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "hol"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "holg"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "holm"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "holb"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "hols"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "holt"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "holp"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "holh"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "hom"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "hob"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "hobs"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "hos"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "hoss"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "hong"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "hoj"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "hoc"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "hok"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "hot"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "hop"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "hoh"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "hwa"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "hwag"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "hwagg"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "hwags"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "hwan"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "hwanj"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "hwanh"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "hwad"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "hwal"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "hwalg"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "hwalm"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "hwalb"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "hwals"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "hwalt"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "hwalp"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "hwalh"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "hwam"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "hwab"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "hwabs"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "hwas"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "hwass"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "hwang"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "hwaj"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "hwac"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "hwak"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "hwat"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "hwap"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "hwah"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "hwae"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "hwaeg"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "hwaegg"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "hwaegs"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "hwaen"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "hwaenj"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "hwaenh"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "hwaed"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "hwael"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "hwaelg"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "hwaelm"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "hwaelb"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "hwaels"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "hwaelt"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "hwaelp"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "hwaelh"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "hwaem"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "hwaeb"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "hwaebs"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "hwaes"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "hwaess"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "hwaeng"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "hwaej"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "hwaec"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "hwaek"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "hwaet"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "hwaep"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "hwaeh"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "hoe"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "hoeg"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "hoegg"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "hoegs"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "hoen"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "hoenj"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "hoenh"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "hoed"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "hoel"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "hoelg"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "hoelm"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "hoelb"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "hoels"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "hoelt"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "hoelp"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "hoelh"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "hoem"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "hoeb"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "hoebs"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "hoes"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "hoess"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "hoeng"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "hoej"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "hoec"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "hoek"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "hoet"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "hoep"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "hoeh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "hyo"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "hyog"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "hyogg"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "hyogs"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "hyon"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "hyonj"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "hyonh"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "hyod"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "hyol"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "hyolg"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "hyolm"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "hyolb"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "hyols"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "hyolt"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "hyolp"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "hyolh"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "hyom"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "hyob"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "hyobs"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "hyos"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "hyoss"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "hyong"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "hyoj"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "hyoc"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "hyok"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "hyot"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "hyop"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "hyoh"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "hu"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "hug"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "hugg"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "hugs"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "hun"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "hunj"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "hunh"

    aput-object v4, v2, v3

    const-string/jumbo v3, "hud"

    aput-object v3, v2, v5

    const-string/jumbo v3, "hul"

    aput-object v3, v2, v6

    const-string/jumbo v3, "hulg"

    aput-object v3, v2, v7

    const-string/jumbo v3, "hulm"

    aput-object v3, v2, v8

    const-string/jumbo v3, "hulb"

    aput-object v3, v2, v9

    const/16 v3, 0xd0

    const-string/jumbo v4, "huls"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "hult"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "hulp"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "hulh"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "hum"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "hub"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "hubs"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "hus"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "huss"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "hung"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "huj"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "huc"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "huk"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "hut"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "hup"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "huh"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "hweo"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "hweog"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "hweogg"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "hweogs"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "hweon"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "hweonj"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "hweonh"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "hweod"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "hweol"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "hweolg"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "hweolm"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "hweolb"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "hweols"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "hweolt"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "hweolp"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "hweolh"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "hweom"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "hweob"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "hweobs"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "hweos"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "hweoss"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "hweong"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "hweoj"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "hweoc"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "hweok"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "hweot"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "hweop"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "hweoh"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "hwe"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "hweg"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "hwegg"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "hwegs"

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
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

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
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters15;->characters:Ljava/util/HashMap;

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
