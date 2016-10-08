.class public final Lcom/sleepycat/b/i/c/l;
.super Lcom/sleepycat/b/i/h/z;
.source "NodeStateService.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/aa;

.field final b:Ljava/util/logging/Logger;

.field private final c:Lcom/sleepycat/b/i/c/i;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 4

    .prologue
    .line 37
    const-string v0, "NodeState"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/i/h/z;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/x;)V

    .line 38
    iput-object p2, p0, Lcom/sleepycat/b/i/c/l;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 1520
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 40
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->Y()Lcom/sleepycat/b/i/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/w;->b()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/sleepycat/b/i/c/i;

    .line 2454
    iget-object v2, p2, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 2520
    iget-object v3, p2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 42
    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/b/i/c/i;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/l;->c:Lcom/sleepycat/b/i/c/i;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/l;->b:Ljava/util/logging/Logger;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/channels/SocketChannel;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/sleepycat/b/i/c/m;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/l;->c:Lcom/sleepycat/b/i/c/i;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/b/i/c/m;-><init>(Lcom/sleepycat/b/i/c/l;Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/i;)V

    return-object v0
.end method
