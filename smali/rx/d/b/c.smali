.class final Lrx/d/b/c;
.super Ljava/lang/Object;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/j;


# instance fields
.field final synthetic a:Lrx/d/b/b;

.field private final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/d/b/b;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lrx/d/b/c;->a:Lrx/d/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lrx/d/b/c;->b:Ljava/util/concurrent/Future;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lrx/d/b/b;Ljava/util/concurrent/Future;B)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lrx/d/b/c;-><init>(Lrx/d/b/b;Ljava/util/concurrent/Future;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lrx/d/b/c;->a:Lrx/d/b/b;

    invoke-virtual {v0}, Lrx/d/b/b;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lrx/d/b/c;->b:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lrx/d/b/c;->b:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lrx/d/b/c;->b:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method
