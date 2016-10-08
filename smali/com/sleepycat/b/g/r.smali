.class final Lcom/sleepycat/b/g/r;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/sleepycat/b/g/m;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/io/RandomAccessFile;

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:[B

.field private g:I

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2682
    const-class v0, Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/r;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/g/m;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2682
    iput-object p1, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2683
    iput-object v0, p0, Lcom/sleepycat/b/g/r;->c:Ljava/io/RandomAccessFile;

    .line 2684
    iput-object v0, p0, Lcom/sleepycat/b/g/r;->d:Ljava/io/RandomAccessFile;

    .line 2685
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2697
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v1}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v0}, Lcom/sleepycat/b/g/m;->b(Lcom/sleepycat/b/g/m;)I

    move-result v0

    new-array v0, v0, [B

    :cond_0
    iput-object v0, p0, Lcom/sleepycat/b/g/r;->f:[B

    .line 2701
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/g/r;->g:I

    .line 2707
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/g/r;->i:J

    return-void
.end method

.method private a(JZ)Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 2944
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 2955
    if-eqz p3, :cond_0

    .line 2956
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2959
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v1}, Lcom/sleepycat/b/g/m;->d(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/g/q;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/m;JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;

    move-result-object v0

    .line 4044
    iget-object v0, v0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 2959
    iput-object v0, p0, Lcom/sleepycat/b/g/r;->c:Ljava/io/RandomAccessFile;

    .line 2963
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v1}, Lcom/sleepycat/b/g/m;->d(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/g/q;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/m;JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;

    move-result-object v0

    .line 5044
    iget-object v0, v0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 2963
    iput-object v0, p0, Lcom/sleepycat/b/g/r;->d:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2968
    if-eqz p3, :cond_1

    .line 2969
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2974
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->c:Ljava/io/RandomAccessFile;

    return-object v0

    .line 2968
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_2

    .line 2969
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2968
    :cond_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2975
    :catch_0
    move-exception v0

    .line 2981
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v2}, Lcom/sleepycat/b/g/m;->c(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/c/ad;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/sleepycat/b/g/r;J)Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 2682
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/g/r;->a(JZ)Ljava/io/RandomAccessFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/g/r;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 2882
    sget-boolean v0, Lcom/sleepycat/b/g/r;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2884
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2886
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/g/r;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2888
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2889
    return-void

    .line 2888
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic b(Lcom/sleepycat/b/g/r;)V
    .locals 0

    .prologue
    .line 2682
    invoke-direct {p0}, Lcom/sleepycat/b/g/r;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 2898
    sget-boolean v0, Lcom/sleepycat/b/g/r;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2901
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->f:[B

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    :try_start_1
    iget v0, p0, Lcom/sleepycat/b/g/r;->g:I

    if-nez v0, :cond_1

    .line 2904
    monitor-exit v1

    .line 2927
    :goto_0
    return-void

    .line 2907
    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/g/r;->i:J

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/sleepycat/b/g/r;->a(JZ)Ljava/io/RandomAccessFile;

    move-result-object v2

    .line 2908
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2909
    :try_start_2
    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2910
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->f:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/sleepycat/b/g/r;->g:I

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 2911
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v0, v0, Lcom/sleepycat/b/g/m;->P:Lcom/sleepycat/b/p/z;

    iget v3, p0, Lcom/sleepycat/b/g/r;->g:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 2912
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v0, v0, Lcom/sleepycat/b/g/m;->R:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 2913
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-boolean v0, v0, Lcom/sleepycat/b/g/m;->A:Z

    if-eqz v0, :cond_2

    .line 2914
    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2915
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->f:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/sleepycat/b/g/r;->g:I

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 2916
    iget v0, p0, Lcom/sleepycat/b/g/r;->g:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2918
    iget-object v3, p0, Lcom/sleepycat/b/g/r;->f:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/sleepycat/b/g/r;->g:I

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2919
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2920
    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->h:J

    const-string v3, "post-write"

    invoke-static {v0, v4, v5, v3}, Lcom/sleepycat/b/g/m;->a(Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    .line 2923
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2926
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/sleepycat/b/g/r;->g:I

    .line 2927
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2928
    :catch_0
    move-exception v0

    .line 2929
    new-instance v1, Lcom/sleepycat/b/at;

    iget-object v2, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v2}, Lcom/sleepycat/b/g/m;->c(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/c/ad;

    move-result-object v2

    const-string v3, "IOException during fsync"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/at;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2923
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static synthetic c(Lcom/sleepycat/b/g/r;)V
    .locals 4

    .prologue
    .line 2682
    .line 6001
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6005
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v0}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6006
    invoke-direct {p0}, Lcom/sleepycat/b/g/r;->c()V

    .line 6009
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->d:Ljava/io/RandomAccessFile;

    .line 6010
    if-eqz v0, :cond_1

    .line 6011
    const-string v1, "fsync"

    invoke-static {v1}, Lcom/sleepycat/b/g/m;->b(Ljava/lang/String;)V

    .line 6012
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6014
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6015
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 6016
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v0, v0, Lcom/sleepycat/b/g/m;->U:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 6017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 6018
    iget-object v2, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v2, v2, Lcom/sleepycat/b/g/m;->V:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6032
    :try_start_2
    sget-boolean v0, Lcom/sleepycat/b/g/r;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 6036
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v0}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6037
    invoke-direct {p0}, Lcom/sleepycat/b/g/r;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6040
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6041
    return-void

    .line 6019
    :catch_0
    move-exception v0

    .line 6026
    :try_start_3
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v2}, Lcom/sleepycat/b/g/m;->c(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/c/ad;

    move-result-object v2

    const-string v3, "Channel closed, may be due to thread interrupt"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6040
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3056
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3059
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->c:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 3060
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->c:Ljava/io/RandomAccessFile;

    .line 3066
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/b/g/r;->c:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3068
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3074
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->d:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 3075
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->d:Ljava/io/RandomAccessFile;

    .line 3081
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/b/g/r;->d:Ljava/io/RandomAccessFile;

    .line 3082
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 3085
    :cond_1
    if-eqz v0, :cond_2

    .line 3086
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3089
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 3071
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3089
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3090
    return-void
.end method

.method final a(J[BJII)Z
    .locals 8

    .prologue
    .line 2779
    sget-boolean v0, Lcom/sleepycat/b/g/r;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/r;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2781
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_7

    .line 3822
    :try_start_0
    iget-wide v2, p0, Lcom/sleepycat/b/g/r;->i:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    .line 3823
    invoke-direct {p0}, Lcom/sleepycat/b/g/r;->b()V

    .line 3824
    iput-wide p1, p0, Lcom/sleepycat/b/g/r;->i:J

    .line 3827
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/g/r;->f:[B

    monitor-enter v2
    :try_end_0
    .catch Lcom/sleepycat/b/p/ae; {:try_start_0 .. :try_end_0} :catch_0

    .line 3828
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v0}, Lcom/sleepycat/b/g/m;->b(Lcom/sleepycat/b/g/m;)I

    move-result v0

    iget v3, p0, Lcom/sleepycat/b/g/r;->g:I

    sub-int/2addr v0, v3

    if-ge v0, p7, :cond_2

    const/4 v0, 0x1

    .line 3830
    :goto_1
    if-eqz v0, :cond_3

    .line 3831
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v0, v0, Lcom/sleepycat/b/g/m;->S:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 3841
    sget-object v0, Lcom/sleepycat/b/p/ae;->a:Lcom/sleepycat/b/p/ae;

    throw v0

    .line 3866
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/sleepycat/b/p/ae; {:try_start_2 .. :try_end_2} :catch_0

    .line 2787
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/sleepycat/b/g/r;->b()V

    .line 2781
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3828
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3844
    :cond_3
    :try_start_3
    sget-boolean v0, Lcom/sleepycat/b/g/r;->a:Z

    if-nez v0, :cond_4

    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->i:J

    cmp-long v0, v4, p1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3845
    :cond_4
    iget v0, p0, Lcom/sleepycat/b/g/r;->g:I

    .line 3846
    if-nez v0, :cond_5

    .line 3851
    iput-wide p4, p0, Lcom/sleepycat/b/g/r;->h:J

    .line 3854
    :cond_5
    int-to-long v4, v0

    iget-wide v6, p0, Lcom/sleepycat/b/g/r;->h:J

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-eqz v0, :cond_6

    .line 3855
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    invoke-static {v3}, Lcom/sleepycat/b/g/m;->c(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/c/ad;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "non-consecutive writes queued. qwPos="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/sleepycat/b/g/r;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " write destOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0

    .line 3862
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->f:[B

    iget v3, p0, Lcom/sleepycat/b/g/r;->g:I

    invoke-static {p3, p6, v0, v3, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3865
    iget v0, p0, Lcom/sleepycat/b/g/r;->g:I

    add-int/2addr v0, p7

    iput v0, p0, Lcom/sleepycat/b/g/r;->g:I

    .line 3866
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2785
    const/4 v0, 0x1

    .line 2793
    :goto_2
    return v0

    .line 2792
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v0, v0, Lcom/sleepycat/b/g/m;->T:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 2793
    const/4 v0, 0x0

    goto :goto_2
.end method

.method final a(Ljava/nio/ByteBuffer;JJ)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2733
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 2734
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v1, v2, v1

    .line 2735
    iget-object v2, p0, Lcom/sleepycat/b/g/r;->f:[B

    monitor-enter v2

    .line 2736
    :try_start_0
    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->i:J

    cmp-long v3, v4, p4

    if-eqz v3, :cond_0

    .line 2737
    monitor-exit v2

    .line 2760
    :goto_0
    return v0

    .line 2740
    :cond_0
    iget v3, p0, Lcom/sleepycat/b/g/r;->g:I

    if-nez v3, :cond_1

    .line 2741
    monitor-exit v2

    goto :goto_0

    .line 2761
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2744
    :cond_1
    :try_start_1
    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->h:J

    cmp-long v3, p2, v4

    if-ltz v3, :cond_2

    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->h:J

    iget v3, p0, Lcom/sleepycat/b/g/r;->g:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v4, p2

    if-gtz v3, :cond_3

    .line 2747
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 2751
    :cond_3
    iget v0, p0, Lcom/sleepycat/b/g/r;->g:I

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/sleepycat/b/g/r;->h:J

    sub-long v6, p2, v6

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 2754
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2755
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->f:[B

    iget-wide v4, p0, Lcom/sleepycat/b/g/r;->h:J

    sub-long v4, p2, v4

    long-to-int v3, v4

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 2758
    iget-object v1, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v1, v1, Lcom/sleepycat/b/g/m;->O:Lcom/sleepycat/b/p/z;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 2759
    iget-object v0, p0, Lcom/sleepycat/b/g/r;->b:Lcom/sleepycat/b/g/m;

    iget-object v0, v0, Lcom/sleepycat/b/g/m;->Q:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 2760
    const/4 v0, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
