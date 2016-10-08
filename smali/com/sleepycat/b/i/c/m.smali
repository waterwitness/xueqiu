.class final Lcom/sleepycat/b/i/c/m;
.super Lcom/sleepycat/b/i/h/y;
.source "NodeStateService.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/l;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/l;Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/i;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sleepycat/b/i/c/m;->a:Lcom/sleepycat/b/i/c/l;

    .line 67
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/b/i/h/y;-><init>(Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/ap;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected final a(Lcom/sleepycat/b/i/c/ay;)Lcom/sleepycat/b/i/c/az;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sleepycat/b/i/c/m;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/m;->a:Lcom/sleepycat/b/i/c/l;

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/b/i/c/ap;->a(Ljava/lang/Object;Lcom/sleepycat/b/i/c/ay;)Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sleepycat/b/i/c/m;->a:Lcom/sleepycat/b/i/c/l;

    .line 1027
    iget-object v0, v0, Lcom/sleepycat/b/i/c/l;->b:Ljava/util/logging/Logger;

    .line 79
    iget-object v1, p0, Lcom/sleepycat/b/i/c/m;->a:Lcom/sleepycat/b/i/c/l;

    .line 2027
    iget-object v1, v1, Lcom/sleepycat/b/i/c/l;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 2520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 79
    invoke-static {v0, v1, p1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 80
    return-void
.end method
