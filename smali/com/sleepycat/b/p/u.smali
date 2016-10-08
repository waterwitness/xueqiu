.class public Lcom/sleepycat/b/p/u;
.super Ljava/lang/Object;
.source "LogVerifier.java"


# static fields
.field static final synthetic d:Z

.field private static final e:B


# instance fields
.field public final a:Lcom/sleepycat/b/c/ad;

.field public final b:J

.field public c:Lcom/sleepycat/b/p/v;

.field private final f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private final i:Lcom/sleepycat/b/g/d;

.field private final j:Ljava/nio/ByteBuffer;

.field private k:Lcom/sleepycat/b/g/ae;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sleepycat/b/p/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/p/u;->d:Z

    .line 41
    sget-object v0, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    .line 12644
    iget-byte v0, v0, Lcom/sleepycat/b/g/af;->K:B

    .line 41
    sput-byte v0, Lcom/sleepycat/b/p/u;->e:B

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v4, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sleepycat/b/p/u;->a:Lcom/sleepycat/b/c/ad;

    .line 95
    iput-object p2, p0, Lcom/sleepycat/b/p/u;->f:Ljava/lang/String;

    .line 96
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/sleepycat/b/p/u;->b:J

    .line 98
    sget-object v0, Lcom/sleepycat/b/p/v;->a:Lcom/sleepycat/b/p/v;

    iput-object v0, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    .line 99
    iput-wide v4, p0, Lcom/sleepycat/b/p/u;->g:J

    .line 100
    iput-wide v4, p0, Lcom/sleepycat/b/p/u;->h:J

    .line 101
    new-instance v0, Lcom/sleepycat/b/g/d;

    invoke-direct {v0}, Lcom/sleepycat/b/g/d;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    .line 107
    const/16 v0, 0x16

    const/16 v1, 0x18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/p/u;->m:I

    .line 112
    return-void

    .line 3375
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 96
    invoke-virtual {v0, p2}, Lcom/sleepycat/b/g/m;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/b/p/u;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;

    move-result-object v0

    return-object v0
.end method

.method private b([BII)I
    .locals 6

    .prologue
    const/16 v2, 0xe

    .line 211
    sget-boolean v0, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xe

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 218
    sget-boolean v1, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 221
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 223
    :try_start_0
    new-instance v1, Lcom/sleepycat/b/g/ae;

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/sleepycat/b/p/u;->m:I

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/g/ae;-><init>(Ljava/nio/ByteBuffer;I)V

    iput-object v1, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 6287
    iget-wide v2, v1, Lcom/sleepycat/b/g/ae;->c:J

    .line 228
    iget-wide v4, p0, Lcom/sleepycat/b/p/u;->h:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Header prevOffset=0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 7287
    iget-wide v2, v1, Lcom/sleepycat/b/g/ae;->c:J

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but prevEntryStart=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/p/u;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7368
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/p/u;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;

    move-result-object v0

    .line 229
    throw v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-direct {p0, v0}, Lcom/sleepycat/b/p/u;->a(Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;

    move-result-object v0

    throw v0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 8307
    iget-boolean v1, v1, Lcom/sleepycat/b/g/ae;->i:Z

    .line 237
    if-eqz v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;I)V

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/b/g/d;->a([BII)V

    .line 246
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 8582
    iget-boolean v1, v1, Lcom/sleepycat/b/g/ae;->j:Z

    .line 246
    if-eqz v1, :cond_5

    .line 247
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 248
    sget-object v1, Lcom/sleepycat/b/p/v;->c:Lcom/sleepycat/b/p/v;

    iput-object v1, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    .line 257
    :cond_4
    :goto_0
    add-int/2addr v0, p2

    return v0

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 9279
    iget-byte v1, v1, Lcom/sleepycat/b/g/ae;->b:B

    .line 249
    sget-byte v2, Lcom/sleepycat/b/p/u;->e:B

    if-ne v1, v2, :cond_6

    .line 250
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 251
    sget-object v1, Lcom/sleepycat/b/p/v;->e:Lcom/sleepycat/b/p/v;

    iput-object v1, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    goto :goto_0

    .line 253
    :cond_6
    sget-object v1, Lcom/sleepycat/b/p/v;->d:Lcom/sleepycat/b/p/v;

    iput-object v1, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    goto :goto_0
.end method

.method private c([BII)I
    .locals 9

    .prologue
    const/16 v3, 0x18

    .line 298
    sget-boolean v0, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 299
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sleepycat/b/p/u;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x18

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 305
    iget-object v0, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 306
    sget-boolean v0, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-le v0, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 309
    iget-object v0, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/g/d;->a([BII)V

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    iget-object v0, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 10275
    iget-wide v2, v0, Lcom/sleepycat/b/g/ae;->a:J

    .line 311
    iget-wide v4, p0, Lcom/sleepycat/b/p/u;->b:J

    iget-wide v6, p0, Lcom/sleepycat/b/p/u;->g:J

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/g/d;->a(JJJ)V
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    iget-object v0, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 317
    sget-object v0, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->a:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    iget-object v3, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 320
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/l;

    .line 11050
    iget v0, v0, Lcom/sleepycat/b/g/l;->c:I

    .line 324
    iput v0, p0, Lcom/sleepycat/b/p/u;->m:I

    .line 326
    iget-wide v0, p0, Lcom/sleepycat/b/p/u;->g:J

    iput-wide v0, p0, Lcom/sleepycat/b/p/u;->h:J

    .line 327
    iget-wide v0, p0, Lcom/sleepycat/b/p/u;->g:J

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/p/u;->g:J

    .line 328
    sget-object v0, Lcom/sleepycat/b/p/v;->a:Lcom/sleepycat/b/p/v;

    iput-object v0, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    .line 331
    :cond_3
    add-int v0, p2, v8

    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-direct {p0, v0}, Lcom/sleepycat/b/p/u;->a(Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;

    move-result-object v0

    throw v0
.end method

.method private d([BII)I
    .locals 9

    .prologue
    .line 343
    sget-boolean v0, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 11291
    iget v0, v0, Lcom/sleepycat/b/g/ae;->d:I

    .line 346
    iget v1, p0, Lcom/sleepycat/b/p/u;->l:I

    sub-int v1, v0, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 348
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    invoke-virtual {v1, p1, p2, v8}, Lcom/sleepycat/b/g/d;->a([BII)V

    .line 349
    iget v1, p0, Lcom/sleepycat/b/p/u;->l:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/sleepycat/b/p/u;->l:I

    .line 350
    sget-boolean v1, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sleepycat/b/p/u;->l:I

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 352
    :cond_1
    iget v1, p0, Lcom/sleepycat/b/p/u;->l:I

    if-ne v1, v0, :cond_2

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 12275
    iget-wide v2, v2, Lcom/sleepycat/b/g/ae;->a:J

    .line 354
    iget-wide v4, p0, Lcom/sleepycat/b/p/u;->b:J

    iget-wide v6, p0, Lcom/sleepycat/b/p/u;->g:J

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/g/d;->a(JJJ)V
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    iget-wide v2, p0, Lcom/sleepycat/b/p/u;->g:J

    iput-wide v2, p0, Lcom/sleepycat/b/p/u;->h:J

    .line 360
    iget-wide v2, p0, Lcom/sleepycat/b/p/u;->g:J

    iget-object v1, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/p/u;->g:J

    .line 361
    sget-object v0, Lcom/sleepycat/b/p/v;->a:Lcom/sleepycat/b/p/v;

    iput-object v0, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    .line 364
    :cond_2
    add-int v0, p2, v8

    return v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-direct {p0, v0}, Lcom/sleepycat/b/p/u;->a(Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;
    .locals 4

    .prologue
    .line 377
    sget-object v0, Lcom/sleepycat/b/p/v;->f:Lcom/sleepycat/b/p/v;

    iput-object v0, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    .line 379
    new-instance v0, Lcom/sleepycat/b/o/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log is invalid, fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileNumber: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/p/u;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " logEntryOffset: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/p/u;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " verifyState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sleepycat/b/o/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a([BII)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 132
    add-int v0, p2, p3

    .line 134
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_6

    .line 135
    sub-int v1, v0, p2

    .line 136
    sget-object v2, Lcom/sleepycat/b/p/u$1;->a:[I

    iget-object v3, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/v;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 156
    sget-boolean v1, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4194
    :pswitch_0
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/d;->a()V

    .line 4195
    iget-object v1, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4196
    iput-object v6, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 4197
    iput v5, p0, Lcom/sleepycat/b/p/u;->l:I

    .line 4198
    sget-object v1, Lcom/sleepycat/b/p/v;->b:Lcom/sleepycat/b/p/v;

    iput-object v1, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-direct {p0, p1, p2, v1}, Lcom/sleepycat/b/p/u;->b([BII)I

    move-result p2

    goto :goto_0

    .line 4267
    :pswitch_2
    sget-boolean v2, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4268
    :cond_1
    sget-boolean v2, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 4582
    iget-boolean v2, v2, Lcom/sleepycat/b/g/ae;->j:Z

    .line 4268
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4270
    :cond_2
    invoke-static {}, Lcom/sleepycat/b/g/ae;->a()I

    .line 4271
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4274
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4275
    sget-boolean v2, Lcom/sleepycat/b/p/u;->d:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-le v2, v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4277
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 4278
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 4279
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    iget-object v3, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;)V

    .line 4280
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->i:Lcom/sleepycat/b/g/d;

    iget-object v3, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3, v5, v4}, Lcom/sleepycat/b/g/d;->a([BII)V

    .line 4282
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->k:Lcom/sleepycat/b/g/ae;

    .line 5279
    iget-byte v2, v2, Lcom/sleepycat/b/g/ae;->b:B

    .line 4282
    sget-byte v3, Lcom/sleepycat/b/p/u;->e:B

    if-ne v2, v3, :cond_5

    .line 4283
    iget-object v2, p0, Lcom/sleepycat/b/p/u;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4284
    sget-object v2, Lcom/sleepycat/b/p/v;->e:Lcom/sleepycat/b/p/v;

    iput-object v2, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    .line 4290
    :cond_4
    :goto_1
    add-int/2addr p2, v1

    .line 145
    goto/16 :goto_0

    .line 4286
    :cond_5
    sget-object v2, Lcom/sleepycat/b/p/v;->d:Lcom/sleepycat/b/p/v;

    iput-object v2, p0, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    goto :goto_1

    .line 147
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/sleepycat/b/p/u;->c([BII)I

    move-result p2

    goto/16 :goto_0

    .line 150
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/sleepycat/b/p/u;->d([BII)I

    move-result p2

    goto/16 :goto_0

    .line 153
    :pswitch_5
    const-string v0, "May not read after LogVerificationException is thrown"

    .line 5368
    invoke-virtual {p0, v0, v6}, Lcom/sleepycat/b/p/u;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;

    move-result-object v0

    .line 153
    throw v0

    .line 159
    :cond_6
    return-void

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
