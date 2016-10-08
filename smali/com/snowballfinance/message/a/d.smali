.class public final Lcom/snowballfinance/message/a/d;
.super Ljava/lang/Object;
.source "SEAEncoder.java"


# direct methods
.method public static a([B[B)[B
    .locals 13

    .prologue
    const/4 v7, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 15
    new-array v4, v7, [I

    move v2, v1

    move v3, v1

    .line 16
    :goto_0
    if-ge v3, v7, :cond_0

    .line 17
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    aput v2, v4, v3

    .line 18
    aget v2, v4, v3

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    aput v2, v4, v3

    .line 19
    aget v2, v4, v3

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    aput v2, v4, v3

    .line 20
    aget v6, v4, v3

    add-int/lit8 v2, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    aput v5, v4, v3

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    aget v5, v4, v1

    aget v6, v4, v0

    const/4 v2, 0x2

    aget v7, v4, v2

    const/4 v2, 0x3

    aget v8, v4, v2

    .line 23
    array-length v2, p0

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    .line 24
    array-length v3, p0

    add-int/2addr v3, v2

    new-array v9, v3, [B

    .line 25
    and-int/lit8 v3, v2, 0xf

    int-to-byte v3, v3

    aput-byte v3, v9, v1

    .line 26
    :goto_1
    if-ge v0, v2, :cond_1

    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_1
    array-length v0, p0

    invoke-static {p0, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 30
    :goto_2
    array-length v2, v9

    if-ge v0, v2, :cond_3

    .line 31
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 32
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 33
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 34
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 35
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v9, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    .line 36
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    .line 37
    add-int/lit8 v10, v4, 0x1

    aget-byte v3, v9, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 38
    aget-byte v3, v9, v10

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    move v3, v0

    move v4, v2

    move v0, v1

    move v2, v1

    .line 40
    :goto_3
    const/16 v11, 0x10

    if-ge v0, v11, :cond_2

    .line 41
    const v11, 0x61c88647

    sub-int/2addr v2, v11

    .line 42
    shl-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v5

    add-int v12, v3, v2

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v3, 0x5

    add-int/2addr v12, v6

    xor-int/2addr v11, v12

    add-int/2addr v4, v11

    .line 43
    shl-int/lit8 v11, v4, 0x4

    add-int/2addr v11, v7

    add-int v12, v4, v2

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v4, 0x5

    add-int/2addr v12, v8

    xor-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 45
    :cond_2
    add-int/lit8 v0, v10, -0x1

    int-to-byte v2, v3

    aput-byte v2, v9, v10

    .line 46
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v10, v3, 0x8

    int-to-byte v10, v10

    aput-byte v10, v9, v0

    .line 47
    add-int/lit8 v0, v2, -0x1

    shr-int/lit8 v10, v3, 0x10

    int-to-byte v10, v10

    aput-byte v10, v9, v2

    .line 48
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    .line 49
    add-int/lit8 v0, v2, -0x1

    int-to-byte v3, v4

    aput-byte v3, v9, v2

    .line 50
    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    .line 51
    add-int/lit8 v0, v2, -0x1

    shr-int/lit8 v3, v4, 0x10

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 52
    shr-int/lit8 v2, v4, 0x18

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    .line 30
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_2

    .line 54
    :cond_3
    return-object v9
.end method
