.class public final Lcom/sleepycat/b/i/c/d;
.super Lcom/sleepycat/b/i/h/z;
.source "BinaryNodeStateService.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/aa;

.field public final b:Lcom/sleepycat/b/i/h/x;

.field final c:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 1

    .prologue
    .line 46
    const-string v0, "BinaryNodeState"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/i/h/z;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/x;)V

    .line 47
    iput-object p2, p0, Lcom/sleepycat/b/i/c/d;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 48
    iput-object p1, p0, Lcom/sleepycat/b/i/c/d;->b:Lcom/sleepycat/b/i/h/x;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/d;->c:Ljava/util/logging/Logger;

    .line 51
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/ad;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/channels/SocketChannel;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/sleepycat/b/i/c/e;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/i/c/e;-><init>(Lcom/sleepycat/b/i/c/d;Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method
