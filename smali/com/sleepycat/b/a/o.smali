.class public Lcom/sleepycat/b/a/o;
.super Ljava/lang/Object;
.source "FileSummary.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 271
    iget v0, p0, Lcom/sleepycat/b/a/o;->b:I

    if-lez v0, :cond_1

    .line 273
    iget v0, p0, Lcom/sleepycat/b/a/o;->b:I

    iget v1, p0, Lcom/sleepycat/b/a/o;->d:I

    iget v2, p0, Lcom/sleepycat/b/a/o;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 275
    invoke-direct {p0}, Lcom/sleepycat/b/a/o;->k()I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 284
    iget v1, p0, Lcom/sleepycat/b/a/o;->b:I

    if-le v0, v1, :cond_0

    .line 285
    iget v0, p0, Lcom/sleepycat/b/a/o;->b:I

    .line 289
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(JJ)I
    .locals 4

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    sub-long v2, p2, p0

    long-to-float v1, v2

    mul-float/2addr v0, v1

    long-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private b(F)I
    .locals 5

    .prologue
    .line 77
    iget v0, p0, Lcom/sleepycat/b/a/o;->e:I

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 82
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/a/o;->i:I

    iget v1, p0, Lcom/sleepycat/b/a/o;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 83
    iget v0, p0, Lcom/sleepycat/b/a/o;->j:I

    iget v1, p0, Lcom/sleepycat/b/a/o;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 84
    iget v1, p0, Lcom/sleepycat/b/a/o;->k:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 92
    int-to-long v0, v0

    .line 93
    sub-int/2addr v2, v3

    .line 94
    if-lez v2, :cond_2

    .line 101
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const/high16 p1, 0x3f800000    # 1.0f

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/a/o;->e()F

    move-result v3

    mul-float/2addr v3, p1

    .line 107
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 113
    :cond_2
    iget v2, p0, Lcom/sleepycat/b/a/o;->f:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget v0, p0, Lcom/sleepycat/b/a/o;->f:I

    goto :goto_0

    :cond_3
    long-to-int v0, v0

    goto :goto_0
.end method

.method private j()I
    .locals 8

    .prologue
    .line 171
    iget v0, p0, Lcom/sleepycat/b/a/o;->g:I

    if-nez v0, :cond_0

    .line 1065
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/o;->b(F)I

    move-result v0

    .line 224
    :goto_0
    return v0

    .line 175
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/a/o;->e:I

    if-nez v0, :cond_1

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_1
    iget v0, p0, Lcom/sleepycat/b/a/o;->i:I

    iget v1, p0, Lcom/sleepycat/b/a/o;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 181
    iget v0, p0, Lcom/sleepycat/b/a/o;->j:I

    iget v1, p0, Lcom/sleepycat/b/a/o;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 182
    iget v0, p0, Lcom/sleepycat/b/a/o;->k:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 190
    int-to-long v0, v3

    .line 191
    sub-int v4, v2, v4

    int-to-long v4, v4

    .line 192
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 215
    iget v6, p0, Lcom/sleepycat/b/a/o;->g:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    .line 217
    iget v6, p0, Lcom/sleepycat/b/a/o;->f:I

    sub-int v3, v6, v3

    iget v6, p0, Lcom/sleepycat/b/a/o;->e:I

    sub-int v2, v6, v2

    mul-int/lit8 v2, v2, 0x10

    sub-int v2, v3, v2

    int-to-long v2, v2

    .line 220
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 224
    :cond_2
    iget v2, p0, Lcom/sleepycat/b/a/o;->f:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget v0, p0, Lcom/sleepycat/b/a/o;->f:I

    goto :goto_0

    :cond_3
    long-to-int v0, v0

    goto :goto_0
.end method

.method private k()I
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/sleepycat/b/a/o;->c:I

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    .line 237
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/a/o;->h:I

    iget v1, p0, Lcom/sleepycat/b/a/o;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 240
    iget v1, p0, Lcom/sleepycat/b/a/o;->d:I

    int-to-float v1, v1

    .line 241
    iget v2, p0, Lcom/sleepycat/b/a/o;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 242
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/sleepycat/b/g/ar;->a()I

    const/16 v0, 0x2c

    return v0
.end method

.method public final a(F)I
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/sleepycat/b/a/o;->b(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/o;->a(I)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/sleepycat/b/a/o;)V
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/sleepycat/b/a/o;->a:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->a:I

    .line 362
    iget v0, p0, Lcom/sleepycat/b/a/o;->b:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->b:I

    .line 363
    iget v0, p0, Lcom/sleepycat/b/a/o;->c:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->c:I

    .line 364
    iget v0, p0, Lcom/sleepycat/b/a/o;->d:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->d:I

    .line 365
    iget v0, p0, Lcom/sleepycat/b/a/o;->e:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->e:I

    .line 366
    iget v0, p0, Lcom/sleepycat/b/a/o;->f:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->f:I

    .line 367
    iget v0, p0, Lcom/sleepycat/b/a/o;->g:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->g:I

    if-ge v0, v1, :cond_0

    .line 368
    iget v0, p1, Lcom/sleepycat/b/a/o;->g:I

    iput v0, p0, Lcom/sleepycat/b/a/o;->g:I

    .line 370
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/a/o;->h:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->h:I

    .line 371
    iget v0, p0, Lcom/sleepycat/b/a/o;->i:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->i:I

    .line 372
    iget v0, p0, Lcom/sleepycat/b/a/o;->j:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->j:I

    .line 373
    iget v0, p0, Lcom/sleepycat/b/a/o;->k:I

    iget v1, p1, Lcom/sleepycat/b/a/o;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/o;->k:I

    .line 374
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .prologue
    .line 446
    const-string v0, "<summary totalCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget v0, p0, Lcom/sleepycat/b/a/o;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    const-string v0, "\" totalSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget v0, p0, Lcom/sleepycat/b/a/o;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    const-string v0, "\" totalINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget v0, p0, Lcom/sleepycat/b/a/o;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    const-string v0, "\" totalINSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget v0, p0, Lcom/sleepycat/b/a/o;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    const-string v0, "\" totalLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget v0, p0, Lcom/sleepycat/b/a/o;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    const-string v0, "\" totalLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget v0, p0, Lcom/sleepycat/b/a/o;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    const-string v0, "\" maxLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v0, p0, Lcom/sleepycat/b/a/o;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    const-string v0, "\" obsoleteINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget v0, p0, Lcom/sleepycat/b/a/o;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const-string v0, "\" obsoleteLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget v0, p0, Lcom/sleepycat/b/a/o;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string v0, "\" obsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget v0, p0, Lcom/sleepycat/b/a/o;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const-string v0, "\" obsoleteLNSizeCounted=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget v0, p0, Lcom/sleepycat/b/a/o;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string v0, "\" getObsoleteSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Lcom/sleepycat/b/a/o;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    const-string v0, "\" getObsoleteINSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-direct {p0}, Lcom/sleepycat/b/a/o;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    const-string v0, "\" getObsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3065
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/o;->b(F)I

    move-result v0

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    const-string v0, "\" getMaxObsoleteSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0}, Lcom/sleepycat/b/a/o;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    const-string v0, "\" getMaxObsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-direct {p0}, Lcom/sleepycat/b/a/o;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    const-string v0, "\" getAvgObsoleteLNSizeNotCounted=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Lcom/sleepycat/b/a/o;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 480
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/sleepycat/b/a/o;->a:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 390
    iget v0, p0, Lcom/sleepycat/b/a/o;->b:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 391
    iget v0, p0, Lcom/sleepycat/b/a/o;->c:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 392
    iget v0, p0, Lcom/sleepycat/b/a/o;->d:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 393
    iget v0, p0, Lcom/sleepycat/b/a/o;->e:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 394
    iget v0, p0, Lcom/sleepycat/b/a/o;->f:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 395
    iget v0, p0, Lcom/sleepycat/b/a/o;->g:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 396
    iget v0, p0, Lcom/sleepycat/b/a/o;->h:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 397
    iget v0, p0, Lcom/sleepycat/b/a/o;->i:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 398
    iget v0, p0, Lcom/sleepycat/b/a/o;->j:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 399
    iget v0, p0, Lcom/sleepycat/b/a/o;->k:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 400
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->a:I

    .line 408
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->b:I

    .line 409
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->c:I

    .line 410
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->d:I

    .line 411
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->e:I

    .line 412
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->f:I

    .line 413
    const/16 v0, 0x8

    if-lt p2, v0, :cond_0

    .line 414
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->g:I

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->h:I

    .line 417
    iget v0, p0, Lcom/sleepycat/b/a/o;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 424
    iget v0, p0, Lcom/sleepycat/b/a/o;->c:I

    iput v0, p0, Lcom/sleepycat/b/a/o;->h:I

    .line 426
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->i:I

    .line 432
    const/4 v0, 0x3

    if-lt p2, v0, :cond_2

    .line 433
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->j:I

    .line 434
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/o;->k:I

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_2
    iput v2, p0, Lcom/sleepycat/b/a/o;->j:I

    .line 437
    iput v2, p0, Lcom/sleepycat/b/a/o;->k:I

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 488
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c()Lcom/sleepycat/b/a/o;
    .locals 1

    .prologue
    .line 43
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/o;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/b/a/o;->c()Lcom/sleepycat/b/a/o;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/sleepycat/b/a/o;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/a/o;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/a/o;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/a/o;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()F
    .locals 4

    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    .line 140
    iget v1, p0, Lcom/sleepycat/b/a/o;->i:I

    iget v2, p0, Lcom/sleepycat/b/a/o;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 141
    iget v2, p0, Lcom/sleepycat/b/a/o;->j:I

    iget v3, p0, Lcom/sleepycat/b/a/o;->f:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 142
    iget v3, p0, Lcom/sleepycat/b/a/o;->k:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 145
    sub-int/2addr v1, v3

    .line 146
    if-gtz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    iget v1, p0, Lcom/sleepycat/b/a/o;->f:I

    sub-int/2addr v1, v2

    .line 151
    iget v2, p0, Lcom/sleepycat/b/a/o;->e:I

    sub-int/2addr v2, v3

    .line 153
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 157
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 250
    .line 2065
    const/high16 v0, 0x7fc00000    # NaNf

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/o;->b(F)I

    move-result v0

    .line 250
    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/o;->a(I)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/sleepycat/b/a/o;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/o;->a(I)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 4

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/sleepycat/b/a/o;->f()I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lcom/sleepycat/b/a/o;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/a/o;->a(JJ)I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/sleepycat/b/a/o;->a:I

    .line 344
    iput v0, p0, Lcom/sleepycat/b/a/o;->b:I

    .line 345
    iput v0, p0, Lcom/sleepycat/b/a/o;->c:I

    .line 346
    iput v0, p0, Lcom/sleepycat/b/a/o;->d:I

    .line 347
    iput v0, p0, Lcom/sleepycat/b/a/o;->e:I

    .line 348
    iput v0, p0, Lcom/sleepycat/b/a/o;->f:I

    .line 349
    iput v0, p0, Lcom/sleepycat/b/a/o;->g:I

    .line 350
    iput v0, p0, Lcom/sleepycat/b/a/o;->h:I

    .line 351
    iput v0, p0, Lcom/sleepycat/b/a/o;->i:I

    .line 352
    iput v0, p0, Lcom/sleepycat/b/a/o;->j:I

    .line 353
    iput v0, p0, Lcom/sleepycat/b/a/o;->k:I

    .line 354
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/a/o;->a(Ljava/lang/StringBuilder;Z)V

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
