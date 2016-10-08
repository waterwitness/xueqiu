.class final Lrx/d/a/s$3;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/s;->d(Lrx/c/b;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a/s;


# direct methods
.method constructor <init>(Lrx/d/a/s;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lrx/d/a/s$3;->a:Lrx/d/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lrx/d/a/s$3;->a:Lrx/d/a/s;

    iget-object v1, v0, Lrx/d/a/s;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lrx/d/a/s$3;->a:Lrx/d/a/s;

    iget-object v0, v0, Lrx/d/a/s;->e:Lrx/i;

    .line 130
    iget-object v2, p0, Lrx/d/a/s$3;->a:Lrx/d/a/s;

    const/4 v3, 0x0

    iput-object v3, v2, Lrx/d/a/s;->e:Lrx/i;

    .line 131
    iget-object v2, p0, Lrx/d/a/s$3;->a:Lrx/d/a/s;

    invoke-static {v2}, Lrx/d/a/s;->a(Lrx/d/a/s;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lrx/j;->b()V

    .line 136
    :cond_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
