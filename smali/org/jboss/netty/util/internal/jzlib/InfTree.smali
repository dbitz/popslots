.class final Lorg/jboss/netty/util/internal/jzlib/InfTree;
.super Ljava/lang/Object;
.source "InfTree.java"


# static fields
.field static final BMAX:I = 0xf

.field static final cpdext:[I

.field static final cpdist:[I

.field static final cplens:[I

.field static final cplext:[I

.field static final fixed_bd:I = 0x5

.field static final fixed_bl:I = 0x9

.field static final fixed_td:[I

.field static final fixed_tl:[I


# instance fields
.field private c:[I

.field private hn:[I

.field private r:[I

.field private u:[I

.field private v:[I

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x1f

    const/16 v1, 0x1e

    .line 56
    const/16 v0, 0x600

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_tl:[I

    .line 140
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_td:[I

    .line 149
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplens:[I

    .line 154
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplext:[I

    .line 159
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdist:[I

    .line 163
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdext:[I

    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x60
        0x7
        0x100
        0x0
        0x8
        0x50
        0x0
        0x8
        0x10
        0x54
        0x8
        0x73
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x70
        0x0
        0x8
        0x30
        0x0
        0x9
        0xc0
        0x50
        0x7
        0xa
        0x0
        0x8
        0x60
        0x0
        0x8
        0x20
        0x0
        0x9
        0xa0
        0x0
        0x8
        0x0
        0x0
        0x8
        0x80
        0x0
        0x8
        0x40
        0x0
        0x9
        0xe0
        0x50
        0x7
        0x6
        0x0
        0x8
        0x58
        0x0
        0x8
        0x18
        0x0
        0x9
        0x90
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x78
        0x0
        0x8
        0x38
        0x0
        0x9
        0xd0
        0x51
        0x7
        0x11
        0x0
        0x8
        0x68
        0x0
        0x8
        0x28
        0x0
        0x9
        0xb0
        0x0
        0x8
        0x8
        0x0
        0x8
        0x88
        0x0
        0x8
        0x48
        0x0
        0x9
        0xf0
        0x50
        0x7
        0x4
        0x0
        0x8
        0x54
        0x0
        0x8
        0x14
        0x55
        0x8
        0xe3
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x74
        0x0
        0x8
        0x34
        0x0
        0x9
        0xc8
        0x51
        0x7
        0xd
        0x0
        0x8
        0x64
        0x0
        0x8
        0x24
        0x0
        0x9
        0xa8
        0x0
        0x8
        0x4
        0x0
        0x8
        0x84
        0x0
        0x8
        0x44
        0x0
        0x9
        0xe8
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5c
        0x0
        0x8
        0x1c
        0x0
        0x9
        0x98
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7c
        0x0
        0x8
        0x3c
        0x0
        0x9
        0xd8
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6c
        0x0
        0x8
        0x2c
        0x0
        0x9
        0xb8
        0x0
        0x8
        0xc
        0x0
        0x8
        0x8c
        0x0
        0x8
        0x4c
        0x0
        0x9
        0xf8
        0x50
        0x7
        0x3
        0x0
        0x8
        0x52
        0x0
        0x8
        0x12
        0x55
        0x8
        0xa3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x72
        0x0
        0x8
        0x32
        0x0
        0x9
        0xc4
        0x51
        0x7
        0xb
        0x0
        0x8
        0x62
        0x0
        0x8
        0x22
        0x0
        0x9
        0xa4
        0x0
        0x8
        0x2
        0x0
        0x8
        0x82
        0x0
        0x8
        0x42
        0x0
        0x9
        0xe4
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5a
        0x0
        0x8
        0x1a
        0x0
        0x9
        0x94
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7a
        0x0
        0x8
        0x3a
        0x0
        0x9
        0xd4
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6a
        0x0
        0x8
        0x2a
        0x0
        0x9
        0xb4
        0x0
        0x8
        0xa
        0x0
        0x8
        0x8a
        0x0
        0x8
        0x4a
        0x0
        0x9
        0xf4
        0x50
        0x7
        0x5
        0x0
        0x8
        0x56
        0x0
        0x8
        0x16
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x76
        0x0
        0x8
        0x36
        0x0
        0x9
        0xcc
        0x51
        0x7
        0xf
        0x0
        0x8
        0x66
        0x0
        0x8
        0x26
        0x0
        0x9
        0xac
        0x0
        0x8
        0x6
        0x0
        0x8
        0x86
        0x0
        0x8
        0x46
        0x0
        0x9
        0xec
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5e
        0x0
        0x8
        0x1e
        0x0
        0x9
        0x9c
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7e
        0x0
        0x8
        0x3e
        0x0
        0x9
        0xdc
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6e
        0x0
        0x8
        0x2e
        0x0
        0x9
        0xbc
        0x0
        0x8
        0xe
        0x0
        0x8
        0x8e
        0x0
        0x8
        0x4e
        0x0
        0x9
        0xfc
        0x60
        0x7
        0x100
        0x0
        0x8
        0x51
        0x0
        0x8
        0x11
        0x55
        0x8
        0x83
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x71
        0x0
        0x8
        0x31
        0x0
        0x9
        0xc2
        0x50
        0x7
        0xa
        0x0
        0x8
        0x61
        0x0
        0x8
        0x21
        0x0
        0x9
        0xa2
        0x0
        0x8
        0x1
        0x0
        0x8
        0x81
        0x0
        0x8
        0x41
        0x0
        0x9
        0xe2
        0x50
        0x7
        0x6
        0x0
        0x8
        0x59
        0x0
        0x8
        0x19
        0x0
        0x9
        0x92
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x79
        0x0
        0x8
        0x39
        0x0
        0x9
        0xd2
        0x51
        0x7
        0x11
        0x0
        0x8
        0x69
        0x0
        0x8
        0x29
        0x0
        0x9
        0xb2
        0x0
        0x8
        0x9
        0x0
        0x8
        0x89
        0x0
        0x8
        0x49
        0x0
        0x9
        0xf2
        0x50
        0x7
        0x4
        0x0
        0x8
        0x55
        0x0
        0x8
        0x15
        0x50
        0x8
        0x102
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x75
        0x0
        0x8
        0x35
        0x0
        0x9
        0xca
        0x51
        0x7
        0xd
        0x0
        0x8
        0x65
        0x0
        0x8
        0x25
        0x0
        0x9
        0xaa
        0x0
        0x8
        0x5
        0x0
        0x8
        0x85
        0x0
        0x8
        0x45
        0x0
        0x9
        0xea
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5d
        0x0
        0x8
        0x1d
        0x0
        0x9
        0x9a
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7d
        0x0
        0x8
        0x3d
        0x0
        0x9
        0xda
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6d
        0x0
        0x8
        0x2d
        0x0
        0x9
        0xba
        0x0
        0x8
        0xd
        0x0
        0x8
        0x8d
        0x0
        0x8
        0x4d
        0x0
        0x9
        0xfa
        0x50
        0x7
        0x3
        0x0
        0x8
        0x53
        0x0
        0x8
        0x13
        0x55
        0x8
        0xc3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x73
        0x0
        0x8
        0x33
        0x0
        0x9
        0xc6
        0x51
        0x7
        0xb
        0x0
        0x8
        0x63
        0x0
        0x8
        0x23
        0x0
        0x9
        0xa6
        0x0
        0x8
        0x3
        0x0
        0x8
        0x83
        0x0
        0x8
        0x43
        0x0
        0x9
        0xe6
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5b
        0x0
        0x8
        0x1b
        0x0
        0x9
        0x96
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7b
        0x0
        0x8
        0x3b
        0x0
        0x9
        0xd6
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6b
        0x0
        0x8
        0x2b
        0x0
        0x9
        0xb6
        0x0
        0x8
        0xb
        0x0
        0x8
        0x8b
        0x0
        0x8
        0x4b
        0x0
        0x9
        0xf6
        0x50
        0x7
        0x5
        0x0
        0x8
        0x57
        0x0
        0x8
        0x17
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x77
        0x0
        0x8
        0x37
        0x0
        0x9
        0xce
        0x51
        0x7
        0xf
        0x0
        0x8
        0x67
        0x0
        0x8
        0x27
        0x0
        0x9
        0xae
        0x0
        0x8
        0x7
        0x0
        0x8
        0x87
        0x0
        0x8
        0x47
        0x0
        0x9
        0xee
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5f
        0x0
        0x8
        0x1f
        0x0
        0x9
        0x9e
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7f
        0x0
        0x8
        0x3f
        0x0
        0x9
        0xde
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6f
        0x0
        0x8
        0x2f
        0x0
        0x9
        0xbe
        0x0
        0x8
        0xf
        0x0
        0x8
        0x8f
        0x0
        0x8
        0x4f
        0x0
        0x9
        0xfe
        0x60
        0x7
        0x100
        0x0
        0x8
        0x50
        0x0
        0x8
        0x10
        0x54
        0x8
        0x73
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x70
        0x0
        0x8
        0x30
        0x0
        0x9
        0xc1
        0x50
        0x7
        0xa
        0x0
        0x8
        0x60
        0x0
        0x8
        0x20
        0x0
        0x9
        0xa1
        0x0
        0x8
        0x0
        0x0
        0x8
        0x80
        0x0
        0x8
        0x40
        0x0
        0x9
        0xe1
        0x50
        0x7
        0x6
        0x0
        0x8
        0x58
        0x0
        0x8
        0x18
        0x0
        0x9
        0x91
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x78
        0x0
        0x8
        0x38
        0x0
        0x9
        0xd1
        0x51
        0x7
        0x11
        0x0
        0x8
        0x68
        0x0
        0x8
        0x28
        0x0
        0x9
        0xb1
        0x0
        0x8
        0x8
        0x0
        0x8
        0x88
        0x0
        0x8
        0x48
        0x0
        0x9
        0xf1
        0x50
        0x7
        0x4
        0x0
        0x8
        0x54
        0x0
        0x8
        0x14
        0x55
        0x8
        0xe3
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x74
        0x0
        0x8
        0x34
        0x0
        0x9
        0xc9
        0x51
        0x7
        0xd
        0x0
        0x8
        0x64
        0x0
        0x8
        0x24
        0x0
        0x9
        0xa9
        0x0
        0x8
        0x4
        0x0
        0x8
        0x84
        0x0
        0x8
        0x44
        0x0
        0x9
        0xe9
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5c
        0x0
        0x8
        0x1c
        0x0
        0x9
        0x99
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7c
        0x0
        0x8
        0x3c
        0x0
        0x9
        0xd9
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6c
        0x0
        0x8
        0x2c
        0x0
        0x9
        0xb9
        0x0
        0x8
        0xc
        0x0
        0x8
        0x8c
        0x0
        0x8
        0x4c
        0x0
        0x9
        0xf9
        0x50
        0x7
        0x3
        0x0
        0x8
        0x52
        0x0
        0x8
        0x12
        0x55
        0x8
        0xa3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x72
        0x0
        0x8
        0x32
        0x0
        0x9
        0xc5
        0x51
        0x7
        0xb
        0x0
        0x8
        0x62
        0x0
        0x8
        0x22
        0x0
        0x9
        0xa5
        0x0
        0x8
        0x2
        0x0
        0x8
        0x82
        0x0
        0x8
        0x42
        0x0
        0x9
        0xe5
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5a
        0x0
        0x8
        0x1a
        0x0
        0x9
        0x95
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7a
        0x0
        0x8
        0x3a
        0x0
        0x9
        0xd5
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6a
        0x0
        0x8
        0x2a
        0x0
        0x9
        0xb5
        0x0
        0x8
        0xa
        0x0
        0x8
        0x8a
        0x0
        0x8
        0x4a
        0x0
        0x9
        0xf5
        0x50
        0x7
        0x5
        0x0
        0x8
        0x56
        0x0
        0x8
        0x16
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x76
        0x0
        0x8
        0x36
        0x0
        0x9
        0xcd
        0x51
        0x7
        0xf
        0x0
        0x8
        0x66
        0x0
        0x8
        0x26
        0x0
        0x9
        0xad
        0x0
        0x8
        0x6
        0x0
        0x8
        0x86
        0x0
        0x8
        0x46
        0x0
        0x9
        0xed
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5e
        0x0
        0x8
        0x1e
        0x0
        0x9
        0x9d
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7e
        0x0
        0x8
        0x3e
        0x0
        0x9
        0xdd
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6e
        0x0
        0x8
        0x2e
        0x0
        0x9
        0xbd
        0x0
        0x8
        0xe
        0x0
        0x8
        0x8e
        0x0
        0x8
        0x4e
        0x0
        0x9
        0xfd
        0x60
        0x7
        0x100
        0x0
        0x8
        0x51
        0x0
        0x8
        0x11
        0x55
        0x8
        0x83
        0x52
        0x7
        0x1f
        0x0
        0x8
        0x71
        0x0
        0x8
        0x31
        0x0
        0x9
        0xc3
        0x50
        0x7
        0xa
        0x0
        0x8
        0x61
        0x0
        0x8
        0x21
        0x0
        0x9
        0xa3
        0x0
        0x8
        0x1
        0x0
        0x8
        0x81
        0x0
        0x8
        0x41
        0x0
        0x9
        0xe3
        0x50
        0x7
        0x6
        0x0
        0x8
        0x59
        0x0
        0x8
        0x19
        0x0
        0x9
        0x93
        0x53
        0x7
        0x3b
        0x0
        0x8
        0x79
        0x0
        0x8
        0x39
        0x0
        0x9
        0xd3
        0x51
        0x7
        0x11
        0x0
        0x8
        0x69
        0x0
        0x8
        0x29
        0x0
        0x9
        0xb3
        0x0
        0x8
        0x9
        0x0
        0x8
        0x89
        0x0
        0x8
        0x49
        0x0
        0x9
        0xf3
        0x50
        0x7
        0x4
        0x0
        0x8
        0x55
        0x0
        0x8
        0x15
        0x50
        0x8
        0x102
        0x53
        0x7
        0x2b
        0x0
        0x8
        0x75
        0x0
        0x8
        0x35
        0x0
        0x9
        0xcb
        0x51
        0x7
        0xd
        0x0
        0x8
        0x65
        0x0
        0x8
        0x25
        0x0
        0x9
        0xab
        0x0
        0x8
        0x5
        0x0
        0x8
        0x85
        0x0
        0x8
        0x45
        0x0
        0x9
        0xeb
        0x50
        0x7
        0x8
        0x0
        0x8
        0x5d
        0x0
        0x8
        0x1d
        0x0
        0x9
        0x9b
        0x54
        0x7
        0x53
        0x0
        0x8
        0x7d
        0x0
        0x8
        0x3d
        0x0
        0x9
        0xdb
        0x52
        0x7
        0x17
        0x0
        0x8
        0x6d
        0x0
        0x8
        0x2d
        0x0
        0x9
        0xbb
        0x0
        0x8
        0xd
        0x0
        0x8
        0x8d
        0x0
        0x8
        0x4d
        0x0
        0x9
        0xfb
        0x50
        0x7
        0x3
        0x0
        0x8
        0x53
        0x0
        0x8
        0x13
        0x55
        0x8
        0xc3
        0x53
        0x7
        0x23
        0x0
        0x8
        0x73
        0x0
        0x8
        0x33
        0x0
        0x9
        0xc7
        0x51
        0x7
        0xb
        0x0
        0x8
        0x63
        0x0
        0x8
        0x23
        0x0
        0x9
        0xa7
        0x0
        0x8
        0x3
        0x0
        0x8
        0x83
        0x0
        0x8
        0x43
        0x0
        0x9
        0xe7
        0x50
        0x7
        0x7
        0x0
        0x8
        0x5b
        0x0
        0x8
        0x1b
        0x0
        0x9
        0x97
        0x54
        0x7
        0x43
        0x0
        0x8
        0x7b
        0x0
        0x8
        0x3b
        0x0
        0x9
        0xd7
        0x52
        0x7
        0x13
        0x0
        0x8
        0x6b
        0x0
        0x8
        0x2b
        0x0
        0x9
        0xb7
        0x0
        0x8
        0xb
        0x0
        0x8
        0x8b
        0x0
        0x8
        0x4b
        0x0
        0x9
        0xf7
        0x50
        0x7
        0x5
        0x0
        0x8
        0x57
        0x0
        0x8
        0x17
        0xc0
        0x8
        0x0
        0x53
        0x7
        0x33
        0x0
        0x8
        0x77
        0x0
        0x8
        0x37
        0x0
        0x9
        0xcf
        0x51
        0x7
        0xf
        0x0
        0x8
        0x67
        0x0
        0x8
        0x27
        0x0
        0x9
        0xaf
        0x0
        0x8
        0x7
        0x0
        0x8
        0x87
        0x0
        0x8
        0x47
        0x0
        0x9
        0xef
        0x50
        0x7
        0x9
        0x0
        0x8
        0x5f
        0x0
        0x8
        0x1f
        0x0
        0x9
        0x9f
        0x54
        0x7
        0x63
        0x0
        0x8
        0x7f
        0x0
        0x8
        0x3f
        0x0
        0x9
        0xdf
        0x52
        0x7
        0x1b
        0x0
        0x8
        0x6f
        0x0
        0x8
        0x2f
        0x0
        0x9
        0xbf
        0x0
        0x8
        0xf
        0x0
        0x8
        0x8f
        0x0
        0x8
        0x4f
        0x0
        0x9
        0xff
    .end array-data

    .line 140
    :array_1
    .array-data 4
        0x50
        0x5
        0x1
        0x57
        0x5
        0x101
        0x53
        0x5
        0x11
        0x5b
        0x5
        0x1001
        0x51
        0x5
        0x5
        0x59
        0x5
        0x401
        0x55
        0x5
        0x41
        0x5d
        0x5
        0x4001
        0x50
        0x5
        0x3
        0x58
        0x5
        0x201
        0x54
        0x5
        0x21
        0x5c
        0x5
        0x2001
        0x52
        0x5
        0x9
        0x5a
        0x5
        0x801
        0x56
        0x5
        0x81
        0xc0
        0x5
        0x6001
        0x50
        0x5
        0x2
        0x57
        0x5
        0x181
        0x53
        0x5
        0x19
        0x5b
        0x5
        0x1801
        0x51
        0x5
        0x7
        0x59
        0x5
        0x601
        0x55
        0x5
        0x61
        0x5d
        0x5
        0x6001
        0x50
        0x5
        0x4
        0x58
        0x5
        0x301
        0x54
        0x5
        0x31
        0x5c
        0x5
        0x3001
        0x52
        0x5
        0xd
        0x5a
        0x5
        0xc01
        0x56
        0x5
        0xc1
        0xc0
        0x5
        0x6001
    .end array-data

    .line 149
    :array_2
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xf
        0x11
        0x13
        0x17
        0x1b
        0x1f
        0x23
        0x2b
        0x33
        0x3b
        0x43
        0x53
        0x63
        0x73
        0x83
        0xa3
        0xc3
        0xe3
        0x102
        0x0
        0x0
    .end array-data

    .line 154
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
        0x70
        0x70
    .end array-data

    .line 159
    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xd
        0x11
        0x19
        0x21
        0x31
        0x41
        0x61
        0x81
        0xc1
        0x101
        0x181
        0x201
        0x301
        0x401
        0x601
        0x801
        0xc01
        0x1001
        0x1801
        0x2001
        0x3001
        0x4001
        0x6001
    .end array-data

    .line 163
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private huft_build([IIII[I[I[I[I[I[I[I)I
    .locals 26
    .param p1, "b"    # [I
    .param p2, "bindex"    # I
    .param p3, "n"    # I
    .param p4, "s"    # I
    .param p5, "d"    # [I
    .param p6, "e"    # [I
    .param p7, "t"    # [I
    .param p8, "m"    # [I
    .param p9, "hp"    # [I
    .param p10, "hn"    # [I
    .param p11, "v"    # [I

    .prologue
    .line 212
    const/4 v15, 0x0

    .line 213
    .local v15, "p":I
    move/from16 v10, p3

    .line 215
    .local v10, "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    add-int v23, p2, v15

    aget v23, p1, v23

    aget v24, v22, v23

    add-int/lit8 v24, v24, 0x1

    aput v24, v22, v23

    .line 216
    add-int/lit8 v15, v15, 0x1

    .line 217
    add-int/lit8 v10, v10, -0x1

    .line 218
    if-nez v10, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 221
    const/16 v22, 0x0

    const/16 v23, -0x1

    aput v23, p7, v22

    .line 222
    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, p8, v22

    .line 223
    const/16 v22, 0x0

    .line 370
    :goto_0
    return v22

    .line 227
    :cond_1
    const/16 v22, 0x0

    aget v13, p8, v22

    .line 228
    .local v13, "l":I
    const/4 v11, 0x1

    .local v11, "j":I
    :goto_1
    const/16 v22, 0xf

    move/from16 v0, v22

    if-gt v11, v0, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    if-eqz v22, :cond_6

    .line 233
    :cond_2
    move v12, v11

    .line 234
    .local v12, "k":I
    if-ge v13, v11, :cond_3

    .line 235
    move v13, v11

    .line 237
    :cond_3
    const/16 v10, 0xf

    :goto_2
    if-eqz v10, :cond_4

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    if-eqz v22, :cond_7

    .line 242
    :cond_4
    move v8, v10

    .line 243
    .local v8, "g":I
    if-le v13, v10, :cond_5

    .line 244
    move v13, v10

    .line 246
    :cond_5
    const/16 v22, 0x0

    aput v13, p8, v22

    .line 249
    const/16 v22, 0x1

    shl-int v20, v22, v11

    .local v20, "y":I
    :goto_3
    if-ge v11, v10, :cond_9

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    sub-int v20, v20, v22

    if-gez v20, :cond_8

    .line 251
    const/16 v22, -0x3

    goto :goto_0

    .line 228
    .end local v8    # "g":I
    .end local v12    # "k":I
    .end local v20    # "y":I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 237
    .restart local v12    # "k":I
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 249
    .restart local v8    # "g":I
    .restart local v20    # "y":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 254
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    sub-int v20, v20, v22

    if-gez v20, :cond_a

    .line 255
    const/16 v22, -0x3

    goto :goto_0

    .line 257
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v23, v22, v10

    add-int v23, v23, v20

    aput v23, v22, v10

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/4 v11, 0x0

    aput v11, v22, v23

    .line 261
    const/4 v15, 0x1

    .line 262
    const/16 v19, 0x2

    .line 263
    .local v19, "xp":I
    :goto_4
    add-int/lit8 v10, v10, -0x1

    if-eqz v10, :cond_b

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v23, v0

    aget v23, v23, v15

    add-int v11, v11, v23

    aput v11, v22, v19

    .line 265
    add-int/lit8 v19, v19, 0x1

    .line 266
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 270
    :cond_b
    const/4 v10, 0x0

    .line 271
    const/4 v15, 0x0

    .line 273
    :cond_c
    add-int v22, p2, v15

    aget v11, p1, v22

    if-eqz v11, :cond_d

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    aget v23, v22, v11

    add-int/lit8 v24, v23, 0x1

    aput v24, v22, v11

    aput v10, p11, v23

    .line 276
    :cond_d
    add-int/lit8 v15, v15, 0x1

    .line 277
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p3

    if-lt v10, v0, :cond_c

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    aget p3, v22, v8

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/4 v10, 0x0

    aput v10, v22, v23

    .line 282
    const/4 v15, 0x0

    .line 283
    const/4 v9, -0x1

    .line 284
    .local v9, "h":I
    neg-int v0, v13

    move/from16 v18, v0

    .line 285
    .local v18, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 286
    const/16 v17, 0x0

    .line 287
    .local v17, "q":I
    const/16 v21, 0x0

    .line 290
    .local v21, "z":I
    :goto_5
    if-gt v12, v8, :cond_1a

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v5, v22, v12

    .local v5, "a":I
    move/from16 v16, v15

    .end local v15    # "p":I
    .local v16, "p":I
    move v6, v5

    .line 292
    .end local v5    # "a":I
    .local v6, "a":I
    :goto_6
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "a":I
    .restart local v5    # "a":I
    if-eqz v6, :cond_19

    .line 295
    :goto_7
    add-int v22, v18, v13

    move/from16 v0, v22

    if-le v12, v0, :cond_13

    .line 296
    add-int/lit8 v9, v9, 0x1

    .line 297
    add-int v18, v18, v13

    .line 299
    sub-int v21, v8, v18

    .line 300
    move/from16 v0, v21

    if-le v0, v13, :cond_e

    move/from16 v21, v13

    .line 301
    :cond_e
    const/16 v22, 0x1

    sub-int v11, v12, v18

    shl-int v7, v22, v11

    .local v7, "f":I
    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v22

    if-le v7, v0, :cond_f

    .line 303
    add-int/lit8 v22, v5, 0x1

    sub-int v7, v7, v22

    .line 304
    move/from16 v19, v12

    .line 305
    move/from16 v0, v21

    if-ge v11, v0, :cond_f

    .line 306
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v21

    if-ge v11, v0, :cond_f

    .line 307
    shl-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    add-int/lit8 v19, v19, 0x1

    aget v22, v22, v19

    move/from16 v0, v22

    if-gt v7, v0, :cond_10

    .line 314
    :cond_f
    const/16 v22, 0x1

    shl-int v21, v22, v11

    .line 317
    const/16 v22, 0x0

    aget v22, p10, v22

    add-int v22, v22, v21

    const/16 v23, 0x5a0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 318
    const/16 v22, -0x3

    move/from16 v15, v16

    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_0

    .line 310
    .end local v15    # "p":I
    .restart local v16    # "p":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v19

    sub-int v7, v7, v22

    goto :goto_8

    .line 320
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v17, p10, v23

    aput v17, v22, v9

    .line 321
    const/16 v22, 0x0

    aget v23, p10, v22

    add-int v23, v23, v21

    aput v23, p10, v22

    .line 324
    if-eqz v9, :cond_12

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    aput v10, v22, v9

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    int-to-byte v0, v11

    move/from16 v24, v0

    aput v24, v22, v23

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    int-to-byte v0, v13

    move/from16 v24, v0

    aput v24, v22, v23

    .line 328
    sub-int v22, v18, v13

    ushr-int v11, v10, v22

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v9, -0x1

    aget v24, v24, v25

    sub-int v24, v17, v24

    sub-int v24, v24, v11

    aput v24, v22, v23

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v9, -0x1

    aget v24, v24, v25

    add-int v24, v24, v11

    mul-int/lit8 v24, v24, 0x3

    const/16 v25, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p9

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    .line 332
    :cond_12
    const/16 v22, 0x0

    aput v17, p7, v22

    goto/16 :goto_7

    .line 337
    .end local v7    # "f":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    sub-int v24, v12, v18

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    .line 338
    move/from16 v0, v16

    move/from16 v1, p3

    if-lt v0, v1, :cond_14

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xc0

    aput v24, v22, v23

    move/from16 v15, v16

    .line 349
    .end local v16    # "p":I
    .restart local v15    # "p":I
    :goto_9
    const/16 v22, 0x1

    sub-int v23, v12, v18

    shl-int v7, v22, v23

    .line 350
    .restart local v7    # "f":I
    ushr-int v11, v10, v18

    :goto_a
    move/from16 v0, v21

    if-ge v11, v0, :cond_17

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    add-int v24, v17, v11

    mul-int/lit8 v24, v24, 0x3

    const/16 v25, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p9

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    add-int/2addr v11, v7

    goto :goto_a

    .line 340
    .end local v7    # "f":I
    .end local v15    # "p":I
    .restart local v16    # "p":I
    :cond_14
    aget v22, p11, v16

    move/from16 v0, v22

    move/from16 v1, p4

    if-ge v0, v1, :cond_16

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v22, p11, v16

    const/16 v25, 0x100

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_15

    const/16 v22, 0x0

    :goto_b
    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput v22, v23, v24

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget v24, p11, v16

    aput v24, v22, v23

    goto :goto_9

    .line 341
    .end local v15    # "p":I
    .restart local v16    # "p":I
    :cond_15
    const/16 v22, 0x60

    goto :goto_b

    .line 344
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v24, p11, v16

    sub-int v24, v24, p4

    aget v24, p6, v24

    add-int/lit8 v24, v24, 0x10

    add-int/lit8 v24, v24, 0x40

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "p":I
    .restart local v15    # "p":I
    aget v24, p11, v16

    sub-int v24, v24, p4

    aget v24, p5, v24

    aput v24, v22, v23

    goto/16 :goto_9

    .line 355
    .restart local v7    # "f":I
    :cond_17
    const/16 v22, 0x1

    add-int/lit8 v23, v12, -0x1

    shl-int v11, v22, v23

    :goto_c
    and-int v22, v10, v11

    if-eqz v22, :cond_18

    .line 356
    xor-int/2addr v10, v11

    .line 355
    ushr-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 358
    :cond_18
    xor-int/2addr v10, v11

    .line 361
    const/16 v22, 0x1

    shl-int v22, v22, v18

    add-int/lit8 v14, v22, -0x1

    .line 362
    .local v14, "mask":I
    :goto_d
    and-int v22, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    .line 363
    add-int/lit8 v9, v9, -0x1

    .line 364
    sub-int v18, v18, v13

    .line 365
    const/16 v22, 0x1

    shl-int v22, v22, v18

    add-int/lit8 v14, v22, -0x1

    goto :goto_d

    .line 290
    .end local v7    # "f":I
    .end local v14    # "mask":I
    .end local v15    # "p":I
    .restart local v16    # "p":I
    :cond_19
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v16

    .end local v16    # "p":I
    .restart local v15    # "p":I
    goto/16 :goto_5

    .line 370
    .end local v5    # "a":I
    :cond_1a
    if-eqz v20, :cond_1b

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_1b

    const/16 v22, -0x5

    goto/16 :goto_0

    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_0

    .restart local v5    # "a":I
    .restart local v7    # "f":I
    .restart local v14    # "mask":I
    :cond_1c
    move/from16 v16, v15

    .end local v15    # "p":I
    .restart local v16    # "p":I
    move v6, v5

    .end local v5    # "a":I
    .restart local v6    # "a":I
    goto/16 :goto_6
.end method

.method static inflate_trees_fixed([I[I[[I[[I)I
    .locals 2
    .param p0, "bl"    # [I
    .param p1, "bd"    # [I
    .param p2, "tl"    # [[I
    .param p3, "td"    # [[I

    .prologue
    const/4 v1, 0x0

    .line 444
    const/16 v0, 0x9

    aput v0, p0, v1

    .line 445
    const/4 v0, 0x5

    aput v0, p1, v1

    .line 446
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_tl:[I

    aput-object v0, p2, v1

    .line 447
    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->fixed_td:[I

    aput-object v0, p3, v1

    .line 448
    return v1
.end method

.method private initWorkArea(I)V
    .locals 6
    .param p1, "vsize"    # I

    .prologue
    const/16 v5, 0xf

    const/4 v2, 0x3

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 452
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    if-nez v1, :cond_0

    .line 453
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    .line 454
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    .line 455
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    .line 456
    new-array v1, v2, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    .line 457
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    .line 458
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    .line 478
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    array-length v1, v1

    if-ge v1, p1, :cond_2

    .line 461
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    .line 467
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 468
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    aput v3, v1, v0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, p1, :cond_1

    .line 464
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    aput v3, v1, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 470
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 471
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->r:[I

    aput v3, v1, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 474
    :cond_4
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->u:[I

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->c:[I

    iget-object v2, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->x:[I

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method inflate_trees_bits([I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 14
    .param p1, "c"    # [I
    .param p2, "bb"    # [I
    .param p3, "tb"    # [I
    .param p4, "hp"    # [I
    .param p5, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    .line 380
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->initWorkArea(I)V

    .line 381
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 382
    const/4 v3, 0x0

    const/16 v4, 0x13

    const/16 v5, 0x13

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v12}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v13

    .line 384
    .local v13, "result":I
    const/4 v1, -0x3

    if-ne v13, v1, :cond_1

    .line 385
    const-string/jumbo v1, "oversubscribed dynamic bit lengths tree"

    move-object/from16 v0, p5

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 390
    :cond_0
    :goto_0
    return v13

    .line 386
    :cond_1
    const/4 v1, -0x5

    if-eq v13, v1, :cond_2

    const/4 v1, 0x0

    aget v1, p2, v1

    if-nez v1, :cond_0

    .line 387
    :cond_2
    const-string/jumbo v1, "incomplete dynamic bit lengths tree"

    move-object/from16 v0, p5

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 388
    const/4 v13, -0x3

    goto :goto_0
.end method

.method inflate_trees_dynamic(II[I[I[I[I[I[ILorg/jboss/netty/util/internal/jzlib/ZStream;)I
    .locals 14
    .param p1, "nl"    # I
    .param p2, "nd"    # I
    .param p3, "c"    # [I
    .param p4, "bl"    # [I
    .param p5, "bd"    # [I
    .param p6, "tl"    # [I
    .param p7, "td"    # [I
    .param p8, "hp"    # [I
    .param p9, "z"    # Lorg/jboss/netty/util/internal/jzlib/ZStream;

    .prologue
    .line 406
    const/16 v1, 0x120

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->initWorkArea(I)V

    .line 407
    iget-object v1, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 408
    const/4 v3, 0x0

    const/16 v5, 0x101

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplens:[I

    sget-object v7, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cplext:[I

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object/from16 v2, p3

    move v4, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v13

    .line 409
    .local v13, "result":I
    if-nez v13, :cond_0

    const/4 v1, 0x0

    aget v1, p4, v1

    if-nez v1, :cond_3

    .line 410
    :cond_0
    const/4 v1, -0x3

    if-ne v13, v1, :cond_2

    .line 411
    const-string/jumbo v1, "oversubscribed literal/length tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_1
    :goto_0
    move v1, v13

    .line 436
    :goto_1
    return v1

    .line 412
    :cond_2
    const/4 v1, -0x4

    if-eq v13, v1, :cond_1

    .line 413
    const-string/jumbo v1, "incomplete literal/length tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 414
    const/4 v13, -0x3

    goto :goto_0

    .line 420
    :cond_3
    const/16 v1, 0x120

    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->initWorkArea(I)V

    .line 421
    const/4 v5, 0x0

    sget-object v6, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdist:[I

    sget-object v7, Lorg/jboss/netty/util/internal/jzlib/InfTree;->cpdext:[I

    iget-object v11, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lorg/jboss/netty/util/internal/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object/from16 v2, p3

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lorg/jboss/netty/util/internal/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v13

    .line 423
    if-nez v13, :cond_4

    const/4 v1, 0x0

    aget v1, p5, v1

    if-nez v1, :cond_8

    const/16 v1, 0x101

    if-le p1, v1, :cond_8

    .line 424
    :cond_4
    const/4 v1, -0x3

    if-ne v13, v1, :cond_6

    .line 425
    const-string/jumbo v1, "oversubscribed distance tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_5
    :goto_2
    move v1, v13

    .line 433
    goto :goto_1

    .line 426
    :cond_6
    const/4 v1, -0x5

    if-ne v13, v1, :cond_7

    .line 427
    const-string/jumbo v1, "incomplete distance tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 428
    const/4 v13, -0x3

    goto :goto_2

    .line 429
    :cond_7
    const/4 v1, -0x4

    if-eq v13, v1, :cond_5

    .line 430
    const-string/jumbo v1, "empty distance tree with lengths"

    move-object/from16 v0, p9

    iput-object v1, v0, Lorg/jboss/netty/util/internal/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 431
    const/4 v13, -0x3

    goto :goto_2

    .line 436
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method
