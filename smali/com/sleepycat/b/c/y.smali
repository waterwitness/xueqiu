.class public Lcom/sleepycat/b/c/y;
.super Ljava/lang/Object;
.source "DupKeyData.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sleepycat/b/c/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/y;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method public static a([B[BIILjava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BII",
            "Ljava/util/Comparator",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 316
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/c/e;->d([BI)I

    move-result v2

    .line 318
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    .line 322
    :cond_0
    if-nez p4, :cond_1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 323
    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/l/w;->a([BII[BII)I

    move-result v0

    .line 333
    :goto_0
    return v0

    .line 327
    :cond_1
    new-array v0, v2, [B

    .line 328
    new-array v3, p3, [B

    .line 329
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    invoke-static {p1, p2, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    invoke-interface {p4, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static a([B[BLjava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Comparator",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    .line 298
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/sleepycat/c/e;->d([BI)I

    move-result v0

    .line 300
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 303
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/sleepycat/b/c/y;->a([B[BIILjava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;
    .locals 6

    .prologue
    .line 48
    .line 1197
    iget-object v0, p0, Lcom/sleepycat/b/m;->a:[B

    .line 1382
    iget v1, p0, Lcom/sleepycat/b/m;->d:I

    .line 1410
    iget v2, p0, Lcom/sleepycat/b/m;->e:I

    .line 2197
    iget-object v3, p1, Lcom/sleepycat/b/m;->a:[B

    .line 2382
    iget v4, p1, Lcom/sleepycat/b/m;->d:I

    .line 2410
    iget v5, p1, Lcom/sleepycat/b/m;->e:I

    .line 48
    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/c/y;->a([BII[BII)[B

    move-result-object v0

    .line 51
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    return-object v1
.end method

.method public static a([B)Lcom/sleepycat/b/m;
    .locals 2

    .prologue
    .line 142
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/c/e;->d([BI)I

    move-result v0

    .line 144
    sget-boolean v1, Lcom/sleepycat/b/c/y;->a:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-static {p0, v0}, Lcom/sleepycat/b/c/y;->a([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    return-object v1
.end method

.method public static a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    sget-boolean v0, Lcom/sleepycat/b/c/y;->a:Z

    if-nez v0, :cond_0

    .line 3382
    iget v0, p0, Lcom/sleepycat/b/m;->d:I

    .line 90
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4197
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/m;->a:[B

    .line 4410
    iget v1, p0, Lcom/sleepycat/b/m;->e:I

    .line 5102
    add-int/lit8 v2, v1, -0x1

    invoke-static {v0, v2}, Lcom/sleepycat/c/e;->d([BI)I

    move-result v2

    .line 5104
    sget-boolean v3, Lcom/sleepycat/b/c/y;->a:Z

    if-nez v3, :cond_1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5105
    :cond_1
    if-eqz p1, :cond_2

    .line 5106
    new-array v3, v2, [B

    .line 5107
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5108
    invoke-static {p1, v3}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;[B)V

    .line 5110
    :cond_2
    if-eqz p2, :cond_3

    .line 5111
    add-int/lit8 v3, v1, -0x1

    invoke-static {v0, v3}, Lcom/sleepycat/c/e;->c([BI)I

    move-result v3

    .line 5113
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 5114
    new-array v3, v1, [B

    .line 5115
    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5116
    invoke-static {p2, v3}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;[B)V

    .line 92
    :cond_3
    return-void
.end method

.method public static a([BI)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [B

    .line 158
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    const/4 v1, -0x1

    aput-byte v1, v0, p1

    .line 160
    return-object v0
.end method

.method private static a([BII[BII)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {p2}, Lcom/sleepycat/c/e;->a(I)I

    move-result v1

    .line 65
    add-int/2addr v1, p2

    add-int/2addr v1, p5

    new-array v3, v1, [B

    .line 66
    invoke-static {p0, p1, v3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-static {p3, p4, v3, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    add-int v1, p2, p5

    .line 3058
    invoke-static {p2}, Lcom/sleepycat/c/e;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 3059
    const/16 v4, -0x77

    if-ge p2, v4, :cond_0

    .line 3060
    const/4 v0, 0x1

    .line 3061
    neg-int v1, p2

    add-int/lit8 v1, v1, -0x77

    .line 3069
    :goto_0
    add-int/lit8 v4, v2, -0x1

    .line 3072
    add-int/lit8 v5, v4, -0x1

    int-to-byte v6, v1

    aput-byte v6, v3, v5

    .line 3073
    and-int/lit16 v6, v1, -0x100

    if-nez v6, :cond_3

    .line 3074
    if-eqz v0, :cond_2

    const/16 v0, -0x78

    :goto_1
    aput-byte v0, v3, v4

    move v0, v2

    .line 70
    :goto_2
    sget-boolean v1, Lcom/sleepycat/b/c/y;->a:Z

    if-nez v1, :cond_9

    array-length v1, v3

    if-eq v0, v1, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3062
    :cond_0
    const/16 v4, 0x77

    if-le p2, v4, :cond_1

    .line 3064
    add-int/lit8 v1, p2, -0x77

    goto :goto_0

    .line 3066
    :cond_1
    int-to-byte v0, p2

    aput-byte v0, v3, v1

    .line 3067
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 3074
    :cond_2
    const/16 v0, 0x78

    goto :goto_1

    .line 3078
    :cond_3
    add-int/lit8 v5, v5, -0x1

    ushr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 3079
    const/high16 v6, -0x10000

    and-int/2addr v6, v1

    if-nez v6, :cond_5

    .line 3080
    if-eqz v0, :cond_4

    const/16 v0, -0x79

    :goto_3
    aput-byte v0, v3, v4

    move v0, v2

    .line 3081
    goto :goto_2

    .line 3080
    :cond_4
    const/16 v0, 0x79

    goto :goto_3

    .line 3084
    :cond_5
    add-int/lit8 v5, v5, -0x1

    ushr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 3085
    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    if-nez v6, :cond_7

    .line 3086
    if-eqz v0, :cond_6

    const/16 v0, -0x7a

    :goto_4
    aput-byte v0, v3, v4

    move v0, v2

    .line 3087
    goto :goto_2

    .line 3086
    :cond_6
    const/16 v0, 0x7a

    goto :goto_4

    .line 3090
    :cond_7
    add-int/lit8 v5, v5, -0x1

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    .line 3091
    if-eqz v0, :cond_8

    const/16 v0, -0x7b

    :goto_5
    aput-byte v0, v3, v4

    move v0, v2

    .line 3092
    goto :goto_2

    .line 3091
    :cond_8
    const/16 v0, 0x7b

    goto :goto_5

    .line 71
    :cond_9
    return-object v3
.end method

.method public static a([B[B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/c/y;->a([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 126
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/c/e;->d([BI)I

    move-result v2

    .line 128
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    .line 131
    :cond_0
    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/c/y;->a([BII[BII)[B

    move-result-object v0

    return-object v0
.end method
