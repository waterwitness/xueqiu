.class final Lrx/d/b/d;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/j;


# instance fields
.field final a:Lrx/j;

.field final b:Lrx/j/b;


# direct methods
.method public constructor <init>(Lrx/j;Lrx/j/b;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 141
    iput-object p1, p0, Lrx/d/b/d;->a:Lrx/j;

    .line 142
    iput-object p2, p0, Lrx/d/b/d;->b:Lrx/j/b;

    .line 143
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/d/b/d;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lrx/d/b/d;->b:Lrx/j/b;

    iget-object v1, p0, Lrx/d/b/d;->a:Lrx/j;

    invoke-virtual {v0, v1}, Lrx/j/b;->b(Lrx/j;)V

    .line 155
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lrx/d/b/d;->a:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    return v0
.end method
