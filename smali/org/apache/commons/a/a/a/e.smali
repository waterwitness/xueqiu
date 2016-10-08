.class public final Lorg/apache/commons/a/a/a/e;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field static final a:Lorg/apache/commons/a/a/b/b;

.field static final b:Lorg/apache/commons/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lorg/apache/commons/a/a/b/c;->a()Lorg/apache/commons/a/a/b/b;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/a/a/a/e;->a:Lorg/apache/commons/a/a/b/b;

    .line 47
    new-instance v0, Lorg/apache/commons/a/a/a/e$1;

    invoke-direct {v0}, Lorg/apache/commons/a/a/a/e$1;-><init>()V

    sput-object v0, Lorg/apache/commons/a/a/a/e;->b:Lorg/apache/commons/a/a/b/b;

    return-void
.end method

.method public static a([BII)J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/16 v6, 0x20

    .line 103
    .line 104
    add-int v0, p1, p2

    .line 107
    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be at least 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    aget-byte v1, p0, p1

    if-nez v1, :cond_9

    move-wide v0, v2

    .line 151
    :goto_0
    return-wide v0

    .line 116
    :goto_1
    if-ge v1, v0, :cond_1

    .line 117
    aget-byte v4, p0, v1

    if-ne v4, v6, :cond_1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget-byte v4, p0, v4

    .line 127
    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_4

    .line 128
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 134
    :goto_2
    add-int/lit8 v4, v0, -0x1

    aget-byte v4, p0, v4

    .line 135
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_6

    if-eqz v4, :cond_3

    if-ne v4, v6, :cond_6

    .line 136
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 137
    goto :goto_2

    .line 130
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, p2, v0, v4}, Lorg/apache/commons/a/a/a/e;->a([BIIIB)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_5
    const/4 v5, 0x3

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 140
    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-ge v1, v0, :cond_8

    .line 141
    aget-byte v4, p0, v1

    .line 143
    const/16 v5, 0x30

    if-lt v4, v5, :cond_7

    const/16 v5, 0x37

    if-le v4, v5, :cond_5

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v1, v4}, Lorg/apache/commons/a/a/a/e;->a([BIIIB)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-wide v0, v2

    .line 151
    goto :goto_0

    :cond_9
    move v1, p1

    goto :goto_1
.end method

.method private static a([BIIIB)Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 243
    const-string v1, "\u0000"

    const-string v2, "{NUL}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public static a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    :goto_0
    if-lez p2, :cond_0

    .line 290
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    .line 289
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 294
    :cond_0
    if-lez p2, :cond_1

    .line 295
    new-array v0, p2, [B

    .line 296
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-interface {p3, v0}, Lorg/apache/commons/a/a/b/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static a([B)Z
    .locals 14

    .prologue
    const/4 v10, 0x6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 601
    move v0, v1

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    move v2, v1

    .line 606
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 607
    aget-byte v11, p0, v0

    .line 608
    const/16 v3, 0x94

    if-gt v3, v0, :cond_6

    const/16 v3, 0x9c

    if-ge v0, v3, :cond_6

    .line 609
    const/16 v3, 0x30

    if-gt v3, v11, :cond_2

    const/16 v3, 0x37

    if-gt v11, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    if-ge v2, v10, :cond_1

    .line 610
    const-wide/16 v12, 0x8

    mul-long/2addr v8, v12

    int-to-long v12, v11

    add-long/2addr v8, v12

    const-wide/16 v12, 0x30

    sub-long/2addr v8, v12

    move v2, v3

    .line 614
    :cond_0
    :goto_1
    const/16 v3, 0x20

    .line 616
    :goto_2
    and-int/lit16 v11, v3, 0xff

    int-to-long v12, v11

    add-long/2addr v6, v12

    .line 617
    int-to-long v12, v3

    add-long/2addr v4, v12

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 611
    :cond_2
    if-lez v2, :cond_0

    move v2, v10

    .line 612
    goto :goto_1

    .line 620
    :cond_3
    cmp-long v0, v8, v6

    if-eqz v0, :cond_4

    cmp-long v0, v8, v4

    if-eqz v0, :cond_4

    cmp-long v0, v8, v6

    if-lez v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    move v3, v11

    goto :goto_2
.end method

.method public static a([BI)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 236
    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([BII)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/16 v4, 0x9

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 174
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 175
    invoke-static {p0, p1, p2}, Lorg/apache/commons/a/a/a/e;->a([BII)J

    move-result-wide v0

    .line 1222
    :cond_0
    :goto_0
    return-wide v0

    .line 177
    :cond_1
    aget-byte v1, p0, p1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    move v3, v2

    .line 178
    :goto_1
    if-ge p2, v4, :cond_6

    .line 1187
    if-lt p2, v4, :cond_3

    .line 1188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "At offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte binary number exceeds maximum signed long value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v0

    .line 177
    goto :goto_1

    .line 1193
    :cond_3
    const-wide/16 v0, 0x0

    .line 1194
    :goto_2
    if-ge v2, p2, :cond_4

    .line 1195
    const/16 v4, 0x8

    shl-long/2addr v0, v4

    add-int v4, p1, v2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1194
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1197
    :cond_4
    if-eqz v3, :cond_5

    .line 1199
    sub-long/2addr v0, v8

    .line 1200
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-int/lit8 v2, p2, -0x1

    mul-int/lit8 v2, v2, 0x8

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    sub-long/2addr v4, v8

    xor-long/2addr v0, v4

    .line 1202
    :cond_5
    if-eqz v3, :cond_0

    neg-long v0, v0

    goto :goto_0

    .line 1209
    :cond_6
    add-int/lit8 v1, p2, -0x1

    new-array v1, v1, [B

    .line 1210
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-static {p0, v2, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1211
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 1212
    if-eqz v3, :cond_7

    .line 1214
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    .line 1216
    :cond_7
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_8

    .line 1217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "At offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte binary number exceeds maximum signed long value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto/16 :goto_0
.end method

.method public static c([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    :try_start_0
    sget-object v0, Lorg/apache/commons/a/a/a/e;->a:Lorg/apache/commons/a/a/b/b;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/a/a/a/e;->a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lorg/apache/commons/a/a/a/e;->b:Lorg/apache/commons/a/a/b/b;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/a/a/a/e;->a([BIILorg/apache/commons/a/a/b/b;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
