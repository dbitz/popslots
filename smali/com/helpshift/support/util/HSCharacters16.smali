.class public Lcom/helpshift/support/util/HSCharacters16;
.super Ljava/lang/Object;
.source "HSCharacters16.java"


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
    const/16 v9, 0xfc

    const/16 v8, 0xfb

    const/16 v7, 0xfa

    const/16 v6, 0xf9

    const/16 v5, 0xd7

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "hwen"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "hwenj"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "hwenh"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "hwed"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "hwel"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "hwelg"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "hwelm"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "hwelb"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "hwels"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "hwelt"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "hwelp"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "hwelh"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "hwem"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "hweb"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "hwebs"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "hwes"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "hwess"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "hweng"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "hwej"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "hwec"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "hwek"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "hwet"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "hwep"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "hweh"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "hwi"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "hwig"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "hwigg"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "hwigs"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "hwin"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "hwinj"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "hwinh"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "hwid"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "hwil"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "hwilg"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "hwilm"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "hwilb"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "hwils"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "hwilt"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "hwilp"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "hwilh"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "hwim"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "hwib"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "hwibs"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "hwis"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "hwiss"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "hwing"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "hwij"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "hwic"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "hwik"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "hwit"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "hwip"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "hwih"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "hyu"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "hyug"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "hyugg"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "hyugs"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "hyun"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "hyunj"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "hyunh"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "hyud"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "hyul"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "hyulg"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "hyulm"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "hyulb"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "hyuls"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "hyult"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "hyulp"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "hyulh"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "hyum"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "hyub"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "hyubs"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "hyus"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "hyuss"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "hyung"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "hyuj"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "hyuc"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "hyuk"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "hyut"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "hyup"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "hyuh"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "heu"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "heug"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "heugg"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "heugs"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "heun"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "heunj"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "heunh"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "heud"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "heul"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "heulg"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "heulm"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "heulb"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "heuls"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "heult"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "heulp"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "heulh"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "heum"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "heub"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "heubs"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "heus"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "heuss"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "heung"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "heuj"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "heuc"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "heuk"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "heut"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "heup"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "heuh"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "hyi"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "hyig"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "hyigg"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "hyigs"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "hyin"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "hyinj"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "hyinh"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "hyid"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "hyil"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "hyilg"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "hyilm"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "hyilb"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "hyils"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "hyilt"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "hyilp"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "hyilh"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "hyim"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "hyib"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "hyibs"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "hyis"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "hyiss"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "hying"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "hyij"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "hyic"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "hyik"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "hyit"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "hyip"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "hyih"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "hig"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "higg"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "higs"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "hin"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "hinj"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "hinh"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "hid"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "hil"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "hilg"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "hilm"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "hilb"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "hils"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "hilt"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "hilp"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "hilh"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "him"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "hib"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "hibs"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "his"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "hiss"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "hing"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "hij"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "hic"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "hik"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "hit"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "hip"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "hih"

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

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

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

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Kay "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Kayng "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Ko "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Kol "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Koc "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Kwi "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Kwi "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Kyun "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Kul "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Kum "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "La "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Nak "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Nak "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Nak "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Nak "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Nak "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Nak "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Nak "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Nam "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Nam "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Nam "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Nam "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Nap "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Nap "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Nap "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Nay "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Nayng "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "No "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Nok "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Nok "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Nok "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Nok "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Nok "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Nok "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Non "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Noy "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Noy "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Noy "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Noy "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Nwu "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Nuk "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Nuk "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Num "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Nung "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Nung "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Nung "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Nung "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Nung "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Twu "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "La "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Lak "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Lak "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Lan "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Lyeng "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Lo "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Lyul "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Pey "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Pen "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Pyen "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Pwu "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Pwul "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Sak "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Sak "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Sam "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Sayk "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Sayng "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Sep "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Sey "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Sway "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Sin "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Sim "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Sip "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Yak "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Yak "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Yek "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Yek "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Yek "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Yek "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Yen "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Yel "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Yel "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Yel "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Yel "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Yel "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Yel "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Yem "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Yem "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Yem "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Yem "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Yem "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Yep "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Yeng "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Yey "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Yey "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Yey "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Yey "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "O "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Wun "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Yuk "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Yuk "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Yuk "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Yun "

    aput-object v3, v2, v5

    const/16 v3, 0xd8

    const-string/jumbo v4, "Yul "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Yul "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Yul "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Yul "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Yung "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "I "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Ik "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Ik "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "In "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "In "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "In "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "In "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "In "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "In "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "In "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Im "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Im "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Im "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Ip "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Ip "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Ip "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Cang "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Cek "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Ci "

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "Cip "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Chek "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Chey "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Thak "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Thak "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Thang "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Thayk "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Thong "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Pho "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Phok "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Hang "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Hang "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Hyen "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Hwak "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Hagi "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Guan "

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

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

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

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ff"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "fi"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "fl"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "ffi"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "ffl"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "st"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "st"

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

    const/16 v3, 0x11

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "mn"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "vn"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "mkh"

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

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "ay"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "vo"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "l"

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

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

    const/16 v3, 0x11

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    const/16 v1, 0xfd

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

    const/16 v3, 0x11

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

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

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    const/16 v1, 0xfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

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

    const/16 v3, 0x11

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

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

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "~"

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

    const-string/jumbo v4, ".."

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "--"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, ") "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "} "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "] "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[("

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, ")] "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "<<"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, ">> "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "> "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "] "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "}"

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

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "}"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "}"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "&"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "$"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "%"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "@"

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

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "$"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "%"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "&"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

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

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "}"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "tu"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "ku"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "si"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "su"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "tu"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "hu"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "ru"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "gg"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "gs"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "nj"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "nh"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "lg"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "lm"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "lb"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ls"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "lt"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "lp"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "rh"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "bb"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "bs"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "jj"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "h"

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

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "yae"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "eo"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "yeo"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "ye"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "wae"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "weo"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const-string/jumbo v3, "yu"

    aput-object v3, v2, v5

    const/16 v3, 0xd8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "eu"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "i"

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

    const-string/jumbo v4, "/C"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "PS"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Y="

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "W="

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "O"

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

    const-string/jumbo v3, "{"

    aput-object v3, v2, v6

    const-string/jumbo v3, "|"

    aput-object v3, v2, v7

    const-string/jumbo v3, "}"

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    const/16 v1, 0x1d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const-string/jumbo v3, "H"

    aput-object v3, v2, v5

    const/16 v3, 0xd8

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const-string/jumbo v3, "p"

    aput-object v3, v2, v6

    const-string/jumbo v3, "q"

    aput-object v3, v2, v7

    const-string/jumbo v3, "r"

    aput-object v3, v2, v8

    const-string/jumbo v3, "s"

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    const/16 v1, 0x1d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "O"

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

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const-string/jumbo v3, "D"

    aput-object v3, v2, v5

    const/16 v3, 0xd8

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const-string/jumbo v3, "l"

    aput-object v3, v2, v6

    const-string/jumbo v3, "m"

    aput-object v3, v2, v7

    const-string/jumbo v3, "n"

    aput-object v3, v2, v8

    const-string/jumbo v3, "o"

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    const/16 v1, 0x1d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Alpha"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Beta"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Gamma"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Delta"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Epsilon"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Zeta"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Eta"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Theta"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Iota"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Kappa"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Lamda"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Mu"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Nu"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Xi"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Omicron"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Pi"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Rho"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Theta"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Sigma"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Tau"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Upsilon"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Phi"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Chi"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Psi"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Omega"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "nabla"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "alpha"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "beta"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "gamma"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "delta"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "epsilon"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "zeta"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "eta"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "theta"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "iota"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "kappa"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "lamda"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "xi"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "omicron"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "rho"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "sigma"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "sigma"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "tai"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "upsilon"

    aput-object v4, v2, v3

    const-string/jumbo v3, "phi"

    aput-object v3, v2, v5

    const/16 v3, 0xd8

    const-string/jumbo v4, "chi"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "psi"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "omega"

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

    const/16 v1, 0x1d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

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

    const/16 v3, 0x11

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const-string/jumbo v3, "9"

    aput-object v3, v2, v5

    const/16 v3, 0xd8

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const-string/jumbo v3, "3"

    aput-object v3, v2, v6

    const-string/jumbo v3, "4"

    aput-object v3, v2, v7

    const-string/jumbo v3, "5"

    aput-object v3, v2, v8

    const-string/jumbo v3, "6"

    aput-object v3, v2, v9

    const/16 v3, 0xfd

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "1d7ff"

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
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

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
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters16;->characters:Ljava/util/HashMap;

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
