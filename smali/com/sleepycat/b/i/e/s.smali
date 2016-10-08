.class public Lcom/sleepycat/b/i/e/s;
.super Lcom/sleepycat/b/i/e/bc;
.source "OutputWireRecord.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field protected final a:Ljava/nio/ByteBuffer;

.field protected final b:Lcom/sleepycat/b/c/ad;

.field private e:Lcom/sleepycat/b/g/a/p;

.field private f:Lcom/sleepycat/b/g/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sleepycat/b/i/e/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/s;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p2}, Lcom/sleepycat/b/i/e/bc;-><init>(Lcom/sleepycat/b/g/ae;)V

    .line 41
    iput-object v0, p0, Lcom/sleepycat/b/i/e/s;->e:Lcom/sleepycat/b/g/a/p;

    .line 44
    iput-object v0, p0, Lcom/sleepycat/b/i/e/s;->f:Lcom/sleepycat/b/g/a/p;

    .line 53
    iput-object p1, p0, Lcom/sleepycat/b/i/e/s;->b:Lcom/sleepycat/b/c/ad;

    .line 54
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    .line 1291
    iget v1, p2, Lcom/sleepycat/b/g/ae;->d:I

    .line 55
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/al;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    .line 2074
    iget-object v0, p2, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 64
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/e/bc;-><init>(Lcom/sleepycat/b/g/ae;)V

    .line 41
    iput-object v1, p0, Lcom/sleepycat/b/i/e/s;->e:Lcom/sleepycat/b/g/a/p;

    .line 44
    iput-object v1, p0, Lcom/sleepycat/b/i/e/s;->f:Lcom/sleepycat/b/g/a/p;

    .line 65
    iput-object p1, p0, Lcom/sleepycat/b/i/e/s;->b:Lcom/sleepycat/b/c/ad;

    .line 66
    invoke-virtual {p2}, Lcom/sleepycat/b/g/al;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    .line 70
    sget-boolean v0, Lcom/sleepycat/b/i/e/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 2291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 70
    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Limit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 3291
    iget v2, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 227
    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 7283
    iget v0, v0, Lcom/sleepycat/b/g/ae;->f:I

    .line 227
    if-ge p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sleepycat/b/i/e/s;->d()Lcom/sleepycat/b/g/a/p;

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d()Lcom/sleepycat/b/g/a/p;
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->e:Lcom/sleepycat/b/g/a/p;

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/s;->c()Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 3791
    iget-object v1, v0, Lcom/sleepycat/b/g/af;->P:Lcom/sleepycat/b/g/ai;

    .line 4777
    iget-boolean v1, v1, Lcom/sleepycat/b/g/ai;->d:Z

    .line 93
    if-nez v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log entry type does not support replication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5631
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->M:Lcom/sleepycat/b/g/a/m;

    .line 97
    check-cast v0, Lcom/sleepycat/b/g/a/p;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/s;->e:Lcom/sleepycat/b/g/a/p;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->e:Lcom/sleepycat/b/g/a/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method final a(I)I
    .locals 1

    .prologue
    .line 207
    .line 6215
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/e/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6216
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/s;->a()Lcom/sleepycat/b/g/a/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sleepycat/b/g/a/p;->a(I)I

    move-result v0

    .line 207
    :goto_0
    add-int/lit8 v0, v0, 0x11

    return v0

    .line 6218
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 6291
    iget v0, v0, Lcom/sleepycat/b/g/ae;->d:I

    goto :goto_0
.end method

.method final declared-synchronized a()Lcom/sleepycat/b/g/a/p;
    .locals 4

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->f:Lcom/sleepycat/b/g/a/p;

    if-nez v0, :cond_1

    .line 110
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->b:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    .line 6057
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/bc;->c()Lcom/sleepycat/b/g/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    .line 6058
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 6059
    iget-object v3, p0, Lcom/sleepycat/b/i/e/bc;->d:Lcom/sleepycat/b/g/ae;

    invoke-interface {v0, v1, v3, v2}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 6060
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 111
    instance-of v1, v0, Lcom/sleepycat/b/g/a/p;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log entry type does not support replication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_0
    :try_start_1
    check-cast v0, Lcom/sleepycat/b/g/a/p;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/s;->f:Lcom/sleepycat/b/g/a/p;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->f:Lcom/sleepycat/b/g/a/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/s;->a()Lcom/sleepycat/b/g/a/p;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 321
    invoke-interface {v1}, Lcom/sleepycat/b/g/a/m;->i()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " txn id should be negative: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 318
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 326
    :cond_0
    instance-of v0, v1, Lcom/sleepycat/b/g/a/k;

    if-eqz v0, :cond_2

    .line 327
    sget-object v0, Lcom/sleepycat/b/g/af;->e:Lcom/sleepycat/b/g/af;

    .line 11125
    iget-object v2, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 11279
    iget-byte v2, v2, Lcom/sleepycat/b/g/ae;->b:B

    .line 327
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 329
    check-cast v0, Lcom/sleepycat/b/g/a/k;

    .line 330
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/g/a/k;->b(Z)V

    .line 331
    invoke-virtual {v0}, Lcom/sleepycat/b/g/a/k;->j()Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ab;

    .line 12062
    iget-object v0, v0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 13055
    iget-wide v2, v0, Lcom/sleepycat/b/c/h;->a:J

    .line 332
    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " db id should be negative: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 337
    :cond_1
    invoke-interface {v1}, Lcom/sleepycat/b/g/a/m;->a()Lcom/sleepycat/b/c/h;

    move-result-object v0

    .line 14055
    iget-wide v2, v0, Lcom/sleepycat/b/c/h;->a:J

    .line 337
    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " db id should be negative: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 344
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method final a(Ljava/nio/ByteBuffer;I)Z
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 8279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 247
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 248
    invoke-direct {p0, p2}, Lcom/sleepycat/b/i/e/s;->b(I)Z

    move-result v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/s;->a()Lcom/sleepycat/b/g/a/p;

    move-result-object v1

    .line 251
    invoke-static {p1, p2}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 252
    invoke-interface {v1, p2}, Lcom/sleepycat/b/g/a/p;->a(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 253
    iget-object v2, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 8295
    iget-object v2, v2, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 9101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 253
    invoke-static {p1, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 254
    iget-object v2, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 255
    invoke-interface {v1, p1, p2}, Lcom/sleepycat/b/g/a/p;->a(Ljava/nio/ByteBuffer;I)V

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 264
    return v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 9283
    iget v1, v1, Lcom/sleepycat/b/g/ae;->f:I

    .line 257
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 258
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 9291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 258
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 259
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 9295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 10101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 259
    invoke-static {p1, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 260
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 261
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 10279
    iget-byte v1, v1, Lcom/sleepycat/b/g/ae;->b:B

    .line 274
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-wide/16 v0, 0x0

    .line 279
    :goto_0
    return-wide v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/s;->a()Lcom/sleepycat/b/g/a/p;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->i()J

    move-result-wide v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    .line 6185
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6186
    iget-object v1, p0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/ae;->a(Ljava/lang/StringBuilder;)V

    .line 6187
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/s;->a()Lcom/sleepycat/b/g/a/p;

    move-result-object v1

    .line 6188
    invoke-interface {v1, v0}, Lcom/sleepycat/b/g/a/m;->a(Ljava/lang/StringBuilder;)V

    .line 6189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    .line 198
    const-string v0, ""

    goto :goto_0
.end method
