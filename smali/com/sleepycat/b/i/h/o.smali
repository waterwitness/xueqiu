.class public Lcom/sleepycat/b/i/h/o;
.super Ljava/lang/Object;
.source "NamedChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lcom/sleepycat/b/i/c/b/x;

.field protected final b:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    .line 36
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    .line 28
    iput-object p2, p0, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 70
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    .line 1044
    iget-object v0, p0, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 53
    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2044
    iget-object v1, p0, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2048
    iget-object v1, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sleepycat/b/i/h/o;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
