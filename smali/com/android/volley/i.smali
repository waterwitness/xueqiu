.class public final Lcom/android/volley/i;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field volatile a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/android/volley/h;

.field private final d:Lcom/android/volley/b;

.field private final e:Lcom/android/volley/u;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/h;Lcom/android/volley/b;Lcom/android/volley/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/n",
            "<*>;>;",
            "Lcom/android/volley/h;",
            "Lcom/android/volley/b;",
            "Lcom/android/volley/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/i;->a:Z

    .line 58
    iput-object p1, p0, Lcom/android/volley/i;->b:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lcom/android/volley/i;->c:Lcom/android/volley/h;

    .line 60
    iput-object p3, p0, Lcom/android/volley/i;->d:Lcom/android/volley/b;

    .line 61
    iput-object p4, p0, Lcom/android/volley/i;->e:Lcom/android/volley/u;

    .line 62
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 83
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/i;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/n;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 1336
    iget-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 102
    if-eqz v1, :cond_1

    .line 103
    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/android/volley/n;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/volley/y; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 4144
    invoke-virtual {v0, v1}, Lcom/android/volley/n;->a(Lcom/android/volley/y;)Lcom/android/volley/y;

    move-result-object v1

    .line 4145
    iget-object v2, p0, Lcom/android/volley/i;->e:Lcom/android/volley/u;

    invoke-interface {v2, v0, v1}, Lcom/android/volley/u;->a(Lcom/android/volley/n;Lcom/android/volley/y;)V

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/android/volley/i;->a:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 2076
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 2173
    iget v1, v0, Lcom/android/volley/n;->d:I

    .line 2077
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/volley/i;->c:Lcom/android/volley/h;

    invoke-interface {v1, v0}, Lcom/android/volley/h;->a(Lcom/android/volley/n;)Lcom/android/volley/k;

    move-result-object v1

    .line 111
    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 115
    iget-boolean v2, v1, Lcom/android/volley/k;->d:Z

    if-eqz v2, :cond_3

    .line 2538
    iget-boolean v2, v0, Lcom/android/volley/n;->i:Z

    .line 115
    if-eqz v2, :cond_3

    .line 116
    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/android/volley/n;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/y; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v1

    .line 137
    const-string v2, "Unhandled exception %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/volley/z;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcom/android/volley/i;->e:Lcom/android/volley/u;

    new-instance v3, Lcom/android/volley/y;

    invoke-direct {v3, v1}, Lcom/android/volley/y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lcom/android/volley/u;->a(Lcom/android/volley/n;Lcom/android/volley/y;)V

    goto :goto_0

    .line 121
    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/volley/n;->a(Lcom/android/volley/k;)Lcom/android/volley/r;

    move-result-object v1

    .line 122
    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 3489
    iget-boolean v2, v0, Lcom/android/volley/n;->g:Z

    .line 126
    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/volley/r;->b:Lcom/android/volley/c;

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lcom/android/volley/i;->d:Lcom/android/volley/b;

    invoke-virtual {v0}, Lcom/android/volley/n;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/volley/r;->b:Lcom/android/volley/c;

    invoke-interface {v2, v3, v4}, Lcom/android/volley/b;->a(Ljava/lang/String;Lcom/android/volley/c;)V

    .line 128
    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 3531
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/volley/n;->i:Z

    .line 133
    iget-object v2, p0, Lcom/android/volley/i;->e:Lcom/android/volley/u;

    invoke-interface {v2, v0, v1}, Lcom/android/volley/u;->a(Lcom/android/volley/n;Lcom/android/volley/r;)V
    :try_end_3
    .catch Lcom/android/volley/y; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
