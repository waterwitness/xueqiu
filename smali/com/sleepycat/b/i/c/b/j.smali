.class final Lcom/sleepycat/b/i/c/b/j;
.super Ljava/lang/Object;
.source "Feeder.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/b/h;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/i/c/b/h;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/j;->a:Lcom/sleepycat/b/i/c/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/i/c/b/h;B)V
    .locals 0

    .prologue
    .line 1000
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/b/j;-><init>(Lcom/sleepycat/b/i/c/b/h;)V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/j;->a:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/j;->a:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->l(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uncaught exception in feeder thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/j;->a:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->j(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/j;->a:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    .line 1520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 1010
    sget-object v2, Lcom/sleepycat/b/c/ac;->y:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Uncaught exception in feeder thread:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/aa;

    move-result-object v1

    .line 2228
    iput-object v1, v0, Lcom/sleepycat/b/i/c/b/m;->g:Ljava/lang/RuntimeException;

    .line 1021
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/j;->a:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->interrupt()V

    .line 1022
    return-void
.end method
