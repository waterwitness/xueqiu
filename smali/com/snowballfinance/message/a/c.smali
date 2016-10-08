.class public final Lcom/snowballfinance/message/a/c;
.super Ljava/lang/Object;
.source "SEADecoder.java"


# direct methods
.method public static a([B[B)[B
    .locals 12

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 15
    new-array v3, v6, [I

    move v0, v1

    move v2, v1

    .line 16
    :goto_0
    if-ge v2, v6, :cond_0

    .line 17
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    aput v0, v3, v2

    .line 18
    aget v0, v3, v2

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    aput v0, v3, v2

    .line 19
    aget v0, v3, v2

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    aput v0, v3, v2

    .line 20
    aget v5, v3, v2

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_0
    aget v5, v3, v1

    const/4 v0, 0x1

    aget v6, v3, v0

    const/4 v0, 0x2

    aget v7, v3, v0

    const/4 v0, 0x3

    aget v8, v3, v0

    move v0, v1

    .line 23
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 24
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 25
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 26
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 27
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v3, v0, v2

    .line 28
    add-int/lit8 v0, v4, 0x1

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 29
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v2

    .line 30
    add-int/lit8 v9, v4, 0x1

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 31
    aget-byte v2, p0, v9

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 32
    const v0, -0x1c886470

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 33
    :goto_2
    const/16 v10, 0x10

    if-ge v0, v10, :cond_1

    .line 34
    shl-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v7

    add-int v11, v4, v2

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v4, 0x5

    add-int/2addr v11, v8

    xor-int/2addr v10, v11

    sub-int/2addr v3, v10

    .line 35
    shl-int/lit8 v10, v3, 0x4

    add-int/2addr v10, v5

    add-int v11, v3, v2

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v3, 0x5

    add-int/2addr v11, v6

    xor-int/2addr v10, v11

    sub-int/2addr v4, v10

    .line 36
    const v10, 0x61c88647

    add-int/2addr v2, v10

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38
    :cond_1
    add-int/lit8 v0, v9, -0x1

    int-to-byte v2, v3

    aput-byte v2, p0, v9

    .line 39
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    aput-byte v9, p0, v0

    .line 40
    add-int/lit8 v0, v2, -0x1

    shr-int/lit8 v9, v3, 0x10

    int-to-byte v9, v9

    aput-byte v9, p0, v2

    .line 41
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 42
    add-int/lit8 v0, v2, -0x1

    int-to-byte v3, v4

    aput-byte v3, p0, v2

    .line 43
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 44
    add-int/lit8 v0, v2, -0x1

    shr-int/lit8 v3, v4, 0x10

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 45
    shr-int/lit8 v2, v4, 0x18

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 23
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_1

    .line 47
    :cond_2
    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0xf

    .line 48
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 49
    array-length v3, v2

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-object v2
.end method
