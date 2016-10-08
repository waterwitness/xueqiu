.class public final Lcom/sleepycat/b/i/c/o;
.super Lcom/sleepycat/b/c/m;
.source "RepConfigManager.java"


# instance fields
.field final d:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/z;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/m;-><init>(Lcom/sleepycat/b/z;)V

    .line 1052
    invoke-virtual {p1}, Lcom/sleepycat/b/z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A replicated environment must be transactional"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_0
    sget-object v0, Lcom/sleepycat/b/b/d;->R:Lcom/sleepycat/b/b/a;

    .line 1090
    iget-object v0, v0, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 1056
    invoke-virtual {p1, v0}, Lcom/sleepycat/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A replicated environment must not log to memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/o;->a:Ljava/util/Properties;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/w;->e()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 37
    invoke-static {}, Lcom/sleepycat/b/i/w;->d()V

    .line 1603
    iget-boolean v0, v2, Lcom/sleepycat/b/i/x;->c:Z

    .line 38
    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/o;->d:Z

    .line 39
    return-void
.end method
