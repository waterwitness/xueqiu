.class public final Lcom/sleepycat/b/l/n;
.super Lcom/sleepycat/b/l/l;
.source "INKeyRep.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:[B

.field private final c:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    const-class v0, Lcom/sleepycat/b/l/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/n;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IS)V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/sleepycat/b/l/l;-><init>()V

    .line 221
    sget-boolean v0, Lcom/sleepycat/b/l/n;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_0
    add-int/lit8 v0, p2, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sleepycat/b/l/n;->c:S

    .line 223
    iget-short v0, p0, Lcom/sleepycat/b/l/n;->c:S

    mul-int/2addr v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/b/l/n;->b:[B

    .line 224
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 225
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/n;->a(I[B)Lcom/sleepycat/b/l/l;

    move-result-object v1

    .line 226
    sget-boolean v2, Lcom/sleepycat/b/l/n;->a:Z

    if-nez v2, :cond_1

    if-eq v1, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_2
    return-void
.end method

.method static synthetic a(II)J
    .locals 2

    .prologue
    .line 5307
    sget v0, Lcom/sleepycat/b/c/ao;->C:I

    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, p0

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 201
    return-wide v0
.end method

.method private b(I)[B
    .locals 7

    .prologue
    .line 252
    iget-short v0, p0, Lcom/sleepycat/b/l/n;->c:S

    mul-int v2, p1, v0

    .line 254
    iget-object v0, p0, Lcom/sleepycat/b/l/n;->b:[B

    aget-byte v0, v0, v2

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1

    .line 255
    const/4 v0, 0x0

    .line 264
    :cond_0
    return-object v0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/n;->b:[B

    aget-byte v0, v0, v2

    add-int/lit16 v3, v0, 0x80

    .line 259
    new-array v0, v3, [B

    .line 261
    const/4 v1, 0x1

    :goto_0
    if-gt v1, v3, :cond_0

    .line 262
    add-int/lit8 v4, v1, -0x1

    iget-object v5, p0, Lcom/sleepycat/b/l/n;->b:[B

    add-int v6, v2, v1

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I[B)Lcom/sleepycat/b/l/l;
    .locals 5

    .prologue
    .line 270
    iget-short v0, p0, Lcom/sleepycat/b/l/n;->c:S

    mul-int v1, p1, v0

    .line 272
    if-nez p2, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sleepycat/b/l/n;->b:[B

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    .line 286
    :cond_0
    :goto_0
    return-object p0

    .line 277
    :cond_1
    array-length v0, p2

    iget-short v2, p0, Lcom/sleepycat/b/l/n;->c:S

    if-lt v0, v2, :cond_4

    .line 1314
    iget-object v0, p0, Lcom/sleepycat/b/l/n;->b:[B

    array-length v0, v0

    iget-short v1, p0, Lcom/sleepycat/b/l/n;->c:S

    div-int v1, v0, v1

    .line 1291
    new-instance v2, Lcom/sleepycat/b/l/m;

    invoke-direct {v2, v1}, Lcom/sleepycat/b/l/m;-><init>(I)V

    .line 1292
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 1293
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/n;->b(I)[B

    move-result-object v3

    .line 1294
    invoke-virtual {v2, v0, v3}, Lcom/sleepycat/b/l/m;->a(I[B)Lcom/sleepycat/b/l/l;

    move-result-object v3

    .line 1295
    sget-boolean v4, Lcom/sleepycat/b/l/n;->a:Z

    if-nez v4, :cond_2

    if-eq v3, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1292
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/b/l/m;->a(I[B)Lcom/sleepycat/b/l/l;

    move-result-object p0

    goto :goto_0

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/l/n;->b:[B

    array-length v2, p2

    add-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 283
    const/4 v0, 0x1

    :goto_2
    array-length v2, p2

    if-gt v0, v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/sleepycat/b/l/n;->b:[B

    add-int v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget-byte v4, p2, v4

    aput-byte v4, v2, v3

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5238
    sget-object v0, Lcom/sleepycat/b/l/o;->b:Lcom/sleepycat/b/l/o;

    .line 201
    return-object v0
.end method

.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/n;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 201
    .line 4243
    iget-object v0, p0, Lcom/sleepycat/b/l/n;->b:[B

    iget-short v1, p0, Lcom/sleepycat/b/l/n;->c:S

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/sleepycat/b/l/n;->b:[B

    iget-short v3, p0, Lcom/sleepycat/b/l/n;->c:S

    mul-int/2addr v3, p2

    iget-short v4, p0, Lcom/sleepycat/b/l/n;->c:S

    mul-int/2addr v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    return-object p0
.end method

.method public final bridge synthetic a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/n;->a(I[B)Lcom/sleepycat/b/l/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 201
    return-object p0
.end method

.method final a(ZLcom/sleepycat/b/d/b;)V
    .locals 1

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 2072
    iget-object v0, p2, Lcom/sleepycat/b/d/b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 331
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 335
    :goto_0
    return-void

    .line 3072
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/b/d/b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 333
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 302
    sget v0, Lcom/sleepycat/b/c/ao;->C:I

    iget-object v1, p0, Lcom/sleepycat/b/l/n;->b:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method
