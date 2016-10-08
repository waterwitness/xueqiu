.class public final Lcom/sleepycat/b/i/h/p;
.super Lcom/sleepycat/b/i/h/o;
.source "NamedChannelWithTimeout.java"


# instance fields
.field private volatile c:Z

.field private volatile d:I

.field private final e:Lcom/sleepycat/b/c/ad;

.field private final f:Ljava/util/logging/Logger;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Ljava/nio/channels/SocketChannel;I)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/sleepycat/b/i/h/o;-><init>(Ljava/nio/channels/SocketChannel;)V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/h/p;->g:J

    .line 52
    iput p3, p0, Lcom/sleepycat/b/i/h/p;->d:I

    .line 1520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 53
    iput-object v0, p0, Lcom/sleepycat/b/i/h/p;->e:Lcom/sleepycat/b/c/ad;

    .line 54
    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/b/aa;->a()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/p;->f:Ljava/util/logging/Logger;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/p;->c:Z

    .line 56
    if-lez p3, :cond_0

    .line 1597
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->w:Lcom/sleepycat/b/i/c/b/a;

    .line 2079
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 68
    iput p1, p0, Lcom/sleepycat/b/i/h/p;->d:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/p;->c:Z

    .line 71
    return-void
.end method

.method public final a(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 115
    iget-object v2, p0, Lcom/sleepycat/b/i/h/p;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return v0

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/i/h/p;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_1
    iget-boolean v2, p0, Lcom/sleepycat/b/i/h/p;->c:Z

    if-eqz v2, :cond_2

    .line 2099
    iput-wide p1, p0, Lcom/sleepycat/b/i/h/p;->g:J

    .line 2100
    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/p;->c:Z

    move v0, v1

    .line 127
    goto :goto_0

    .line 130
    :cond_2
    iget v2, p0, Lcom/sleepycat/b/i/h/p;->d:I

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/sleepycat/b/i/h/p;->g:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/sleepycat/b/i/h/p;->d:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    :cond_3
    move v0, v1

    .line 131
    goto :goto_0

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/i/h/p;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/p;->e:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inactive channel: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3044
    iget-object v4, p0, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forced close. Timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sleepycat/b/i/h/p;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/h/p;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sleepycat/b/i/h/p;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/p;->c:Z

    .line 96
    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sleepycat/b/i/h/p;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 84
    if-lez v0, :cond_0

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/i/h/p;->c:Z

    .line 87
    :cond_0
    return v0
.end method
