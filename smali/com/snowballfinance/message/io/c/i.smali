.class public final Lcom/snowballfinance/message/io/c/i;
.super Ljava/lang/Thread;
.source "ReadThread.java"


# instance fields
.field protected final a:Lcom/snowballfinance/message/io/logger/Logger;

.field b:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<",
            "Lcom/snowballfinance/message/io/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/nio/channels/SocketChannel;

.field private d:Lcom/snowballfinance/message/io/a/b;

.field private e:Ljava/nio/channels/Selector;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .prologue
    .line 44
    const-string v0, "ReadThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/message/io/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/i;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snowballfinance/message/io/c/i;->f:Z

    .line 41
    invoke-static {}, Lrx/i/c;->k()Lrx/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/i;->b:Lrx/i/c;

    .line 45
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/i;->c:Ljava/nio/channels/SocketChannel;

    .line 46
    new-instance v0, Lcom/snowballfinance/message/io/a/b;

    const/high16 v1, 0x80000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snowballfinance/message/io/a/b;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 47
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/i;->e:Ljava/nio/channels/Selector;

    .line 48
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->e:Ljava/nio/channels/Selector;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 49
    return-void
.end method


# virtual methods
.method public final interrupt()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snowballfinance/message/io/c/i;->f:Z

    .line 109
    return-void
.end method

.method public final run()V
    .locals 14

    .prologue
    const/16 v13, 0xc

    const/high16 v12, 0x80000

    .line 54
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/snowballfinance/message/io/c/i;->f:Z

    if-eqz v0, :cond_6

    .line 55
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->e:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 60
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const v0, 0x7fffffff

    .line 64
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 1049
    iget v2, v2, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 64
    if-lez v2, :cond_7

    if-lez v0, :cond_7

    .line 65
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 2049
    iget v2, v0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 66
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 2054
    iget v3, v0, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 67
    iget-object v4, p0, Lcom/snowballfinance/message/io/c/i;->c:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 2082
    iget v0, v5, Lcom/snowballfinance/message/io/a/b;->c:I

    iget v6, v5, Lcom/snowballfinance/message/io/a/b;->d:I

    add-int/2addr v0, v6

    .line 2083
    iget-object v6, v5, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    iget v7, v5, Lcom/snowballfinance/message/io/a/b;->b:I

    if-le v0, v7, :cond_3

    iget v0, v5, Lcom/snowballfinance/message/io/a/b;->b:I

    :cond_3
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2084
    iget-object v0, v5, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    iget v6, v5, Lcom/snowballfinance/message/io/a/b;->c:I

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2085
    iget-object v0, v5, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v4, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 68
    if-lez v0, :cond_4

    .line 69
    iget-object v4, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 3021
    invoke-interface {v4}, Lcom/snowballfinance/message/io/a/a;->b()I

    move-result v5

    sub-int/2addr v5, v0

    .line 3022
    invoke-interface {v4, v5}, Lcom/snowballfinance/message/io/a/a;->b(I)Lcom/snowballfinance/message/io/a/a;

    .line 3023
    if-lez v0, :cond_4

    .line 3024
    invoke-interface {v4}, Lcom/snowballfinance/message/io/a/a;->a()I

    move-result v5

    add-int/2addr v5, v0

    .line 3025
    invoke-interface {v4}, Lcom/snowballfinance/message/io/a/a;->c()I

    move-result v6

    .line 3026
    rem-int/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/snowballfinance/message/io/a/a;->a(I)Lcom/snowballfinance/message/io/a/a;

    .line 71
    :cond_4
    if-lt v0, v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/i;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v2}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/i;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v4, "increase buffer to %d."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    mul-int/lit8 v7, v3, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 75
    :cond_5
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/snowballfinance/message/io/d/a;->a(Lcom/snowballfinance/message/io/a/b;I)Lcom/snowballfinance/message/io/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/i;->b:Lrx/i/c;

    invoke-virtual {v1, v0}, Lrx/i/c;->a(Ljava/lang/Throwable;)V

    .line 97
    :cond_6
    return-void

    .line 79
    :cond_7
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 4054
    iget v0, v2, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 5049
    iget v3, v2, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 4015
    sub-int/2addr v0, v3

    .line 4016
    if-lt v0, v13, :cond_9

    .line 4017
    const/16 v3, 0xc

    new-array v3, v3, [B

    .line 6049
    iget v4, v2, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 7038
    iget v5, v2, Lcom/snowballfinance/message/io/a/b;->c:I

    .line 4020
    const/16 v6, 0xc

    invoke-virtual {v2, v3, v6}, Lcom/snowballfinance/message/io/a/b;->a([BI)I

    .line 7043
    iput v4, v2, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 8032
    iput v5, v2, Lcom/snowballfinance/message/io/a/b;->c:I

    .line 4024
    const/16 v6, 0x8

    invoke-static {v3, v6}, Lcom/snowballfinance/message/io/d;->a([BI)J

    move-result-wide v6

    .line 4025
    long-to-int v3, v6

    if-lt v0, v3, :cond_9

    .line 8054
    iget v0, v2, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 4027
    add-int v3, v5, v4

    rem-int/2addr v3, v0

    .line 8072
    iget-object v5, v2, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    .line 4028
    if-eqz v5, :cond_8

    int-to-long v8, v3

    add-long/2addr v8, v6

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-gtz v0, :cond_8

    .line 8077
    iget-object v0, v2, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4029
    invoke-static {v0, v3}, Lcom/snowballfinance/message/io/b/c;->a([BI)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 4030
    int-to-long v4, v4

    add-long/2addr v4, v6

    long-to-int v3, v4

    .line 9043
    iput v3, v2, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 79
    :goto_2
    if-eqz v0, :cond_a

    .line 80
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/i;->b:Lrx/i/c;

    invoke-virtual {v2, v0}, Lrx/i/c;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 4033
    :cond_8
    long-to-int v0, v6

    new-array v0, v0, [B

    .line 4034
    long-to-int v3, v6

    invoke-virtual {v2, v0, v3}, Lcom/snowballfinance/message/io/a/b;->a([BI)I

    .line 4035
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/snowballfinance/message/io/b/c;->a([BI)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    goto :goto_2

    .line 4039
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 9054
    iget v0, v0, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 82
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 10049
    iget v2, v2, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 82
    sub-int/2addr v0, v2

    if-ge v0, v12, :cond_c

    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 10054
    iget v0, v0, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 82
    if-le v0, v12, :cond_c

    .line 83
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "decrease buffer to %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/high16 v5, 0x80000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/snowballfinance/message/io/d/a;->a(Lcom/snowballfinance/message/io/a/b;I)Lcom/snowballfinance/message/io/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 88
    :cond_c
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/i;->d:Lcom/snowballfinance/message/io/a/b;

    .line 11049
    iget v0, v0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 88
    if-gtz v0, :cond_1

    .line 89
    new-instance v0, Lcom/snowballfinance/message/io/b/a;

    const-string v1, "too large fragment!"

    invoke-direct {v0, v1}, Lcom/snowballfinance/message/io/b/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public final declared-synchronized start()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snowballfinance/message/io/c/i;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
