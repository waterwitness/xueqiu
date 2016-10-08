.class final Lrx/d/a/s$1;
.super Ljava/lang/Object;
.source "OperatorMulticast.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/s;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/a;Lrx/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lrx/d/a/s$1;->a:Ljava/lang/Object;

    iput-object p2, p0, Lrx/d/a/s$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/d/a/s$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 55
    check-cast p1, Lrx/i;

    .line 1058
    iget-object v1, p0, Lrx/d/a/s$1;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1059
    :try_start_0
    iget-object v0, p0, Lrx/d/a/s$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lrx/d/a/s$1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    :goto_0
    monitor-exit v1

    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lrx/d/a/s$1;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/l;

    invoke-virtual {v0, p1}, Lrx/i/l;->a(Lrx/i;)Lrx/j;

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
