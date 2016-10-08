.class public final Lcom/sleepycat/b/l/ao;
.super Lcom/sleepycat/b/l/an;
.source "VLSNCache.java"


# static fields
.field static final synthetic b:Z

.field private static c:[J


# instance fields
.field private final d:[B

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/sleepycat/b/l/an;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/ao;->b:Z

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sleepycat/b/l/ao;->c:[J

    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    nop

    :array_0
    .array-data 8
        0x0
        0xff
        0xffff
        0xffffff
        0xffffffffL
        0xffffffffffL
        0xffffffffffffL
        0xffffffffffffffL
        0x7fffffffffffffffL
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sleepycat/b/l/an;-><init>()V

    .line 106
    sget-boolean v0, Lcom/sleepycat/b/l/ao;->b:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/l/ao;->b:Z

    if-nez v0, :cond_1

    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_1
    sget-boolean v0, Lcom/sleepycat/b/l/ao;->b:Z

    if-nez v0, :cond_2

    const/16 v0, 0x8

    if-le p2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_2
    iput p2, p0, Lcom/sleepycat/b/l/ao;->e:I

    .line 111
    iget v0, p0, Lcom/sleepycat/b/l/ao;->e:I

    mul-int/2addr v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/b/l/ao;->d:[B

    .line 112
    return-void
.end method

.method private b(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ao;
    .locals 10

    .prologue
    const-wide/16 v8, 0xff

    const-wide/16 v0, 0x0

    .line 147
    sget-boolean v2, Lcom/sleepycat/b/l/ao;->b:Z

    if-nez v2, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_0
    sget-boolean v2, Lcom/sleepycat/b/l/ao;->b:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/b/l/ao;->d:[B

    array-length v2, v2

    iget v3, p0, Lcom/sleepycat/b/l/ao;->e:I

    div-int/2addr v2, v3

    if-lt p1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_1
    sget-boolean v2, Lcom/sleepycat/b/l/ao;->b:Z

    if-nez v2, :cond_2

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_2
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 2101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 151
    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    move-wide p2, v0

    .line 159
    :cond_3
    sget-object v2, Lcom/sleepycat/b/l/ao;->c:[J

    iget v3, p0, Lcom/sleepycat/b/l/ao;->e:I

    aget-wide v2, v2, v3

    cmp-long v2, p2, v2

    if-lez v2, :cond_5

    .line 161
    iget-object v0, p0, Lcom/sleepycat/b/l/ao;->d:[B

    array-length v0, v0

    iget v1, p0, Lcom/sleepycat/b/l/ao;->e:I

    div-int v2, v0, v1

    .line 163
    new-instance v0, Lcom/sleepycat/b/l/ao;

    iget v1, p0, Lcom/sleepycat/b/l/ao;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/l/ao;-><init>(II)V

    .line 166
    invoke-virtual {p0}, Lcom/sleepycat/b/l/ao;->a()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sleepycat/b/l/ao;->a()J

    move-result-wide v6

    invoke-virtual {p4, v4, v5, v6, v7}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 173
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sleepycat/b/l/ao;->b(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ao;

    move-result-object v0

    .line 175
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_8

    .line 176
    if-eq v1, p1, :cond_4

    .line 177
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/ao;->a(I)J

    move-result-wide v4

    invoke-direct {v0, v1, v4, v5, p4}, Lcom/sleepycat/b/l/ao;->b(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ao;

    move-result-object v0

    .line 175
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_5
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/sleepycat/b/l/ao;->e:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 186
    iget v3, p0, Lcom/sleepycat/b/l/ao;->e:I

    sub-int v3, v2, v3

    .line 188
    iget-object v4, p0, Lcom/sleepycat/b/l/ao;->d:[B

    and-long v6, p2, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 190
    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-le v2, v3, :cond_6

    .line 191
    const/16 v4, 0x8

    shr-long/2addr p2, v4

    .line 192
    iget-object v4, p0, Lcom/sleepycat/b/l/ao;->d:[B

    and-long v6, p2, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 190
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 195
    :cond_6
    sget-boolean v2, Lcom/sleepycat/b/l/ao;->b:Z

    if-nez v2, :cond_7

    const-wide/16 v2, -0x100

    and-long/2addr v2, p2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2, p3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v0

    :cond_7
    move-object v0, p0

    .line 197
    :cond_8
    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 212
    sget v0, Lcom/sleepycat/b/c/ao;->D:I

    iget-object v1, p0, Lcom/sleepycat/b/l/ao;->d:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(I)J
    .locals 6

    .prologue
    .line 123
    iget v0, p0, Lcom/sleepycat/b/l/ao;->e:I

    mul-int v2, p1, v0

    .line 124
    iget v0, p0, Lcom/sleepycat/b/l/ao;->e:I

    add-int v3, v2, v0

    .line 126
    iget-object v0, p0, Lcom/sleepycat/b/l/ao;->d:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 128
    add-int/lit8 v2, v2, 0x1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 129
    const/16 v4, 0x8

    shl-long/2addr v0, v4

    .line 130
    iget-object v4, p0, Lcom/sleepycat/b/l/ao;->d:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 134
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 1101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 137
    :cond_1
    return-wide v0
.end method

.method public final synthetic a(III)Lcom/sleepycat/b/l/an;
    .locals 5

    .prologue
    .line 87
    .line 2202
    iget-object v0, p0, Lcom/sleepycat/b/l/ao;->d:[B

    iget v1, p0, Lcom/sleepycat/b/l/ao;->e:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/sleepycat/b/l/ao;->d:[B

    iget v3, p0, Lcom/sleepycat/b/l/ao;->e:I

    mul-int/2addr v3, p2

    iget v4, p0, Lcom/sleepycat/b/l/ao;->e:I

    mul-int/2addr v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    return-object p0
.end method

.method public final synthetic a(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/an;
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/l/ao;->b(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ao;

    move-result-object v0

    return-object v0
.end method
