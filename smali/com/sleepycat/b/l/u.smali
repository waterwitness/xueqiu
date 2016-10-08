.class public final Lcom/sleepycat/b/l/u;
.super Lcom/sleepycat/b/l/r;
.source "INTargetRep.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field final b:[S

.field final c:[Lcom/sleepycat/b/l/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/sleepycat/b/l/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/u;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x4

    .line 157
    invoke-direct {p0}, Lcom/sleepycat/b/l/r;-><init>()V

    .line 140
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sleepycat/b/l/u;->b:[S

    .line 141
    new-array v0, v1, [Lcom/sleepycat/b/l/ac;

    iput-object v0, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    .line 160
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->b:[S

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/l/u;->b:[S

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sleepycat/b/l/u;->b:[S

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sleepycat/b/l/u;->b:[S

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput-short v8, v6, v7

    aput-short v8, v4, v5

    aput-short v8, v2, v3

    aput-short v8, v0, v1

    .line 161
    return-void
.end method

.method private b(I)Lcom/sleepycat/b/l/ac;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    sget-boolean v0, Lcom/sleepycat/b/l/u;->d:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x7fff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->b:[S

    aget-short v0, v0, v1

    if-ne v0, p1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aget-object v0, v0, v1

    .line 207
    :goto_0
    return-object v0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->b:[S

    aget-short v0, v0, v2

    if-ne v0, p1, :cond_3

    .line 199
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aget-object v0, v0, v2

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->b:[S

    aget-short v0, v0, v3

    if-ne v0, p1, :cond_4

    .line 202
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aget-object v0, v0, v3

    goto :goto_0

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->b:[S

    aget-short v0, v0, v4

    if-ne v0, p1, :cond_5

    .line 205
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aget-object v0, v0, v4

    goto :goto_0

    .line 207
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5145
    sget-object v0, Lcom/sleepycat/b/l/v;->b:Lcom/sleepycat/b/l/v;

    .line 129
    return-object v0
.end method

.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/u;->b(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 129
    .line 4172
    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 4174
    if-ge p2, p1, :cond_2

    move v1, v0

    move-object v0, p0

    .line 4176
    :goto_0
    if-ge v1, p3, :cond_0

    .line 4177
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/u;->b(I)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    invoke-virtual {v0, p2, v4, p4}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    .line 4176
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    move p1, v3

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 129
    :cond_1
    :goto_1
    return-object p0

    .line 4181
    :cond_2
    add-int v2, p1, p3

    .line 4182
    add-int v1, p2, p3

    move v3, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    .line 4183
    :goto_2
    if-ge v1, p3, :cond_3

    .line 4184
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/sleepycat/b/l/u;->b(I)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    invoke-virtual {v0, v2, v4, p4}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    .line 4183
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object p0, v0

    goto :goto_1
.end method

.method public final synthetic a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    check-cast p2, Lcom/sleepycat/b/l/ac;

    .line 4213
    sget-boolean v0, Lcom/sleepycat/b/l/u;->d:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x7fff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4215
    :cond_1
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 4216
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 4218
    iget-object v3, p0, Lcom/sleepycat/b/l/u;->b:[S

    aget-short v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 4219
    iget-object v1, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aput-object p2, v1, v0

    .line 4232
    :goto_1
    return-object p0

    .line 4223
    :cond_2
    if-gez v2, :cond_3

    iget-object v3, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aget-object v3, v3, v0

    if-nez v3, :cond_3

    move v2, v0

    .line 4216
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4229
    :cond_4
    if-ltz v2, :cond_5

    .line 4230
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aput-object p2, v0, v2

    .line 4231
    iget-object v0, p0, Lcom/sleepycat/b/l/u;->b:[S

    int-to-short v1, p1

    aput-short v1, v0, v2

    goto :goto_1

    .line 4236
    :cond_5
    new-instance v0, Lcom/sleepycat/b/l/s;

    .line 4372
    iget-object v2, p3, Lcom/sleepycat/b/l/j;->h:[B

    array-length v2, v2

    .line 4236
    invoke-direct {v0, v2}, Lcom/sleepycat/b/l/s;-><init>(I)V

    .line 4237
    invoke-virtual {p0, v0, p3}, Lcom/sleepycat/b/l/u;->a(Lcom/sleepycat/b/l/k;Lcom/sleepycat/b/l/j;)V

    .line 4239
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 4240
    iget-object v2, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 4241
    iget-object v2, p0, Lcom/sleepycat/b/l/u;->b:[S

    aget-short v2, v2, v1

    iget-object v3, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/l/s;->a(ILcom/sleepycat/b/l/ac;)Lcom/sleepycat/b/l/r;

    .line 4239
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4245
    :cond_7
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/s;->a(ILcom/sleepycat/b/l/ac;)Lcom/sleepycat/b/l/r;

    move-result-object p0

    goto :goto_1
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 129
    .line 3251
    iget-object v2, p0, Lcom/sleepycat/b/l/u;->c:[Lcom/sleepycat/b/l/ac;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 3252
    if-eqz v4, :cond_0

    .line 3253
    add-int/lit8 v0, v0, 0x1

    .line 3251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3256
    :cond_1
    if-nez v0, :cond_2

    .line 3257
    sget-object v0, Lcom/sleepycat/b/l/u;->a:Lcom/sleepycat/b/l/t;

    .line 3258
    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/b/l/u;->a(Lcom/sleepycat/b/l/k;Lcom/sleepycat/b/l/j;)V

    move-object p0, v0

    .line 3259
    :cond_2
    return-object p0
.end method

.method public final a(ZLcom/sleepycat/b/d/b;)V
    .locals 1

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 2064
    iget-object v0, p2, Lcom/sleepycat/b/d/b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 267
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 271
    :goto_0
    return-void

    .line 3064
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/b/d/b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 269
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 154
    sget v0, Lcom/sleepycat/b/c/ao;->z:I

    int-to-long v0, v0

    return-wide v0
.end method
