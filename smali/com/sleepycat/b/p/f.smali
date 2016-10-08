.class public final Lcom/sleepycat/b/p/f;
.super Ljava/util/logging/Handler;
.source "ConfiguredRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 28
    return-void
.end method

.method private static a()Ljava/util/logging/Handler;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ad;

    .line 47
    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 2490
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->W:Ljava/util/logging/Handler;

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/sleepycat/b/p/f;->a()Ljava/util/logging/Handler;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 61
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/sleepycat/b/p/f;->a()Ljava/util/logging/Handler;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 69
    :cond_0
    return-void
.end method

.method public final publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/sleepycat/b/p/f;->a()Ljava/util/logging/Handler;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 36
    :cond_0
    return-void
.end method
