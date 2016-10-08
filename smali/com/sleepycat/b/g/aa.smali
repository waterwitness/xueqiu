.class public Lcom/sleepycat/b/g/aa;
.super Ljava/lang/Object;
.source "LogBuffer.java"

# interfaces
.implements Lcom/sleepycat/b/g/ap;


# static fields
.field static final synthetic h:Z

.field private static final i:Ljava/lang/String;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public b:J

.field c:J

.field d:Lcom/sleepycat/b/f/a;

.field e:Z

.field f:Ljava/util/concurrent/atomic/AtomicInteger;

.field g:[B

.field private j:Lcom/sleepycat/b/c/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sleepycat/b/g/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/aa;->h:Z

    .line 37
    const-class v0, Lcom/sleepycat/b/g/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/aa;->i:Ljava/lang/String;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/sleepycat/b/c/ad;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/aa;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sleepycat/b/g/aa;->g:[B

    .line 62
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->g:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    .line 63
    new-instance v0, Lcom/sleepycat/b/f/a;

    sget-object v1, Lcom/sleepycat/b/g/aa;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    .line 64
    iput-object p2, p0, Lcom/sleepycat/b/g/aa;->j:Lcom/sleepycat/b/c/ad;

    .line 65
    invoke-virtual {p0}, Lcom/sleepycat/b/g/aa;->c()V

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;J)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/aa;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    iput-object p1, p0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    .line 76
    iput-wide p2, p0, Lcom/sleepycat/b/g/aa;->b:J

    .line 77
    iput-wide p2, p0, Lcom/sleepycat/b/g/aa;->c:J

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/g/aa;->e:Z

    .line 79
    return-void
.end method


# virtual methods
.method public final a(J)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 306
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 307
    iget-wide v2, p0, Lcom/sleepycat/b/g/aa;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    return-object v0

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(JI)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/aa;->a(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, p3, :cond_0

    .line 326
    new-instance v1, Lcom/sleepycat/b/g/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copy.remaining="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " numBytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    .line 1151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/f/a;->a(Z)Z

    .line 221
    return-void
.end method

.method final a(I)Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 336
    const/16 v0, 0x8

    return v0
.end method

.method final c()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 86
    iput-wide v2, p0, Lcom/sleepycat/b/g/aa;->b:J

    .line 87
    iput-wide v2, p0, Lcom/sleepycat/b/g/aa;->c:J

    .line 88
    iput-boolean v1, p0, Lcom/sleepycat/b/g/aa;->e:Z

    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->c()V

    .line 91
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 263
    iget-object v1, p0, Lcom/sleepycat/b/g/aa;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    .line 264
    const-wide/16 v2, 0x64

    invoke-static {p0, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 270
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-instance v0, Lcom/sleepycat/b/bo;

    iget-object v1, p0, Lcom/sleepycat/b/g/aa;->j:Lcom/sleepycat/b/c/ad;

    const-string v2, "Interrupt during read operation"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/a;->a()V

    .line 276
    iget-object v1, p0, Lcom/sleepycat/b/g/aa;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_2

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/a;->c()V

    goto :goto_0

    .line 283
    :cond_3
    return-void
.end method
