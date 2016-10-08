.class public Lcom/sleepycat/b/i/e/n;
.super Ljava/lang/Object;
.source "MasterStatus.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/sleepycat/b/i/c/b/x;

.field private c:Ljava/net/InetSocketAddress;

.field private d:Lcom/sleepycat/b/i/c/b/x;

.field private e:Ljava/net/InetSocketAddress;

.field private f:Lcom/sleepycat/b/i/c/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/n;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/x;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/sleepycat/b/i/e/n;->c:Ljava/net/InetSocketAddress;

    .line 28
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/n;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 34
    iput-object v1, p0, Lcom/sleepycat/b/i/e/n;->e:Ljava/net/InetSocketAddress;

    .line 35
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/n;->f:Lcom/sleepycat/b/i/c/b/x;

    .line 38
    iput-object p1, p0, Lcom/sleepycat/b/i/e/n;->b:Lcom/sleepycat/b/i/c/b/x;

    .line 39
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/net/InetSocketAddress;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/b/i/e/n;->c:Ljava/net/InetSocketAddress;

    .line 75
    iput-object p2, p0, Lcom/sleepycat/b/i/e/n;->d:Lcom/sleepycat/b/i/c/b/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->b:Lcom/sleepycat/b/i/c/b/x;

    .line 1099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 58
    iget-object v1, p0, Lcom/sleepycat/b/i/e/n;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 2099
    iget v1, v1, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 58
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    sget-boolean v1, Lcom/sleepycat/b/i/e/n;->a:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sleepycat/b/i/e/n;->b:Lcom/sleepycat/b/i/c/b/x;

    .line 3099
    iget v1, v1, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 60
    iget-object v2, p0, Lcom/sleepycat/b/i/e/n;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 4099
    iget v2, v2, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 60
    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->b:Lcom/sleepycat/b/i/c/b/x;

    .line 5099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 69
    iget-object v1, p0, Lcom/sleepycat/b/i/e/n;->f:Lcom/sleepycat/b/i/c/b/x;

    .line 6099
    iget v1, v1, Lcom/sleepycat/b/i/c/b/x;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->f:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 7099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 87
    iget-object v1, p0, Lcom/sleepycat/b/i/e/n;->f:Lcom/sleepycat/b/i/c/b/x;

    .line 8099
    iget v1, v1, Lcom/sleepycat/b/i/c/b/x;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 51
    :goto_0
    monitor-exit p0

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v0, Lcom/sleepycat/b/i/e/n;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sleepycat/b/i/e/n;->e:Ljava/net/InetSocketAddress;

    .line 93
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/n;->f:Lcom/sleepycat/b/i/c/b/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/sleepycat/b/i/e/o;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/e/o;-><init>(Lcom/sleepycat/b/i/e/n;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized f()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->c:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/n;->e:Ljava/net/InetSocketAddress;

    .line 116
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->d:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/n;->f:Lcom/sleepycat/b/i/c/b/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->e:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Lcom/sleepycat/b/i/c/b/x;
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->f:Lcom/sleepycat/b/i/c/b/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->c:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/sleepycat/b/i/c/b/x;
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/n;->d:Lcom/sleepycat/b/i/c/b/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
