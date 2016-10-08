.class final Lcom/sleepycat/b/p/ak;
.super Ljava/lang/Object;
.source "StoppableThread.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/sleepycat/b/p/aj;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/p/aj;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/p/aj;B)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sleepycat/b/p/ak;-><init>(Lcom/sleepycat/b/p/aj;)V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/aj;->a()Ljava/util/logging/Logger;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    if-nez v0, :cond_3

    const-string v0, ""

    .line 154
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " exited unexpectedly with exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz p2, :cond_0

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v2, v2, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    if-eqz v2, :cond_4

    .line 165
    iget-object v2, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v2, v2, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    if-nez v0, :cond_5

    .line 203
    :cond_2
    :goto_2
    return-void

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->B()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_4
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    .line 3474
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->H:Lcom/sleepycat/b/ag;

    .line 182
    if-eqz v0, :cond_6

    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 183
    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/q;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/sleepycat/b/af;

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/p/ak;->a:Lcom/sleepycat/b/p/aj;

    iget-object v1, v1, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->y:Lcom/sleepycat/b/c/ac;

    invoke-direct {v0, v1, v2, p2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
