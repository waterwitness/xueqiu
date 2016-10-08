.class final Lcom/sleepycat/b/c/af;
.super Lcom/sleepycat/b/x;
.source "EnvironmentImpl.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 3081
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/x;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;ZLcom/sleepycat/b/c/aw;Lcom/sleepycat/b/c/ad;)V

    .line 3083
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 3092
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
    .line 3087
    const/4 v0, 0x1

    return v0
.end method
