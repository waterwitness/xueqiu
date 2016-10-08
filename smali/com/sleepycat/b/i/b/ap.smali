.class public abstract Lcom/sleepycat/b/i/b/ap;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;)V
    .locals 4

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/ap;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 170
    :catch_1
    move-exception v2

    .line 172
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    move-object v1, v0

    .line 173
    :goto_1
    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 174
    check-cast v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_0

    .line 176
    check-cast v0, Ljava/lang/Exception;

    move-object v1, v0

    .line 180
    goto :goto_1

    .line 181
    :cond_0
    instance-of v0, v1, Ljava/net/ConnectException;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, v1, Lcom/sleepycat/b/i/h/ae;

    if-eqz v0, :cond_2

    .line 186
    :cond_1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Election connection failure "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {v2}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
