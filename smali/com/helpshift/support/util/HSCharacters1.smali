.class public Lcom/helpshift/support/util/HSCharacters1;
.super Ljava/lang/Object;
.source "HSCharacters1.java"


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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    .line 10
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\\u0000"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\\u0001"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\\u0002"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\\u0003"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\\u0004"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\\u0005"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\\u0006"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\\u0007"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\\u0008"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\\u0009"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\\u000a"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\\u000b"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\\u000c"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\\u000d"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\\u000e"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\\u000f"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\\u0010"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\\u0011"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\\u0012"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\\u0013"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\\u0014"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\\u0015"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\\u0016"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\\u0017"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\\u0018"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\\u0019"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\\u001a"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\\u001b"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\\u001c"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\\u001d"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\\u001e"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\\u001f"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "$"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "%"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "&"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "}"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "\u007f"

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

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "C/"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "PS"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "$?"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "Y="

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "SS"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "(c)"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "<<"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "(r)"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "deg"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "+-"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, ">>"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "1/4"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "1/2"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "3/4"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "AE"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "C"

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

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Th"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "n"

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

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "A"

    aput-object v3, v2, v5

    const-string/jumbo v3, "a"

    aput-object v3, v2, v6

    const-string/jumbo v3, "A"

    aput-object v3, v2, v7

    const-string/jumbo v3, "a"

    aput-object v3, v2, v8

    const-string/jumbo v3, "A"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "c"

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

    const/16 v3, 0x11

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

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

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "g"

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

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "i"

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

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "IJ"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "ij"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\'n"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "NG"

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

    const-string/jumbo v4, "OE"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "hv"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "OI"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "oi"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "YR"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "SH"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "ZH"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "ZH"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "||"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "|="

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "DZ"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "Dz"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "LJ"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "Lj"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "lj"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "NJ"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Nj"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "nj"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "AE"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "ZH"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "DZ"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Dz"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "HV"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "AE"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "A"

    aput-object v3, v2, v5

    const-string/jumbo v3, "a"

    aput-object v3, v2, v6

    const-string/jumbo v3, "A"

    aput-object v3, v2, v7

    const-string/jumbo v3, "a"

    aput-object v3, v2, v8

    const-string/jumbo v3, "E"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "OU"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "ou"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "db"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "qp"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "lZ"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "OE"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "dZ"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "tS"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "tC"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "fN"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "ls"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "lz"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "WW"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "]]"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "?"

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

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\""

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

    .line 19
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

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

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "x"

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

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, ","

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

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "?"

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

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Th"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "Ks"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Ph"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Kh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Ps"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "ps"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "&"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "St"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "st"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Sp"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "sp"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "Sh"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "Kh"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "CH"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "Ti"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "j"

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

    .line 22
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Ie"

    aput-object v3, v2, v5

    const-string/jumbo v3, "Yo"

    aput-object v3, v2, v6

    const-string/jumbo v3, "Dj"

    aput-object v3, v2, v7

    const-string/jumbo v3, "Gj"

    aput-object v3, v2, v8

    const-string/jumbo v3, "Ie"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "Dz"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "Yi"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "Lj"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "Nj"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "Tsh"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "Kj"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "Dzh"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "Zh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "Kh"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "Ts"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "Sh"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "Shch"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "Yu"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "Ya"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "shch"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "ie"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "dj"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "gj"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "ie"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "lj"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "nj"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "tsh"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "kj"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "dzh"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "Ie"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "ie"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "Ie"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "ie"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "Io"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "io"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "Ks"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "ks"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "Ps"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "ps"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "Ot"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "ot"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "*1000*"

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

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "*100.000*"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "*1.000.000*"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "R\'"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "r\'"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "G\'"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "g\'"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "G\'"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "g\'"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "G\'"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "g\'"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "Zh\'"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "zh\'"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "Z\'"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "z\'"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "K\'"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "k\'"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "K\'"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "k\'"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "K\'"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "k\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "K\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "k\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "N\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "n\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "Ng"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "P\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "p\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Kh"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "S\'"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "s\'"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "T\'"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "t\'"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "U\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "u\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "Kh\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "kh\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "Tts"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "tts"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "Ch\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "ch\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Ch\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "ch\'"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "Ch\'"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "ch\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "Zh"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "K\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "k\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "N\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "n\'"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "ch"

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

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "Ae"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "Ie"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "ie"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "Zh"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "Dz"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "e"

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

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "[?]"

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

    .line 25
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

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

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "T`"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "Zh"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "Kh"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "Ts"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "Dz"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "Gh"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "Sh"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "Ch`"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "Rh"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "Ts`"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "P`"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "K`"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "t`"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "ch`"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "rh"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "ts`"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "p`"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "k`"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "ew"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "-"

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

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\'"

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

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "t"

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

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "oy"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "\""

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

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

    const-string/jumbo v4, ","

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

    const-string/jumbo v4, ";"

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

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "w\'"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "y\'"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "G"

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

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "an"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "un"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "in"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\'"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "%"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "*"

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

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\'w"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\'u"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\'y"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "\'h"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "dy"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "cch"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "Dt"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "GH"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "hy"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "y\'"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "ae"

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

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "#"

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

    const-string/jumbo v4, "^"

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

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "Sh"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "Gh"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "&"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "+m"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "//"

    aput-object v3, v2, v5

    const-string/jumbo v3, "/"

    aput-object v3, v2, v6

    const-string/jumbo v3, ","

    aput-object v3, v2, v7

    const-string/jumbo v3, "!"

    aput-object v3, v2, v8

    const-string/jumbo v3, "!"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "}"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "yh"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "t"

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

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "hh"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ey"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "oa"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, ""

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "N"

    aput-object v3, v2, v6

    const-string/jumbo v3, "N"

    aput-object v3, v2, v7

    const-string/jumbo v3, "H"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "eN"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "oN"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "nnn"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "lll"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "eN"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "oN"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "AUM"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\'"

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

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "khh"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "ghh"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "dddh"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "rh"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "yy"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, " / "

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "."

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

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "l"

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

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "rh"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "yy"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "r\'"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "r`"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "Rs"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "Rs"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "1/"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "2/"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "3/"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "4/"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, " 1 - 1/"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "/16"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, ""

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "N"

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "uu"

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

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "bb"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "uu"

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

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "khh"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "ghh"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "f"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "G.E.O."

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

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "eN"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "oN"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "eN"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "oN"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "AUM"

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

    const-string/jumbo v4, "RR"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "9"

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

    .line 40
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "N"

    aput-object v3, v2, v6

    const-string/jumbo v3, "N"

    aput-object v3, v2, v7

    const-string/jumbo v3, "H"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "R"

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

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "rh"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "yy"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "LL"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "uu"

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

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "k"

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

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "tt"

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

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "t"

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

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "nnn"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "p"

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

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "lll"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "h"

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

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "uu"

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

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "+10+"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "+100+"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "+1000+"

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

    .line 43
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "N"

    aput-object v3, v2, v6

    const-string/jumbo v3, "N"

    aput-object v3, v2, v7

    const-string/jumbo v3, "H"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "h"

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

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "LL"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "9"

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

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "h"

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

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "lll"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "LL"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "9"

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "N"

    aput-object v3, v2, v7

    const-string/jumbo v3, "H"

    aput-object v3, v2, v8

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "rr"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "lll"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "h"

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

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "LL"

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "9"

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

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "aae"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "au"

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

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "nng"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "jny"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "nyj"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "nndd"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "nd"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "mb"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "f"

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

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "aae"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "L"

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

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, " . "

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "k"

    aput-object v3, v2, v6

    const-string/jumbo v3, "kh"

    aput-object v3, v2, v7

    const-string/jumbo v3, "kh"

    aput-object v3, v2, v8

    const-string/jumbo v3, "kh"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "cch"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "am"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "ue"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "uue"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\'"

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

    const-string/jumbo v4, "Bh."

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "ao"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "+"

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

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, " * "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, " /// "

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

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "ny"

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

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "am"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "yy"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "ei"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "ay"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "ai"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "hn"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "hm"

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "AUM"

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

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

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, " * "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, " / "

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, " / "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, " -/ "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, " +/ "

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, " X/ "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, " /XX/ "

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, " /X/ "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, ", "

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, ".5"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "1.5"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "2.5"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "3.5"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "4.5"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "5.5"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "6.5"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "7.5"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "8.5"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "-.5"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "[["

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "]]"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "tsh"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "dzh"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "ssh"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "kss"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "r"

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

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "ee"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "oo"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "ii"

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

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "kh"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "gh"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "ng"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "ts"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "tsh"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "dz"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "dzh"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "kss"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, " :X: "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, " /O/ "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, " /o/ "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, " \\o\\ "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, " (O) "

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

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, ""

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "k"

    aput-object v3, v2, v5

    const-string/jumbo v3, "kh"

    aput-object v3, v2, v6

    const-string/jumbo v3, "g"

    aput-object v3, v2, v7

    const-string/jumbo v3, "gh"

    aput-object v3, v2, v8

    const-string/jumbo v3, "ng"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "jh"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "ny"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "nny"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "tth"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "ddh"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "tt"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "dh"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "ph"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "bh"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "ll"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "au"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "aa"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "ii"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "uu"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "ai"

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

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, ""

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

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, " / "

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "n*"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "r*"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "l*"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "e*"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "LL"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "RR"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "LL"

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

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "T`"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "Zh"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "P`"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "K`"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "G\'"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "Sh"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "Ch`"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "C`"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "Z\'"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "Xh"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "OE"

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

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "t`"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "zh"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "p`"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "k`"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "g\'"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "sh"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "ch`"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "c`"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "z\'"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "ch"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "xh"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "f"

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

    const-string/jumbo v4, " // "

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
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

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
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters1;->characters:Ljava/util/HashMap;

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
