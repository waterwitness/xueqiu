.class public final Lcom/sleepycat/c/e;
.super Ljava/lang/Object;
.source "PackedInteger.java"


# direct methods
.method public static a(I)I
    .locals 2

    .prologue
    .line 338
    const/16 v0, -0x77

    if-ge p0, v0, :cond_0

    .line 339
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x77

    .line 346
    :goto_0
    and-int/lit16 v1, v0, -0x100

    if-nez v1, :cond_2

    .line 347
    const/4 v0, 0x2

    .line 355
    :goto_1
    return v0

    .line 340
    :cond_0
    const/16 v0, 0x77

    if-le p0, v0, :cond_1

    .line 341
    add-int/lit8 v0, p0, -0x77

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 349
    :cond_2
    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 350
    const/4 v0, 0x3

    goto :goto_1

    .line 352
    :cond_3
    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 353
    const/4 v0, 0x4

    goto :goto_1

    .line 355
    :cond_4
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public static a(J)I
    .locals 6

    .prologue
    const-wide/16 v2, 0x77

    const-wide/16 v4, 0x0

    .line 368
    const-wide/16 v0, -0x77

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 369
    neg-long v0, p0

    sub-long/2addr v0, v2

    .line 376
    :goto_0
    const-wide/16 v2, -0x100

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 377
    const/4 v0, 0x2

    .line 397
    :goto_1
    return v0

    .line 370
    :cond_0
    cmp-long v0, p0, v2

    if-lez v0, :cond_1

    .line 371
    sub-long v0, p0, v2

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 379
    :cond_2
    const-wide/32 v2, -0x10000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 380
    const/4 v0, 0x3

    goto :goto_1

    .line 382
    :cond_3
    const-wide/32 v2, -0x1000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 383
    const/4 v0, 0x4

    goto :goto_1

    .line 385
    :cond_4
    const-wide v2, -0x100000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 386
    const/4 v0, 0x5

    goto :goto_1

    .line 388
    :cond_5
    const-wide v2, -0x10000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 389
    const/4 v0, 0x6

    goto :goto_1

    .line 391
    :cond_6
    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 392
    const/4 v0, 0x7

    goto :goto_1

    .line 394
    :cond_7
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 395
    const/16 v0, 0x8

    goto :goto_1

    .line 397
    :cond_8
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public static a([BI)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 80
    add-int/lit8 v3, p1, 0x1

    aget-byte v0, p0, p1

    .line 81
    const/16 v1, -0x77

    if-ge v0, v1, :cond_1

    .line 83
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x77

    move v1, v2

    .line 91
    :goto_0
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 92
    if-le v0, v2, :cond_4

    .line 93
    add-int/lit8 v5, v4, 0x1

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 94
    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    .line 95
    add-int/lit8 v3, v5, 0x1

    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    .line 96
    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    .line 97
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    .line 102
    :goto_1
    if-eqz v1, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x77

    :cond_0
    :goto_2
    return v0

    .line 84
    :cond_1
    const/16 v1, 0x77

    if-le v0, v1, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 86
    add-int/lit8 v0, v0, -0x77

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x77

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public static a([BII)I
    .locals 5

    .prologue
    .line 214
    .line 217
    const/16 v0, -0x77

    if-ge p2, v0, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 219
    neg-int v1, p2

    add-int/lit8 v1, v1, -0x77

    .line 227
    :goto_0
    add-int/lit8 v3, p1, 0x1

    .line 229
    add-int/lit8 v2, v3, 0x1

    int-to-byte v4, v1

    aput-byte v4, p0, v3

    .line 230
    and-int/lit16 v3, v1, -0x100

    if-nez v3, :cond_3

    .line 231
    if-eqz v0, :cond_2

    const/16 v0, -0x78

    :goto_1
    aput-byte v0, p0, p1

    move v0, v2

    .line 249
    :goto_2
    return v0

    .line 220
    :cond_0
    const/16 v0, 0x77

    if-le p2, v0, :cond_1

    .line 221
    const/4 v0, 0x0

    .line 222
    add-int/lit8 v1, p2, -0x77

    goto :goto_0

    .line 224
    :cond_1
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, p1

    goto :goto_2

    .line 231
    :cond_2
    const/16 v0, 0x78

    goto :goto_1

    .line 235
    :cond_3
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    .line 236
    const/high16 v2, -0x10000

    and-int/2addr v2, v1

    if-nez v2, :cond_5

    .line 237
    if-eqz v0, :cond_4

    const/16 v0, -0x79

    :goto_3
    aput-byte v0, p0, p1

    move v0, v3

    .line 238
    goto :goto_2

    .line 237
    :cond_4
    const/16 v0, 0x79

    goto :goto_3

    .line 241
    :cond_5
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 242
    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    if-nez v3, :cond_7

    .line 243
    if-eqz v0, :cond_6

    const/16 v0, -0x7a

    :goto_4
    aput-byte v0, p0, p1

    move v0, v2

    .line 244
    goto :goto_2

    .line 243
    :cond_6
    const/16 v0, 0x7a

    goto :goto_4

    .line 247
    :cond_7
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    .line 248
    if-eqz v0, :cond_8

    const/16 v0, -0x7b

    :goto_5
    aput-byte v0, p0, p1

    move v0, v3

    .line 249
    goto :goto_2

    .line 248
    :cond_8
    const/16 v0, 0x7b

    goto :goto_5
.end method

.method public static a([BIJ)I
    .locals 10

    .prologue
    const-wide/16 v4, 0x77

    const-wide/16 v8, 0x0

    .line 266
    .line 269
    const-wide/16 v0, -0x77

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 271
    neg-long v2, p2

    sub-long/2addr v2, v4

    .line 279
    :goto_0
    add-int/lit8 v4, p1, 0x1

    .line 281
    add-int/lit8 v1, v4, 0x1

    long-to-int v5, v2

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 282
    const-wide/16 v4, -0x100

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 283
    if-eqz v0, :cond_2

    const/16 v0, -0x78

    :goto_1
    aput-byte v0, p0, p1

    move v0, v1

    .line 325
    :goto_2
    return v0

    .line 272
    :cond_0
    cmp-long v0, p2, v4

    if-lez v0, :cond_1

    .line 273
    const/4 v0, 0x0

    .line 274
    sub-long v2, p2, v4

    goto :goto_0

    .line 276
    :cond_1
    add-int/lit8 v0, p1, 0x1

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    goto :goto_2

    .line 283
    :cond_2
    const/16 v0, 0x78

    goto :goto_1

    .line 287
    :cond_3
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x8

    ushr-long v6, v2, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    .line 288
    const-wide/32 v6, -0x10000

    and-long/2addr v6, v2

    cmp-long v1, v6, v8

    if-nez v1, :cond_5

    .line 289
    if-eqz v0, :cond_4

    const/16 v0, -0x79

    :goto_3
    aput-byte v0, p0, p1

    move v0, v4

    .line 290
    goto :goto_2

    .line 289
    :cond_4
    const/16 v0, 0x79

    goto :goto_3

    .line 293
    :cond_5
    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x10

    ushr-long v6, v2, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 294
    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 295
    if-eqz v0, :cond_6

    const/16 v0, -0x7a

    :goto_4
    aput-byte v0, p0, p1

    move v0, v1

    .line 296
    goto :goto_2

    .line 295
    :cond_6
    const/16 v0, 0x7a

    goto :goto_4

    .line 299
    :cond_7
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x18

    ushr-long v6, v2, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    .line 300
    const-wide v6, -0x100000000L

    and-long/2addr v6, v2

    cmp-long v1, v6, v8

    if-nez v1, :cond_9

    .line 301
    if-eqz v0, :cond_8

    const/16 v0, -0x7b

    :goto_5
    aput-byte v0, p0, p1

    move v0, v4

    .line 302
    goto :goto_2

    .line 301
    :cond_8
    const/16 v0, 0x7b

    goto :goto_5

    .line 305
    :cond_9
    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x20

    ushr-long v6, v2, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 306
    const-wide v4, -0x10000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-nez v4, :cond_b

    .line 307
    if-eqz v0, :cond_a

    const/16 v0, -0x7c

    :goto_6
    aput-byte v0, p0, p1

    move v0, v1

    .line 308
    goto/16 :goto_2

    .line 307
    :cond_a
    const/16 v0, 0x7c

    goto :goto_6

    .line 311
    :cond_b
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x28

    ushr-long v6, v2, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    .line 312
    const-wide/high16 v6, -0x1000000000000L

    and-long/2addr v6, v2

    cmp-long v1, v6, v8

    if-nez v1, :cond_d

    .line 313
    if-eqz v0, :cond_c

    const/16 v0, -0x7d

    :goto_7
    aput-byte v0, p0, p1

    move v0, v4

    .line 314
    goto/16 :goto_2

    .line 313
    :cond_c
    const/16 v0, 0x7d

    goto :goto_7

    .line 317
    :cond_d
    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x30

    ushr-long v6, v2, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 318
    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-nez v4, :cond_f

    .line 319
    if-eqz v0, :cond_e

    const/16 v0, -0x7e

    :goto_8
    aput-byte v0, p0, p1

    move v0, v1

    .line 320
    goto/16 :goto_2

    .line 319
    :cond_e
    const/16 v0, 0x7e

    goto :goto_8

    .line 323
    :cond_f
    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x38

    ushr-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 324
    if-eqz v0, :cond_10

    const/16 v0, -0x7f

    :goto_9
    aput-byte v0, p0, p1

    move v0, v4

    .line 325
    goto/16 :goto_2

    .line 324
    :cond_10
    const/16 v0, 0x7f

    goto :goto_9
.end method

.method public static b([BI)J
    .locals 12

    .prologue
    const-wide/16 v10, 0x77

    const/4 v2, 0x1

    const-wide/16 v8, 0xff

    .line 119
    add-int/lit8 v3, p1, 0x1

    aget-byte v0, p0, p1

    .line 120
    const/16 v1, -0x77

    if-ge v0, v1, :cond_1

    .line 122
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x77

    move v1, v2

    .line 130
    :goto_0
    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p0, v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    .line 131
    if-le v0, v2, :cond_4

    .line 132
    add-int/lit8 v7, v6, 0x1

    aget-byte v2, p0, v6

    int-to-long v2, v2

    and-long/2addr v2, v8

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v2, v4

    .line 133
    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    .line 134
    add-int/lit8 v4, v7, 0x1

    aget-byte v5, p0, v7

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x10

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 135
    const/4 v5, 0x3

    if-le v0, v5, :cond_0

    .line 136
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v6, v4

    and-long/2addr v6, v8

    const/16 v4, 0x18

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    .line 137
    const/4 v4, 0x4

    if-le v0, v4, :cond_0

    .line 138
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p0, v5

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 139
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    .line 140
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v6, v4

    and-long/2addr v6, v8

    const/16 v4, 0x28

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    .line 141
    const/4 v4, 0x6

    if-le v0, v4, :cond_0

    .line 142
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p0, v5

    int-to-long v6, v5

    and-long/2addr v6, v8

    const/16 v5, 0x30

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 143
    const/4 v5, 0x7

    if-le v0, v5, :cond_0

    .line 144
    aget-byte v0, p0, v4

    int-to-long v4, v0

    and-long/2addr v4, v8

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 153
    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    neg-long v0, v2

    sub-long/2addr v0, v10

    :goto_2
    return-wide v0

    .line 123
    :cond_1
    const/16 v1, 0x77

    if-le v0, v1, :cond_2

    .line 124
    const/4 v1, 0x0

    .line 125
    add-int/lit8 v0, v0, -0x77

    goto :goto_0

    .line 127
    :cond_2
    int-to-long v0, v0

    goto :goto_2

    .line 153
    :cond_3
    add-long v0, v2, v10

    goto :goto_2

    :cond_4
    move-wide v2, v4

    goto :goto_1
.end method

.method public static c([BI)I
    .locals 2

    .prologue
    .line 171
    aget-byte v0, p0, p1

    .line 172
    const/16 v1, -0x77

    if-ge v0, v1, :cond_0

    .line 173
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x77

    add-int/lit8 v0, v0, 0x1

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_0
    const/16 v1, 0x77

    if-le v0, v1, :cond_1

    .line 175
    add-int/lit8 v0, v0, -0x77

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d([BI)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1015
    aget-byte v0, p0, p1

    .line 1016
    const/16 v1, -0x77

    if-ge v0, v1, :cond_1

    .line 1018
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x77

    move v1, v2

    .line 1026
    :goto_0
    add-int/lit8 v4, p1, -0x1

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    .line 1027
    if-le v0, v2, :cond_4

    .line 1028
    add-int/lit8 v4, v4, -0x1

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 1029
    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    .line 1030
    add-int/lit8 v3, v4, -0x1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    .line 1031
    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    .line 1032
    add-int/lit8 v0, v3, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    .line 1037
    :goto_1
    if-eqz v1, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x77

    :cond_0
    :goto_2
    return v0

    .line 1019
    :cond_1
    const/16 v1, 0x77

    if-le v0, v1, :cond_0

    .line 1020
    const/4 v1, 0x0

    .line 1021
    add-int/lit8 v0, v0, -0x77

    goto :goto_0

    .line 1037
    :cond_2
    add-int/lit8 v0, v0, 0x77

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method
