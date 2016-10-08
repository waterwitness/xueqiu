.class public final Lcom/b/a/a/a;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 24
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/b/a/a/a;->a:[B

    .line 25
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/b/a/a/a;->b:[C

    move v1, v0

    .line 28
    :goto_0
    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 31
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    .line 34
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v1, v2, :cond_2

    .line 38
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    .line 42
    sget-object v1, Lcom/b/a/a/a;->a:[B

    aput-byte v7, v1, v5

    .line 43
    sget-object v1, Lcom/b/a/a/a;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 45
    :goto_4
    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 49
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-le v2, v3, :cond_5

    .line 53
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-le v1, v2, :cond_6

    .line 56
    sget-object v0, Lcom/b/a/a/a;->b:[C

    aput-char v5, v0, v7

    .line 57
    sget-object v0, Lcom/b/a/a/a;->b:[C

    aput-char v6, v0, v8

    .line 59
    return-void

    .line 29
    :cond_0
    sget-object v2, Lcom/b/a/a/a;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    sget-object v2, Lcom/b/a/a/a;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 31
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 35
    :cond_2
    sget-object v2, Lcom/b/a/a/a;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 39
    :cond_3
    sget-object v2, Lcom/b/a/a/a;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 38
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 46
    :cond_4
    sget-object v2, Lcom/b/a/a/a;->b:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 50
    :cond_5
    sget-object v3, Lcom/b/a/a/a;->b:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 54
    :cond_6
    sget-object v2, Lcom/b/a/a/a;->b:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static a([B)Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 86
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 87
    if-nez v0, :cond_1

    .line 88
    const-string v0, ""

    goto :goto_0

    .line 91
    :cond_1
    rem-int/lit8 v7, v0, 0x18

    .line 92
    div-int/lit8 v1, v0, 0x18

    .line 93
    if-eqz v7, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 97
    :goto_1
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 107
    :goto_2
    if-lt v4, v1, :cond_4

    .line 139
    const/16 v0, 0x8

    if-ne v7, v0, :cond_9

    .line 140
    aget-byte v0, p0, v2

    .line 141
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 146
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 148
    :goto_3
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/b/a/a/a;->b:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 149
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/b/a/a/a;->b:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 150
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 151
    aput-char v14, v8, v1

    .line 169
    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 94
    goto :goto_1

    .line 108
    :cond_4
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 109
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 110
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 116
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 117
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 119
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_5

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 121
    :goto_5
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_6

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 123
    :goto_6
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_7

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 132
    :goto_7
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/b/a/a/a;->b:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 133
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/b/a/a/a;->b:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 134
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/b/a/a/a;->b:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 135
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/b/a/a/a;->b:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 107
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto/16 :goto_2

    .line 120
    :cond_5
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_5

    .line 122
    :cond_6
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_6

    .line 124
    :cond_7
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_7

    .line 147
    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto/16 :goto_3

    .line 152
    :cond_9
    const/16 v0, 0x10

    if-ne v7, v0, :cond_2

    .line 153
    aget-byte v0, p0, v2

    .line 154
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 155
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 156
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 158
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 160
    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 163
    :goto_9
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/b/a/a/a;->b:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 164
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/b/a/a/a;->b:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 165
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/b/a/a/a;->b:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 166
    aput-char v14, v8, v0

    goto/16 :goto_4

    .line 159
    :cond_a
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    .line 161
    :cond_b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9
.end method
