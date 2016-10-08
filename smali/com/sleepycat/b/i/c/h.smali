.class final Lcom/sleepycat/b/i/c/h;
.super Lcom/sleepycat/b/i/h/y;
.source "GroupService.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/g;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/g;Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/x;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sleepycat/b/i/c/h;->a:Lcom/sleepycat/b/i/c/g;

    .line 283
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/b/i/h/y;-><init>(Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/ap;)V

    .line 1043
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/i/c/g;->b(Ljava/nio/channels/SocketChannel;)V

    .line 285
    return-void
.end method


# virtual methods
.method protected final a(Lcom/sleepycat/b/i/c/ay;)Lcom/sleepycat/b/i/c/az;
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sleepycat/b/i/c/h;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/h;->a:Lcom/sleepycat/b/i/c/g;

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/b/i/c/ap;->a(Ljava/lang/Object;Lcom/sleepycat/b/i/c/ay;)Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/sleepycat/b/i/c/h;->a:Lcom/sleepycat/b/i/c/g;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/h;->b:Ljava/nio/channels/SocketChannel;

    .line 2043
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/c/g;->c(Ljava/nio/channels/SocketChannel;)Z

    move-result v1

    .line 298
    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sleepycat/b/i/c/h;->a:Lcom/sleepycat/b/i/c/g;

    .line 3043
    iget-object v0, v0, Lcom/sleepycat/b/i/c/g;->c:Ljava/util/logging/Logger;

    .line 303
    iget-object v1, p0, Lcom/sleepycat/b/i/c/h;->a:Lcom/sleepycat/b/i/c/g;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/g;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 3520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 303
    invoke-static {v0, v1, p1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 304
    return-void
.end method
