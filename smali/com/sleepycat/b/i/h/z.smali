.class public abstract Lcom/sleepycat/b/i/h/z;
.super Lcom/sleepycat/b/i/h/ad;
.source "ServiceDispatcher.java"


# instance fields
.field private final a:Lcom/sleepycat/b/i/h/x;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/x;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/ad;-><init>(Ljava/lang/String;)V

    .line 925
    iput-object p2, p0, Lcom/sleepycat/b/i/h/z;->a:Lcom/sleepycat/b/i/h/x;

    .line 926
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/nio/channels/SocketChannel;)Ljava/lang/Runnable;
.end method

.method public a()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 919
    invoke-super {p0}, Lcom/sleepycat/b/i/h/ad;->b()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Z
    .locals 1

    .prologue
    .line 919
    invoke-super {p0}, Lcom/sleepycat/b/i/h/ad;->c()Z

    move-result v0

    return v0
.end method

.method final d(Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sleepycat/b/i/h/z;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/x;->d(Lcom/sleepycat/b/i/h/x;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/h/z;->a(Ljava/nio/channels/SocketChannel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 933
    return-void
.end method
