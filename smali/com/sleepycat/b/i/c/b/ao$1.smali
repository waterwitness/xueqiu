.class final Lcom/sleepycat/b/i/c/b/ao$1;
.super Lcom/sleepycat/b/i/c/b/ag;
.source "ReplicaFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i/c/b/ao;->a(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/c/b/ag;
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/c/b/ag;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 15

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v4, v0

    move-wide v0, v2

    .line 55
    :cond_0
    :goto_0
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 1275
    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    .line 2271
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-virtual {v7}, Lcom/sleepycat/b/i/h/p;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    .line 59
    invoke-static {}, Lcom/sleepycat/b/i/c/b/ao;->a()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    invoke-static {}, Lcom/sleepycat/b/i/c/b/ao;->a()J

    move-result-wide v6

    rem-long v6, v0, v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    .line 2275
    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    .line 61
    sget-object v7, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v6, v7}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v6

    .line 63
    sget-object v7, Lcom/sleepycat/b/i/h/l;->c:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v6, v7}, Lcom/sleepycat/b/p/ai;->c(Lcom/sleepycat/b/p/ag;)J

    move-result-wide v8

    .line 65
    sget-object v7, Lcom/sleepycat/b/i/h/l;->d:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v6, v7}, Lcom/sleepycat/b/p/ai;->c(Lcom/sleepycat/b/p/ag;)J

    move-result-wide v6

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    .line 69
    div-long v10, v8, v4

    .line 71
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " Bytes Read: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Messages Read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " BytesPerMSec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0
.end method
