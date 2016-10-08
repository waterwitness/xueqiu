.class public Lcom/tencent/stat/common/StatBase64;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/stat/common/StatBase64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/stat/common/StatBase64;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/stat/common/StatBase64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 10

    .prologue
    .line 0
    new-instance v4, Lcom/tencent/stat/common/c;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v4, p3, v0}, Lcom/tencent/stat/common/c;-><init>(I[B)V

    .line 1000
    iget v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 0
    :goto_0
    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_0
    add-int v5, p2, p1

    iget v2, v4, Lcom/tencent/stat/common/c;->c:I

    iget v1, v4, Lcom/tencent/stat/common/c;->d:I

    const/4 v0, 0x0

    iget-object v6, v4, Lcom/tencent/stat/common/c;->a:[B

    iget-object v7, v4, Lcom/tencent/stat/common/c;->e:[I

    move v3, v2

    move v2, p1

    :goto_1
    if-ge v2, v5, :cond_b

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v8, v2, 0x4

    if-gt v8, v5, :cond_1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v7, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v1, v8

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v1, v8

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    or-int/2addr v1, v8

    if-ltz v1, :cond_1

    add-int/lit8 v8, v0, 0x2

    int-to-byte v9, v1

    aput-byte v9, v6, v8

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, v1, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_1
    if-ge v2, v5, :cond_b

    :cond_2
    add-int/lit8 p1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v7, v2

    packed-switch v3, :pswitch_data_0

    :cond_3
    move v2, p1

    goto :goto_1

    :pswitch_0
    if-ltz v2, :cond_4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    move v2, p1

    goto :goto_1

    :cond_4
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    if-ltz v2, :cond_5

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p1

    goto :goto_1

    :cond_5
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_2
    if-ltz v2, :cond_6

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_6
    const/4 v8, -0x2

    if-ne v2, v8, :cond_7

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    const/4 v0, 0x4

    move v3, v0

    move v0, v2

    move v2, p1

    goto/16 :goto_1

    :cond_7
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_3
    if-ltz v2, :cond_8

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v6, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v0, 0x3

    const/4 v2, 0x0

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_8
    const/4 v8, -0x2

    if-ne v2, v8, :cond_9

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    add-int/lit8 v0, v0, 0x2

    const/4 v2, 0x5

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_9
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_4
    const/4 v8, -0x2

    if-ne v2, v8, :cond_a

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, p1

    goto/16 :goto_1

    :cond_a
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_5
    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    move v2, v1

    packed-switch v3, :pswitch_data_1

    :goto_3
    :pswitch_6
    iput v3, v4, Lcom/tencent/stat/common/c;->c:I

    iput v0, v4, Lcom/tencent/stat/common/c;->b:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_7
    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    move v0, v1

    goto :goto_3

    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v5, v2, 0xa

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v6, v1

    goto :goto_3

    :pswitch_a
    const/4 v0, 0x6

    iput v0, v4, Lcom/tencent/stat/common/c;->c:I

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 0
    :cond_c
    iget v0, v4, Lcom/tencent/stat/common/c;->b:I

    iget-object v1, v4, Lcom/tencent/stat/common/c;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_d

    iget-object v0, v4, Lcom/tencent/stat/common/c;->a:[B

    :goto_4
    return-object v0

    :cond_d
    iget v0, v4, Lcom/tencent/stat/common/c;->b:I

    new-array v0, v0, [B

    iget-object v1, v4, Lcom/tencent/stat/common/c;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v4, Lcom/tencent/stat/common/c;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static encode([BI)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/tencent/stat/common/StatBase64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 12

    .prologue
    .line 0
    new-instance v7, Lcom/tencent/stat/common/d;

    invoke-direct {v7, p3}, Lcom/tencent/stat/common/d;-><init>(I)V

    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    iget-boolean v1, v7, Lcom/tencent/stat/common/d;->f:Z

    if-eqz v1, :cond_4

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v7, Lcom/tencent/stat/common/d;->g:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v2, v1, 0x1

    iget-boolean v1, v7, Lcom/tencent/stat/common/d;->h:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1
    new-array v1, v0, [B

    iput-object v1, v7, Lcom/tencent/stat/common/d;->a:[B

    .line 2000
    iget-object v8, v7, Lcom/tencent/stat/common/d;->i:[B

    iget-object v9, v7, Lcom/tencent/stat/common/d;->a:[B

    const/4 v5, 0x0

    iget v2, v7, Lcom/tencent/stat/common/d;->e:I

    add-int v10, p2, p1

    const/4 v1, -0x1

    iget v3, v7, Lcom/tencent/stat/common/d;->d:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    move v3, p1

    move v4, v1

    :goto_2
    const/4 v1, -0x1

    if-eq v4, v1, :cond_1a

    const/4 v1, 0x0

    shr-int/lit8 v5, v4, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    const/4 v1, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    const/4 v1, 0x2

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v1

    const/4 v5, 0x3

    const/4 v1, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_19

    iget-boolean v2, v7, Lcom/tencent/stat/common/d;->h:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/16 v4, 0xd

    aput-byte v4, v9, v2

    :cond_3
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    const/16 v1, 0x13

    move v6, v1

    :goto_3
    add-int/lit8 v1, v3, 0x3

    if-gt v1, v10, :cond_6

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v8, v2

    aput-byte v2, v9, v5

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    add-int/lit8 v2, v5, 0x2

    shr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    add-int/lit8 v2, v5, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v2

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v5, 0x4

    add-int/lit8 v1, v6, -0x1

    if-nez v1, :cond_18

    iget-boolean v1, v7, Lcom/tencent/stat/common/d;->h:Z

    if-eqz v1, :cond_17

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v2

    :goto_4
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    const/16 v1, 0x13

    move v6, v1

    goto :goto_3

    .line 0
    :cond_4
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_3
    move v3, p1

    move v4, v1

    .line 2000
    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v3, p1, 0x2

    if-gt v3, v10, :cond_2

    iget-object v1, v7, Lcom/tencent/stat/common/d;->c:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    add-int/lit8 p1, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const/4 v3, 0x0

    iput v3, v7, Lcom/tencent/stat/common/d;->d:I

    move v3, p1

    move v4, v1

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v3, p1, 0x1

    if-gt v3, v10, :cond_2

    iget-object v1, v7, Lcom/tencent/stat/common/d;->c:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, v7, Lcom/tencent/stat/common/d;->c:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    const/4 v4, 0x0

    iput v4, v7, Lcom/tencent/stat/common/d;->d:I

    move v4, v1

    goto/16 :goto_2

    :cond_6
    iget v1, v7, Lcom/tencent/stat/common/d;->d:I

    sub-int v1, v3, v1

    add-int/lit8 v2, v10, -0x1

    if-ne v1, v2, :cond_c

    const/4 v2, 0x0

    iget v1, v7, Lcom/tencent/stat/common/d;->d:I

    if-lez v1, :cond_b

    iget-object v1, v7, Lcom/tencent/stat/common/d;->c:[B

    const/4 v4, 0x0

    const/4 v2, 0x1

    aget-byte v1, v1, v4

    :goto_5
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    iget v1, v7, Lcom/tencent/stat/common/d;->d:I

    sub-int/2addr v1, v2

    iput v1, v7, Lcom/tencent/stat/common/d;->d:I

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v5

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v2

    iget-boolean v2, v7, Lcom/tencent/stat/common/d;->f:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v2

    :cond_7
    iget-boolean v2, v7, Lcom/tencent/stat/common/d;->g:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v7, Lcom/tencent/stat/common/d;->h:Z

    if-eqz v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v2

    :cond_8
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v2

    :cond_9
    move v5, v1

    :cond_a
    :goto_6
    sget-boolean v1, Lcom/tencent/stat/common/d;->j:Z

    if-nez v1, :cond_12

    iget v1, v7, Lcom/tencent/stat/common/d;->d:I

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_5

    :cond_c
    iget v1, v7, Lcom/tencent/stat/common/d;->d:I

    sub-int v1, v3, v1

    add-int/lit8 v2, v10, -0x2

    if-ne v1, v2, :cond_11

    const/4 v2, 0x0

    iget v1, v7, Lcom/tencent/stat/common/d;->d:I

    const/4 v4, 0x1

    if-le v1, v4, :cond_f

    iget-object v1, v7, Lcom/tencent/stat/common/d;->c:[B

    const/4 v4, 0x0

    const/4 v2, 0x1

    aget-byte v1, v1, v4

    :goto_7
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v11, v1, 0xa

    iget v1, v7, Lcom/tencent/stat/common/d;->d:I

    if-lez v1, :cond_10

    iget-object v1, v7, Lcom/tencent/stat/common/d;->c:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v1, v1, v2

    move v2, v4

    :goto_8
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v11

    iget v4, v7, Lcom/tencent/stat/common/d;->d:I

    sub-int v2, v4, v2

    iput v2, v7, Lcom/tencent/stat/common/d;->d:I

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v8, v4

    aput-byte v4, v9, v5

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v8, v5

    aput-byte v5, v9, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v8, v1

    aput-byte v1, v9, v4

    iget-boolean v1, v7, Lcom/tencent/stat/common/d;->f:Z

    if-eqz v1, :cond_16

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x3d

    aput-byte v4, v9, v2

    :goto_9
    iget-boolean v2, v7, Lcom/tencent/stat/common/d;->g:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v7, Lcom/tencent/stat/common/d;->h:Z

    if-eqz v2, :cond_d

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xd

    aput-byte v4, v9, v1

    move v1, v2

    :cond_d
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0xa

    aput-byte v4, v9, v1

    move v1, v2

    :cond_e
    move v5, v1

    goto :goto_6

    :cond_f
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_7

    :cond_10
    add-int/lit8 v4, v3, 0x1

    aget-byte v1, p0, v3

    move v3, v4

    goto :goto_8

    :cond_11
    iget-boolean v1, v7, Lcom/tencent/stat/common/d;->g:Z

    if-eqz v1, :cond_a

    if-lez v5, :cond_a

    const/16 v1, 0x13

    if-eq v6, v1, :cond_a

    iget-boolean v1, v7, Lcom/tencent/stat/common/d;->h:Z

    if-eqz v1, :cond_15

    add-int/lit8 v1, v5, 0x1

    const/16 v2, 0xd

    aput-byte v2, v9, v5

    :goto_a
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v9, v1

    goto/16 :goto_6

    :cond_12
    sget-boolean v1, Lcom/tencent/stat/common/d;->j:Z

    if-nez v1, :cond_13

    if-eq v3, v10, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    iput v5, v7, Lcom/tencent/stat/common/d;->b:I

    iput v6, v7, Lcom/tencent/stat/common/d;->e:I

    .line 0
    sget-boolean v1, Lcom/tencent/stat/common/StatBase64;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    iget v1, v7, Lcom/tencent/stat/common/d;->b:I

    if-eq v1, v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    iget-object v0, v7, Lcom/tencent/stat/common/d;->a:[B

    return-object v0

    :cond_15
    move v1, v5

    goto :goto_a

    :cond_16
    move v1, v2

    goto :goto_9

    :cond_17
    move v1, v2

    goto/16 :goto_4

    :cond_18
    move v6, v1

    move v5, v2

    goto/16 :goto_3

    :cond_19
    move v6, v2

    move v5, v1

    goto/16 :goto_3

    :cond_1a
    move v6, v2

    goto/16 :goto_3

    .line 2000
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 0
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
