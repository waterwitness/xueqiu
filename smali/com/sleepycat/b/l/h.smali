.class public final Lcom/sleepycat/b/l/h;
.super Lcom/sleepycat/b/l/y;
.source "FileSummaryLN.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field public final a:Lcom/sleepycat/b/a/o;

.field public b:Lcom/sleepycat/b/a/z;

.field public c:Lcom/sleepycat/b/a/w;

.field public d:Z

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/sleepycat/b/l/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/h;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sleepycat/b/l/y;-><init>()V

    .line 98
    new-instance v0, Lcom/sleepycat/b/a/o;

    invoke-direct {v0}, Lcom/sleepycat/b/a/o;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    .line 99
    new-instance v0, Lcom/sleepycat/b/a/w;

    invoke-direct {v0}, Lcom/sleepycat/b/a/w;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    .line 100
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/y;-><init>([B)V

    .line 110
    new-instance v0, Lcom/sleepycat/b/a/o;

    invoke-direct {v0}, Lcom/sleepycat/b/a/o;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    .line 111
    new-instance v0, Lcom/sleepycat/b/a/w;

    invoke-direct {v0}, Lcom/sleepycat/b/a/w;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/a/o;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/y;-><init>([B)V

    .line 88
    sget-boolean v0, Lcom/sleepycat/b/l/h;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    .line 90
    new-instance v0, Lcom/sleepycat/b/a/w;

    invoke-direct {v0}, Lcom/sleepycat/b/a/w;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/l/h;->j:I

    .line 92
    return-void
.end method

.method public static a([B)Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 181
    array-length v1, p0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v1, p0, v3

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    aget-byte v1, p0, v3

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)[B
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 224
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 226
    long-to-int v2, p0

    invoke-static {v1, v2}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;I)V

    .line 228
    return-object v0
.end method

.method public static a(JI)[B
    .locals 4

    .prologue
    .line 240
    sget-boolean v0, Lcom/sleepycat/b/l/h;->e:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 243
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 250
    long-to-int v2, p0

    invoke-static {v1, v2}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;I)V

    .line 251
    const v2, 0x7fffffff

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;I)V

    .line 253
    return-object v0
.end method

.method public static b([B)J
    .locals 4

    .prologue
    .line 194
    invoke-static {p0}, Lcom/sleepycat/b/l/h;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {p0}, Lcom/sleepycat/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 198
    :goto_0
    return-wide v0

    .line 197
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    goto :goto_0
.end method

.method public static c()Lcom/sleepycat/b/l/y;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/sleepycat/b/l/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/l/h;-><init>(B)V

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 413
    sget-boolean v0, Lcom/sleepycat/b/l/h;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/b/l/h;->d:Z

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->b:Lcom/sleepycat/b/a/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/z;->j()[J

    move-result-object v0

    .line 416
    if-eqz v0, :cond_1

    .line 417
    iget-object v1, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/w;->e()I

    move-result v1

    .line 418
    iget-object v2, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/a/w;->a([J)V

    .line 419
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/w;->e()I

    move-result v0

    .line 420
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/l/h;->i:I

    .line 422
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/l/h;->d:Z

    .line 424
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Lcom/sleepycat/b/l/y;->a()I

    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/sleepycat/b/l/h;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/o;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    invoke-direct {p0}, Lcom/sleepycat/b/l/h;->p()V

    .line 349
    iget-object v1, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/w;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_0
    return v0
.end method

.method protected final a(ZZ)Lcom/sleepycat/b/g/af;
    .locals 2

    .prologue
    .line 330
    sget-boolean v0, Lcom/sleepycat/b/l/h;->e:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Txnl access to UP db not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 332
    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/af;->k:Lcom/sleepycat/b/g/af;

    return-object v0
.end method

.method public final a(IZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Lcom/sleepycat/b/l/h;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/w;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/c/i;J)V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/i;J)V

    .line 267
    iget v0, p0, Lcom/sleepycat/b/l/h;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3133
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 3504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 4488
    iget-boolean v0, v0, Lcom/sleepycat/b/a/c;->T:Z

    .line 267
    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/sleepycat/b/a/w;

    invoke-direct {v0}, Lcom/sleepycat/b/a/w;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    .line 271
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/l/a;)V
    .locals 4

    .prologue
    .line 465
    iget v0, p0, Lcom/sleepycat/b/l/h;->i:I

    if-eqz v0, :cond_2

    .line 466
    sget-boolean v0, Lcom/sleepycat/b/l/h;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/h;->b:Lcom/sleepycat/b/a/z;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 467
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/l/h;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 468
    :cond_1
    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/sleepycat/b/l/h;->i:I

    int-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sleepycat/b/l/a;->a(JJ)V

    .line 469
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/l/h;->i:I

    .line 471
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;[B)V
    .locals 6

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<fileSummaryLNKey fileNumber=\"0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sleepycat/b/l/h;->b([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "sequence=\"0x"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5207
    invoke-static {p2}, Lcom/sleepycat/b/l/h;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5208
    const-wide/16 v0, 0x0

    .line 477
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(Ljava/lang/StringBuilder;[B)V

    .line 480
    return-void

    .line 5210
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5211
    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;)I

    .line 5212
    const v1, 0x7fffffff

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;)I

    move-result v0

    sub-int v0, v1, v0

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->b:Lcom/sleepycat/b/a/z;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    iget-object v1, p0, Lcom/sleepycat/b/l/h;->b:Lcom/sleepycat/b/a/z;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/o;->a(Lcom/sleepycat/b/a/o;)V

    .line 367
    invoke-direct {p0}, Lcom/sleepycat/b/l/h;->p()V

    .line 369
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->b:Lcom/sleepycat/b/a/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/z;->i()V

    .line 372
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;)V

    .line 374
    invoke-virtual {p0}, Lcom/sleepycat/b/l/h;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/a/o;->a(Ljava/nio/ByteBuffer;)V

    .line 376
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/a/w;->a(Ljava/nio/ByteBuffer;)V

    .line 378
    :cond_1
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 386
    iput p2, p0, Lcom/sleepycat/b/l/h;->j:I

    .line 388
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;I)V

    .line 390
    invoke-virtual {p0}, Lcom/sleepycat/b/l/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/a/o;->a(Ljava/nio/ByteBuffer;I)V

    .line 392
    if-lez p2, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/a/w;->a(Ljava/nio/ByteBuffer;I)V

    .line 396
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/sleepycat/b/l/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/a/o;->a(Ljava/lang/StringBuilder;Z)V

    .line 312
    if-eqz p2, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/a/w;->a(Ljava/lang/StringBuilder;Z)V

    .line 316
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "<fileSummaryLN>"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "</fileSummaryLN>"

    return-object v0
.end method

.method final h()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lcom/sleepycat/b/l/y;->h()V

    .line 443
    new-instance v0, Lcom/sleepycat/b/a/w;

    invoke-direct {v0}, Lcom/sleepycat/b/a/w;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    .line 444
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/h;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v_()J
    .locals 4

    .prologue
    .line 431
    invoke-super {p0}, Lcom/sleepycat/b/l/y;->v_()J

    move-result-wide v0

    sget v2, Lcom/sleepycat/b/c/ao;->T:I

    sget v3, Lcom/sleepycat/b/c/ao;->t:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/w;->e()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
