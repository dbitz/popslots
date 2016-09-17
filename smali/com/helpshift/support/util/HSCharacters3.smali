.class public Lcom/helpshift/support/util/HSCharacters3;
.super Ljava/lang/Object;
.source "HSCharacters3.java"


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
    const/16 v9, 0x2c

    const/16 v8, 0x28

    const/16 v7, 0x27

    const/16 v6, 0x26

    const/16 v5, 0x25

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    .line 22
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const-string/jumbo v3, "+"

    aput-object v3, v2, v5

    const-string/jumbo v3, "+"

    aput-object v3, v2, v6

    const-string/jumbo v3, "+"

    aput-object v3, v2, v7

    const-string/jumbo v3, "+"

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const-string/jumbo v3, "+"

    aput-object v3, v2, v9

    const/16 v3, 0x2d

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "|"

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

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "#"

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

    .line 25
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

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

    .line 28
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

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

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v4, "[?]"

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

    .line 31
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const-string/jumbo v3, "u"

    aput-object v3, v2, v5

    const-string/jumbo v3, "8"

    aput-object v3, v2, v6

    const-string/jumbo v3, "v"

    aput-object v3, v2, v7

    const-string/jumbo v3, "."

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, "%"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "$"

    aput-object v4, v2, v3

    const-string/jumbo v3, "+"

    aput-object v3, v2, v9

    const/16 v3, 0x2d

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "&"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "[d7]"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "[d17]"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "[d27]"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "[d127]"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "[d37]"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "[d137]"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "[d237]"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "[d1237]"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "[d47]"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "[d147]"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "[d247]"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "[d1247]"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "[d347]"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "[d1347]"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[d2347]"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[d12347]"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[d57]"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "[d157]"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "[d257]"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "[d1257]"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "[d357]"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "[d1357]"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "[d2357]"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "[d12357]"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "[d457]"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "[d1457]"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "[d2457]"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "[d12457]"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "[d3457]"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "[d13457]"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "[d23457]"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "[d123457]"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "[d67]"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "[d167]"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "[d267]"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "[d1267]"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "[d367]"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "[d1367]"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "[d2367]"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "[d12367]"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "[d467]"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "[d1467]"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "[d2467]"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "[d12467]"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "[d3467]"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "[d13467]"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "[d23467]"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "[d123467]"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "[d567]"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "[d1567]"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "[d2567]"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "[d12567]"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "[d3567]"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "[d13567]"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "[d23567]"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "[d123567]"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "[d4567]"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "[d14567]"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "[d24567]"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "[d124567]"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "[d34567]"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "[d134567]"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "[d234567]"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "[d1234567]"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "[d8]"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "[d18]"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "[d28]"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "[d128]"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "[d38]"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "[d138]"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "[d238]"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "[d1238]"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "[d48]"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "[d148]"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "[d248]"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "[d1248]"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "[d348]"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "[d1348]"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "[d2348]"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[d12348]"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "[d58]"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "[d158]"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "[d258]"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "[d1258]"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "[d358]"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "[d1358]"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "[d2358]"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "[d12358]"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "[d458]"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "[d1458]"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "[d2458]"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "[d12458]"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "[d3458]"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "[d13458]"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "[d23458]"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[d123458]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "[d68]"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "[d168]"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "[d268]"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "[d1268]"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "[d368]"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "[d1368]"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "[d2368]"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "[d12368]"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "[d468]"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "[d1468]"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "[d2468]"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "[d12468]"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "[d3468]"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "[d13468]"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "[d23468]"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "[d123468]"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "[d568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "[d1568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "[d2568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "[d12568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "[d3568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "[d13568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "[d23568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "[d123568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "[d4568]"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "[d14568]"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[d24568]"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "[d124568]"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "[d34568]"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "[d134568]"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "[d234568]"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "[d1234568]"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "[d78]"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "[d178]"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "[d278]"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "[d1278]"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "[d378]"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[d1378]"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[d2378]"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "[d12378]"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "[d478]"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[d1478]"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[d2478]"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "[d12478]"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "[d3478]"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "[d13478]"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "[d23478]"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[d123478]"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "[d578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "[d1578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "[d2578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "[d12578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "[d3578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "[d13578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "[d23578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "[d123578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "[d4578]"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "[d14578]"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "[d24578]"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "[d124578]"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "[d34578]"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "[d134578]"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "[d234578]"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "[d1234578]"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "[d678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "[d1678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "[d2678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "[d12678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "[d3678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "[d13678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "[d23678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "[d123678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "[d4678]"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "[d14678]"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "[d24678]"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "[d124678]"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "[d34678]"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "[d134678]"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "[d234678]"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "[d1234678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "[d5678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "[d15678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "[d25678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "[d125678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "[d35678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "[d135678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "[d235678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "[d1235678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "[d45678]"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "[d145678]"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "[d245678]"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "[d1245678]"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "[d345678]"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "[d1345678]"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "[d2345678]"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "[d12345678]"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const-string/jumbo v3, ""

    aput-object v3, v2, v7

    const-string/jumbo v3, ""

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

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

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "A"

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    const/16 v1, 0x2e

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

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?]"

    aput-object v3, v2, v9

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

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "[?] "

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v5

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v6

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v7

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const-string/jumbo v3, "[?] "

    aput-object v3, v2, v9

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

    const/16 v3, 0x33

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

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

    const/16 v3, 0x4d

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

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

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "[?] "

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

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "[?] "

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "[?] "

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
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ". "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "[JIS]"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "> "

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "<<"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, ">> "

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "] "

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "} "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "[("

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, ")] "

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "X "

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "] "

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "[["

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "]] "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "(("

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, ")) "

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "[["

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "]] "

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "~ "

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "``"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\'\'"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, ",,"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "@"

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

    const-string/jumbo v3, "5"

    aput-object v3, v2, v5

    const-string/jumbo v3, "6"

    aput-object v3, v2, v6

    const-string/jumbo v3, "7"

    aput-object v3, v2, v7

    const-string/jumbo v3, "8"

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    aput-object v3, v2, v9

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

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, " // "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "+10+"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "+20+"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "+30+"

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

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "ga"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "gi"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "ku"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "gu"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "ge"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "go"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "za"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "shi"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "zi"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "su"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "zu"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "ze"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "zo"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "da"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "chi"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "di"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "du"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "de"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "do"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "ba"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "bi"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "hu"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "bu"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "pu"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "be"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "pe"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "bo"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "po"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "ru"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "vu"

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

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "[?]"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "ga"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "gi"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "ku"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "gu"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "ge"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "go"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "za"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "shi"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "zi"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "su"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "zu"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "ze"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "zo"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "da"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "chi"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "di"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "tsu"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "du"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "de"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "do"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "ba"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "pa"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "bi"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "pi"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "hu"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "bu"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "pu"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "be"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "pe"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "bo"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "po"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "ru"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "vu"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "va"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "vi"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "ve"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "vo"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    const/16 v1, 0x31

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

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "ZH"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "CH"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "SH"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "EH"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "AI"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "EI"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "AU"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "OU"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "AN"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "EN"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "ANG"

    aput-object v4, v2, v3

    const-string/jumbo v3, "ENG"

    aput-object v3, v2, v5

    const-string/jumbo v3, "ER"

    aput-object v3, v2, v6

    const-string/jumbo v3, "I"

    aput-object v3, v2, v7

    const-string/jumbo v3, "U"

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, "IU"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "NG"

    aput-object v4, v2, v3

    const-string/jumbo v3, "GN"

    aput-object v3, v2, v9

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

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "gg"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "gs"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "nj"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "nh"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "dd"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "lg"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "lm"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "lb"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "ls"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "lt"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "lp"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "rh"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "bb"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "bs"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "ss"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "jj"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "ae"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "yae"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "eo"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "yeo"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "ye"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "wae"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "oe"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "weo"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "eu"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "yi"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "nn"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "nd"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "ns"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "nZ"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "lgs"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "ld"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "lbs"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "lZ"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "lQ"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "mb"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "ms"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "mZ"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "mN"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "bg"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "bsg"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "bst"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "bj"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "bt"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "bN"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "bbN"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "sg"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "sn"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "sd"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "sb"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "sj"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "Ns"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "NZ"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "pN"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "hh"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "yo-ya"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "yo-yae"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "yo-i"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "yu-yeo"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "yu-ye"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "yu-i"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "U-i"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "[?]"

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

    const-string/jumbo v4, "BU"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "ZI"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "JI"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "GU"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "EE"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "ENN"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "OO"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "ONN"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "IR"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "ANN"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "INN"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "UNN"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "IM"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "NGG"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "AINN"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "AUNN"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "AM"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "OM"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "ONG"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "INNN"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "H"

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

    .line 49
    iget-object v0, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "(g)"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "(n)"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "(d)"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "(r)"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "(m)"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "(b)"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "(s)"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "()"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "(j)"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "(c)"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "(k)"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "(t)"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "(p)"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "(h)"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "(ga)"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "(na)"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "(da)"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "(ra)"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "(ma)"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "(ba)"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "(sa)"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "(a)"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "(ja)"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "(ca)"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "(ka)"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "(ta)"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "(pa)"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "(ha)"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "(ju)"

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

    const-string/jumbo v4, "(1) "

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "(2) "

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "(3) "

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "(4) "

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "(5) "

    aput-object v4, v2, v3

    const-string/jumbo v3, "(6) "

    aput-object v3, v2, v5

    const-string/jumbo v3, "(7) "

    aput-object v3, v2, v6

    const-string/jumbo v3, "(8) "

    aput-object v3, v2, v7

    const-string/jumbo v3, "(9) "

    aput-object v3, v2, v8

    const/16 v3, 0x29

    const-string/jumbo v4, "(10) "

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "(Yue) "

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "(Huo) "

    aput-object v4, v2, v3

    const-string/jumbo v3, "(Shui) "

    aput-object v3, v2, v9

    const/16 v3, 0x2d

    const-string/jumbo v4, "(Mu) "

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "(Jin) "

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "(Tu) "

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "(Ri) "

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "(Zhu) "

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "(You) "

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "(She) "

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "(Ming) "

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "(Te) "

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "(Cai) "

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "(Zhu) "

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "(Lao) "

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "(Dai) "

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "(Hu) "

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "(Xue) "

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "(Jian) "

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "(Qi) "

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "(Zi) "

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "(Xie) "

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "(Ji) "

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "(Xiu) "

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "<<"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, ">>"

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

    const-string/jumbo v4, "(g)"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "(n)"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "(d)"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "(r)"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "(m)"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "(b)"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "(s)"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "()"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "(j)"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "(c)"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "(k)"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "(t)"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "(p)"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "(h)"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "(ga)"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "(na)"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "(da)"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "(ra)"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "(ma)"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "(ba)"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "(sa)"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "(a)"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "(ja)"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "(ca)"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "(ka)"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "(ta)"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "(pa)"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "(ha)"

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

    const-string/jumbo v4, "KIS "

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "(1) "

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "(2) "

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "(3) "

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "(4) "

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "(5) "

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "(6) "

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "(7) "

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "(8) "

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "(9) "

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "(10) "

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "(Yue) "

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "(Huo) "

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "(Shui) "

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "(Mu) "

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "(Jin) "

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "(Tu) "

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "(Ri) "

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "(Zhu) "

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "(You) "

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "(She) "

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "(Ming) "

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "(Te) "

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "(Cai) "

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "(Zhu) "

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "(Lao) "

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "(Mi) "

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "(Nan) "

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "(Nu) "

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "(Shi) "

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "(You) "

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "(Yin) "

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "(Zhu) "

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "(Xiang) "

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "(Xiu) "

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "(Xie) "

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "(Zheng) "

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "(Shang) "

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "(Zhong) "

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "(Xia) "

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "(Zuo) "

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "(You) "

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "(Yi) "

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "(Zong) "

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "(Xue) "

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "(Jian) "

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "(Qi) "

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "(Zi) "

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "(Xie) "

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "(Ye) "

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

    const-string/jumbo v4, "1M"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "2M"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "3M"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "4M"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "5M"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "6M"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "7M"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "8M"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "9M"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "10M"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "11M"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "12M"

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

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "ka"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "ki"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "ku"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "ke"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "ko"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "sa"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "si"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "su"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "se"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "so"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "ta"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "ti"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "tu"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "te"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "na"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "ni"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "nu"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "ne"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "no"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "ha"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "hi"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "hu"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "he"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "ho"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "ma"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "mi"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "mu"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "me"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "mo"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "ya"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "yu"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "yo"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "ra"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "ri"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "ru"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "re"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "ro"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "wa"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "wi"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "we"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "wo"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public containsKey(II)Z
    .locals 3
    .param p1, "high"    # I
    .param p2, "low"    # I

    .prologue
    .line 11
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 12
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
    .line 16
    iget-object v1, p0, Lcom/helpshift/support/util/HSCharacters3;->characters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 17
    .local v0, "entries":[Ljava/lang/String;
    aget-object v1, v0, p2

    return-object v1
.end method
