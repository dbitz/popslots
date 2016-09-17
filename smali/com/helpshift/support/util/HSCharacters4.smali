.class public Lcom/helpshift/support/util/HSCharacters4;
.super Ljava/lang/Object;
.source "HSCharacters4.java"


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
    const/16 v9, 0x50

    const/16 v8, 0x4f

    const/16 v7, 0x4e

    const/16 v6, 0x4d

    const/16 v5, 0x33

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "apartment"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "alpha"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "ampere"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "are"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "inning"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "inch"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "won"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "escudo"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "acre"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "ounce"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "ohm"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "kai-ri"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "carat"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "calorie"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "gallon"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "gamma"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "giga"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "guinea"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "curie"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "guilder"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "kilo"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "kilogram"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kilometer"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "kilowatt"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gram"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "gram ton"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "cruzeiro"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "krone"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "case"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "koruna"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "co-op"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "cycle"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "centime"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "shilling"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "centi"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "cent"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "dozen"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "desi"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "dollar"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "ton"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "nano"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "knot"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "heights"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "percent"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "parts"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "barrel"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "piaster"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "picul"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "pico"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "building"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "farad"

    aput-object v4, v2, v3

    const-string/jumbo v3, "feet"

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "bushel"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "franc"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "hectare"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "peso"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "pfennig"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "hertz"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "pence"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "page"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "beta"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "point"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "volt"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "hon"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "pound"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "hall"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "horn"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "micro"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "mile"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "mach"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "mark"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "mansion"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "micron"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "milli"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "millibar"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "mega"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "megaton"

    aput-object v4, v2, v3

    const-string/jumbo v3, "meter"

    aput-object v3, v2, v6

    const-string/jumbo v3, "yard"

    aput-object v3, v2, v7

    const-string/jumbo v3, "yard"

    aput-object v3, v2, v8

    const-string/jumbo v3, "yuan"

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "liter"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "lira"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "rupee"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "ruble"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "rem"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "roentgen"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "watt"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "0h"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "1h"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "2h"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "3h"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "4h"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "5h"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "6h"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "7h"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "8h"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "9h"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "10h"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "11h"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "12h"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "13h"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "14h"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "15h"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "16h"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "17h"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "18h"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "19h"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "20h"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "21h"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "22h"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "23h"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "24h"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "HPA"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "da"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "AU"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "bar"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "oV"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "pc"

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

    const-string/jumbo v4, "Heisei"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Syouwa"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Taisyou"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Meiji"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Inc."

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "pA"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "nA"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "microamp"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "mA"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "kA"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "kB"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "MB"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "GB"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "cal"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "kcal"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "pF"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "nF"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "microFarad"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "microgram"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "mg"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "kg"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Hz"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "kHz"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "MHz"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "GHz"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "THz"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "microliter"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "ml"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "dl"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "kl"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "fm"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "nm"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "micrometer"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "mm"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "cm"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "km"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "mm^2"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "cm^2"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "m^2"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "km^2"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "mm^4"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "cm^3"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "m^3"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "km^3"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "m/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "m/s^2"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Pa"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "kPa"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "MPa"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "GPa"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "rad"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "rad/s"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "rad/s^2"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "ps"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "ns"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "microsecond"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ms"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "pV"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "nV"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "microvolt"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "mV"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "kV"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "MV"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "pW"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "nW"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "microwatt"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "mW"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "kW"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "MW"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "kOhm"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "MOhm"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "a.m."

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Bq"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "cc"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "cd"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "C/kg"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Co."

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "dB"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Gy"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "HP"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "in"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "K.K."

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "KM"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "kt"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "lm"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "ln"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "log"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "lx"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "mb"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "mil"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "mol"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "pH"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "p.m."

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "PPM"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "PR"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "sr"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Sv"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Wb"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "1d"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "2d"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "3d"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "4d"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "5d"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "6d"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "7d"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "8d"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "9d"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "10d"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "11d"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "12d"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "13d"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "14d"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "15d"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "16d"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "17d"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "18d"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "19d"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "20d"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "21d"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "22d"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "23d"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "24d"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "25d"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "26d"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "27d"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "28d"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "29d"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "30d"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "31d"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "[?] "

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

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "[?] "

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

    .line 16
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Kao "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Shang "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Shang "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Gai "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Qie "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Cong "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Diu "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Diu "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Sang "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Gun "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Qiang "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Chuan "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Chan "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Zhuo "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Ha "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Pie "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Nai "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Shime "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Zhe "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Zha "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Hu "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Fa "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Le "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Guai "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Mie "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Gai "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Diu "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Hal "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Twul "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Kel "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Ol "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Luan "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Cal "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Sol "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "El "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Cwul "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Luan "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Zheng "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Sui "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Gen "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "Gen "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Tou "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Wang "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Kang "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Ta "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Heng "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Mu "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "La "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Wang "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Ze "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Pu "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Reng "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Cong "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Fo "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Lun "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Sya "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Ta "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Chao "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Sa "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Mu "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Men "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Chao "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Wang "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Pei "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Dun "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Kang "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Fa "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Cui "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Chuan "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Chuan "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Che "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Shang "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Lun "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Nu "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Xie "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "Ban "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Beng "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Zheng "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Wei "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Di "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Zhu "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Zuo "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "She "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Fo "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Zuo "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Kou "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Ning "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Wa "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Ka "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Pei "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Huai "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Bai "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Fa "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Ming "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Hen "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Tiao "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Kan "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Gai "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Kua "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Guang "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Mou "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Lun "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Zai "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Ko "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Ce "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Chai "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Ning "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Zuo "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Cu "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Ku "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Lang "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Zu "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Pai "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Che "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Lia "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Pai "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Zan "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Cui "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Lia "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Men "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Dao "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Tan "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Chui "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Sui "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Kong "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Lun "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Zhuo "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Leng "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Hun "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Zi "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "Ben "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Nai "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Cai "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Zhai "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Nuan "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Chun "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Ruo "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Ti "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Wei "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Pian "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Yan "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Wo "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Che "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Kan "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Zuo "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Duan "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Ce "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Zhen "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Tou "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Tou "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Za "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Rong "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Gou "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Bang "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Tan "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Suo "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Fa "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Zai "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Nuo "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Cui "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Zao "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Zong "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Chuan "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Zhai "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Cou "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Shang "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Qiang "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Zhang "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Man "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Tan "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Ying "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Tui "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Zun "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Pu "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Guang "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Liao "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Deng "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Chuan "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Seng "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Su "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Jiang "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Sai "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Dang "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Zai "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Bin "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Chai "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Lan "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Ning "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Qiong "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Biao "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Zan "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Chen "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Teng "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Chan "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "Rang "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Luo "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Zan "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Nuo "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Nang "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Zan "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Xiong "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Chong "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Zhao "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Xiong "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Guang "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Dui "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Dui "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Mian "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Tu "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Chang "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Er "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "Dui "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Dang "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Bai "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Ru "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Wang "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Nei "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Lan "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Tian "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Ppwun "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Shou "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Ran "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Nei "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Gang "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Ran "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Ce "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Ce "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Zai "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Jiong "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Mou "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Gou "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Rong "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Kan "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Guan "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Ming "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Kou "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Lam "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Gang "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Bing "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Chong "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Leng "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Pan "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Zhun "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Song "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Cou "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Cang "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Ming "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Zhuen "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Cui "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Ning "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Tako "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Mok "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Feng "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Kai "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Huang "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Kai "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Gan "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Deng "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Xiong "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Dang "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Zao "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Dao "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Dao "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Ren "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Chuang "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Qie "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Kan "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Cun "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Xing "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Hua "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Yue "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Ze "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Gang "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Chuang "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Zhong "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Pan "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Bie "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Bie "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Gen "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Dao "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Chuang "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Kui "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Ku "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Shua "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Ci "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Kai "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Lou "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Gen "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Ze "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Cuo "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "La "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Qian "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Cha "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Chuang "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Gua "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Cuo "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Pou "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Chuang "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Gang "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Wan "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Zhuo "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Duan "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Kai "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Chuang "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Tuan "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Fou "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Shan "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Kou "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Qiao "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Hua "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Zhuo "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Liu "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Tang "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Jian "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Chan "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Cuan "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Mo "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Ban "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Keng "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Nu "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Zhu "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Miao "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Kou "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Wa "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Mou "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Jing "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Min "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Lang "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Pou "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Meng "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Lai "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Kai "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Mian "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Kan "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Weng "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Mu "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Piao "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Qiang "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Xun "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Che "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Rang "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Gou "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Yun "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Mwun "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Nay "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Gai "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Gai "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Bao "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Cong "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "Xiong "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Peng "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Pu "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "An "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Da "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Qiong "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Hua "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Nao "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Fang "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Za "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Jiang "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Kang "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Jiang "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Qie "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Zang "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Tou "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Lian "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Lian "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "Suan "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Pi "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Qia "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Xin "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Qian "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Nian "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Sa "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Zu "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Sheng "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Ban "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Wan "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Hua "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Xie "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Wan "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "Bei "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Zu "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Zhuo "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Mai "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Nan "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Dan "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Shuai "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Qia "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Wo "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Ang "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Qiong "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Mao "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Que "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "Luan "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Juan "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Jin "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Que "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Qing "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Zhan "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Zhe "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "She "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Ce "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Pang "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Ti "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "She "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Zui "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Cuo "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Ce "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Jue "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Sha "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Dian "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Chu "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Ao "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Gui "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Chang "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Lan "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Gong "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Uk "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Lei "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Du "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Zhuan "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "San "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Can "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Cha "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Shuang "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Fan "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Shou "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Guai "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Fa "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Ruo "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Shu "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Zhuo "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Shou "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Bian "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Jia "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "Pan "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Sou "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Die "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Rui "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Cong "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Kou "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Gua "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Kou "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "Zhao "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Ding "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Tai "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Qiu "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Po "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Xie "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Tan "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Mie "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Mang "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Diao "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Cun "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "Ming "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "Tu "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "Ye "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "A "

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Ma "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Chou "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "Lin "

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "Tun "

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "Yin "

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "Fei "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "Qin "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Jie "

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Fou "

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Dun "

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Fen "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "Ting "

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "Hang "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Shun "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Wu "

    aput-object v3, v2, v5

    const/16 v3, 0x34

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "Chao "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Ne "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "Xue "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "Chui "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Dou "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "Hou "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Jun "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Lu "

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Mei "

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "Cheng "

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "Gao "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Jiao "

    aput-object v4, v2, v3

    const-string/jumbo v3, "Hong "

    aput-object v3, v2, v6

    const-string/jumbo v3, "Chi "

    aput-object v3, v2, v7

    const-string/jumbo v3, "Sheng "

    aput-object v3, v2, v8

    const-string/jumbo v3, "Ne "

    aput-object v3, v2, v9

    const/16 v3, 0x51

    const-string/jumbo v4, "Tun "

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "Dai "

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "Ou "

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "Bai "

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "Qiang "

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "Wu "

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "Quan "

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "Pen "

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "Wen "

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "Ni "

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "M "

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Ling "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Ran "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "You "

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "Shi "

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Tie "

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "Ping "

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "Wei "

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Xu "

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Nao "

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "Xia "

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Pei "

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "Hu "

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Ming "

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Da "

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Qu "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Ju "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "Gem "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Za "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "Tuo "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "Pou "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Pao "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "Yang "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "Hai "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "Jiu "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Yong "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "Fu "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "Que "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Wa "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "Ka "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "Gu "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Ka "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "Zuo "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "Dong "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "Ning "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "Tha "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "Si "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "Huo "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "Qi "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "Er "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "Guang "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Xi "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Lie "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Zi "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "Mie "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "Mi "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "Zhi "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "Yao "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "Zhou "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "Shuai "

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Zan "

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Ke "

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Hui "

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Kua "

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Huai "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Tao "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "Xuan "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Xiu "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Wai "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Yan "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Yi "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Pin "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Shen "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "Tong "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Hong "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Xiong "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "Wa "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Ha "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "Zai "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "Yu "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Di "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "Pai "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Xiang "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Ai "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "Hen "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "Kuang "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "Ya "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "Da "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Bi "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "Yue "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "Hua "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "Sasou "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "Kuai "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "Duo "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Ji "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Nong "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Mou "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "Yo "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Hao "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "Yuan "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Long "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "Pou "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "Mang "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "E "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "Chi "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "Shao "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "Li "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "Na "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "Zu "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "He "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "Ku "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Xiao "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "Xian "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "Lao "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "Bo "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Zhe "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Zha "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Liang "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "Ba "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "Mie "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "Le "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "Sui "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "Fou "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Bu "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "Han "

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Heng "

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "Geng "

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "Shuo "

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "Ge "

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public containsKey(II)Z
    .locals 3
    .param p1, "high"    # I
    .param p2, "low"    # I

    .prologue
    .line 39
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 40
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
    .line 44
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters4;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 45
    .local v0, "entries":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v1, ""

    .line 48
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p2

    goto :goto_0
.end method
