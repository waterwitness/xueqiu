.class final Lcom/sleepycat/b/i/c/ak;
.super Lcom/sleepycat/b/i/t;
.source "RepImpl.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;Lcom/sleepycat/b/i/c/aj;)V
    .locals 7

    .prologue
    .line 1801
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/t;-><init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;Lcom/sleepycat/b/i/p;ZLcom/sleepycat/b/i/c/aj;)V

    .line 1804
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 1813
    monitor-enter p0

    :try_start_0
    const-string v0, "close() not permitted on an internal environment handle"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 1808
    const/4 v0, 0x1

    return v0
.end method
