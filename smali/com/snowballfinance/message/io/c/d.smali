.class public Lcom/snowballfinance/message/io/c/d;
.super Lcom/snowballfinance/message/io/a;
.source "FragmentChannel.java"


# static fields
.field protected static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snowballfinance/message/io/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcom/snowballfinance/message/io/logger/Logger;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:J

.field protected volatile f:J

.field protected final g:Ljava/nio/channels/SocketChannel;

.field final h:Lrx/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lrx/i/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:J

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Lrx/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/snowballfinance/message/io/c/d;

    invoke-static {v0}, Lcom/snowballfinance/message/io/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/message/io/c/d;->j:Lcom/snowballfinance/message/io/logger/Logger;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/snowballfinance/message/io/c/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/snowballfinance/message/io/a;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/message/io/c/d;->d:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snowballfinance/message/io/c/d;->f:J

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    invoke-static {}, Lrx/i/a;->k()Lrx/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/d;->m:Lrx/i/a;

    .line 48
    invoke-static {}, Lrx/i/a;->k()Lrx/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/d;->g:Ljava/nio/channels/SocketChannel;

    .line 54
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/snowballfinance/message/io/c/d;->k:J

    .line 55
    return-void
.end method

.method public static b(Lcom/snowballfinance/message/io/b;)Lcom/snowballfinance/message/io/b;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 202
    new-instance v0, Lcom/snowballfinance/message/io/b;

    invoke-direct {v0}, Lcom/snowballfinance/message/io/b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 11119
    iput-wide v2, v0, Lcom/snowballfinance/message/io/b;->h:J

    .line 12068
    const/4 v1, 0x1

    iput v1, v0, Lcom/snowballfinance/message/io/b;->b:I

    .line 12077
    iput-boolean v4, v0, Lcom/snowballfinance/message/io/b;->c:Z

    .line 12102
    iput-boolean v4, v0, Lcom/snowballfinance/message/io/b;->f:Z

    .line 13094
    iput-boolean v4, v0, Lcom/snowballfinance/message/io/b;->e:Z

    .line 14055
    iget-wide v2, p0, Lcom/snowballfinance/message/io/b;->a:J

    .line 14059
    iput-wide v2, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 208
    return-object v0
.end method


# virtual methods
.method public final a()Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->m:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/snowballfinance/message/io/c/d$1;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/d$1;-><init>(Lcom/snowballfinance/message/io/c/d;)V

    invoke-virtual {v0, v1}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/snowballfinance/message/io/b;)Lrx/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowballfinance/message/io/b;",
            ")",
            "Lrx/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->g:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1020
    :try_start_0
    invoke-static {p1}, Lcom/snowballfinance/message/io/c;->a(Lcom/snowballfinance/message/io/b;)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    new-array v3, v0, [B

    .line 1021
    const/4 v0, 0x0

    const/16 v4, 0x20

    aput-byte v4, v3, v0

    .line 1022
    const/4 v0, 0x0

    aget-byte v4, v3, v0

    or-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 1023
    const/4 v4, 0x1

    .line 2098
    iget-boolean v0, p1, Lcom/snowballfinance/message/io/b;->f:Z

    .line 2020
    if-eqz v0, :cond_0

    move v0, v2

    .line 1023
    :goto_0
    shl-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 1024
    const/4 v4, 0x1

    aget-byte v5, v3, v4

    .line 3090
    iget-boolean v0, p1, Lcom/snowballfinance/message/io/b;->e:Z

    .line 3024
    if-eqz v0, :cond_1

    move v0, v2

    .line 1024
    :goto_1
    shl-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 1025
    const/4 v0, 0x2

    .line 4064
    iget v4, p1, Lcom/snowballfinance/message/io/b;->b:I

    .line 1025
    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 1026
    const/4 v4, 0x2

    aget-byte v5, v3, v4

    .line 5073
    iget-boolean v0, p1, Lcom/snowballfinance/message/io/b;->c:Z

    .line 5028
    if-eqz v0, :cond_2

    move v0, v2

    .line 1026
    :goto_2
    shl-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 1027
    const/4 v0, 0x2

    aget-byte v4, v3, v0

    .line 5081
    iget v5, p1, Lcom/snowballfinance/message/io/b;->d:I

    .line 1027
    and-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 1028
    const/4 v0, 0x4

    .line 6055
    iget-wide v4, p1, Lcom/snowballfinance/message/io/b;->a:J

    .line 1028
    invoke-static {v3, v0, v4, v5}, Lcom/snowballfinance/message/io/d;->a([BIJ)V

    .line 1029
    const/16 v0, 0x8

    array-length v4, v3

    int-to-long v4, v4

    invoke-static {v3, v0, v4, v5}, Lcom/snowballfinance/message/io/d;->a([BIJ)V

    .line 1030
    invoke-static {p1}, Lcom/snowballfinance/message/io/c;->a(Lcom/snowballfinance/message/io/b;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 1031
    const/4 v0, 0x3

    const/4 v4, 0x0

    aput-byte v4, v3, v0

    .line 153
    :goto_3
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    move v0, v1

    .line 155
    :goto_4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 156
    iget-object v5, p0, Lcom/snowballfinance/message/io/c/d;->g:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_4

    :cond_0
    move v0, v1

    .line 2020
    goto :goto_0

    :cond_1
    move v0, v1

    .line 3024
    goto :goto_1

    :cond_2
    move v0, v1

    .line 5028
    goto :goto_2

    .line 6106
    :cond_3
    iget-object v0, p1, Lcom/snowballfinance/message/io/b;->g:[B

    .line 1034
    const/4 v4, 0x3

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lcom/snowballfinance/message/io/d;->a([BII)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1035
    const/4 v4, 0x0

    const/16 v5, 0xc

    array-length v6, v0

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 180
    :catch_0
    move-exception v0

    .line 181
    sget-object v3, Lcom/snowballfinance/message/io/c/d;->j:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v3}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    sget-object v3, Lcom/snowballfinance/message/io/c/d;->j:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "write %s error."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    .line 187
    :goto_5
    return-object v0

    .line 158
    :cond_5
    :try_start_1
    array-length v3, v3

    if-ne v0, v3, :cond_7

    .line 7073
    iget-boolean v0, p1, Lcom/snowballfinance/message/io/b;->c:Z

    .line 159
    if-nez v0, :cond_6

    .line 160
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    goto :goto_5

    .line 162
    :cond_6
    invoke-static {}, Lrx/i/a;->k()Lrx/i/a;

    move-result-object v0

    .line 163
    iget-object v3, p0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :try_start_2
    iget-object v4, p0, Lcom/snowballfinance/message/io/c/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8055
    iget-wide v6, p1, Lcom/snowballfinance/message/io/b;->a:J

    .line 164
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :try_start_3
    new-instance v3, Lcom/snowballfinance/message/io/c/d$3;

    invoke-direct {v3, p0, p1}, Lcom/snowballfinance/message/io/c/d$3;-><init>(Lcom/snowballfinance/message/io/c/d;Lcom/snowballfinance/message/io/b;)V

    invoke-virtual {v0, v3}, Lrx/i/a;->c(Lrx/c/b;)Lrx/j;

    .line 176
    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_5

    .line 165
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 178
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_5

    .line 187
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    goto :goto_5
.end method

.method public final declared-synchronized a(I)Z
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    const/16 v0, 0x200

    if-le p1, v0, :cond_0

    .line 136
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snowballfinance/message/io/c/d;->e:J

    .line 140
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 138
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/snowballfinance/message/io/c/d;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)Lcom/snowballfinance/message/io/b;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 191
    new-instance v0, Lcom/snowballfinance/message/io/b;

    invoke-direct {v0}, Lcom/snowballfinance/message/io/b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8119
    iput-wide v2, v0, Lcom/snowballfinance/message/io/b;->h:J

    .line 9068
    iput p1, v0, Lcom/snowballfinance/message/io/b;->b:I

    .line 9077
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snowballfinance/message/io/b;->c:Z

    .line 9102
    iput-boolean v4, v0, Lcom/snowballfinance/message/io/b;->f:Z

    .line 10094
    iput-boolean v4, v0, Lcom/snowballfinance/message/io/b;->e:Z

    .line 195
    iget-wide v2, p0, Lcom/snowballfinance/message/io/c/d;->f:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lcom/snowballfinance/message/io/c/d;->f:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 196
    iput-wide v6, p0, Lcom/snowballfinance/message/io/c/d;->f:J

    .line 198
    :cond_0
    iget-wide v2, p0, Lcom/snowballfinance/message/io/c/d;->f:J

    .line 11059
    iput-wide v2, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 198
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/snowballfinance/message/io/c/d;
    .locals 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/d;->c:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->m:Lrx/i/a;

    new-instance v1, Lcom/snowballfinance/message/io/c/d$2;

    invoke-direct {v1, p0, p1}, Lcom/snowballfinance/message/io/c/d$2;-><init>(Lcom/snowballfinance/message/io/c/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/i/a;->c(Lrx/c/b;)Lrx/j;

    .line 91
    sget-object v0, Lcom/snowballfinance/message/io/c/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/snowballfinance/message/io/c/d;->d:I

    return v0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->m:Lrx/i/a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->m:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->a()V

    .line 120
    const/16 v0, 0x20

    iput v0, p0, Lcom/snowballfinance/message/io/c/d;->d:I

    .line 121
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/a;->a(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->a()V

    .line 123
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->g:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/d;->g:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    const-string v0, "%s[UUID:%s, TS:%3$tT.%3$tL]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/d;->g:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/d;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/snowballfinance/message/io/c/d;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
