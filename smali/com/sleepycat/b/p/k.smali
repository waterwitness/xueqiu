.class public final Lcom/sleepycat/b/p/k;
.super Ljava/util/logging/Handler;
.source "FileRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ad;

    .line 40
    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 2486
    :cond_1
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->V:Ljava/util/logging/FileHandler;

    .line 50
    if-eqz v1, :cond_0

    .line 3486
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->V:Ljava/util/logging/FileHandler;

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->publish(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method
