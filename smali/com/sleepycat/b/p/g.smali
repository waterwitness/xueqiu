.class public final Lcom/sleepycat/b/p/g;
.super Ljava/util/logging/ConsoleHandler;
.source "ConsoleRedirectHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public final publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ad;

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 52
    :goto_0
    return-void

    .line 2482
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->U:Ljava/util/logging/ConsoleHandler;

    .line 46
    if-nez v1, :cond_1

    .line 47
    invoke-super {p0, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    goto :goto_0

    .line 3482
    :cond_1
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->U:Ljava/util/logging/ConsoleHandler;

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    goto :goto_0
.end method
