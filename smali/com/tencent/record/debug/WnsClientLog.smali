.class public Lcom/tencent/record/debug/WnsClientLog;
.super Lcom/tencent/record/debug/WnsTracer;
.source "ProGuard"


# static fields
.field public static a:Lcom/tencent/record/debug/WnsClientLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/record/debug/WnsClientLog;->a:Lcom/tencent/record/debug/WnsClientLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/tencent/record/debug/WnsTracer;-><init>()V

    .line 102
    new-instance v0, Lcom/tencent/record/debug/FileTracer;

    sget-object v1, Lcom/tencent/record/debug/WnsClientLog;->b:Lcom/tencent/record/debug/FileTracerConfig;

    invoke-direct {v0, v1}, Lcom/tencent/record/debug/FileTracer;-><init>(Lcom/tencent/record/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->d:Lcom/tencent/record/debug/FileTracer;

    .line 103
    return-void
.end method

.method public static a()Lcom/tencent/record/debug/WnsClientLog;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/record/debug/WnsClientLog;->a:Lcom/tencent/record/debug/WnsClientLog;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/tencent/record/debug/WnsClientLog;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/record/debug/WnsClientLog;->a:Lcom/tencent/record/debug/WnsClientLog;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/record/debug/WnsClientLog;

    invoke-direct {v0}, Lcom/tencent/record/debug/WnsClientLog;-><init>()V

    sput-object v0, Lcom/tencent/record/debug/WnsClientLog;->a:Lcom/tencent/record/debug/WnsClientLog;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/tencent/record/debug/WnsClientLog;->a:Lcom/tencent/record/debug/WnsClientLog;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/record/debug/WnsClientLog;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/tencent/record/debug/WnsClientLog;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 106
    const-class v1, Lcom/tencent/record/debug/WnsClientLog;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->d:Lcom/tencent/record/debug/FileTracer;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->d:Lcom/tencent/record/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/record/debug/FileTracer;->a()V

    .line 110
    iget-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->d:Lcom/tencent/record/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/record/debug/FileTracer;->b()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/record/debug/WnsClientLog;->d:Lcom/tencent/record/debug/FileTracer;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/record/debug/WnsClientLog;->a:Lcom/tencent/record/debug/WnsClientLog;

    .line 114
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
