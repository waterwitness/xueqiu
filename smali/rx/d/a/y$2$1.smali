.class final Lrx/d/a/y$2$1;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/y$2;->a(Lrx/f;)V
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lrx/f;

.field final synthetic d:Lrx/d/a/y$2;


# direct methods
.method constructor <init>(Lrx/d/a/y$2;Lrx/f;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lrx/d/a/y$2$1;->d:Lrx/d/a/y$2;

    iput-object p2, p0, Lrx/d/a/y$2$1;->c:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/d/a/y$2$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/d/a/y$2$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x1

    .line 147
    iget-object v0, p0, Lrx/d/a/y$2$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lrx/d/a/y$2$1;->d:Lrx/d/a/y$2;

    .line 1090
    iget-object v0, v0, Lrx/d/a/y$2;->a:Ljava/lang/Object;

    .line 148
    invoke-static {}, Lrx/d/a/y;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    cmp-long v0, p1, v6

    if-nez v0, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lrx/d/a/y$2$1;->c:Lrx/f;

    invoke-interface {v0, p1, p2}, Lrx/f;->a(J)V

    .line 166
    :goto_0
    return-void

    .line 150
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lrx/d/a/y$2$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    iget-object v0, p0, Lrx/d/a/y$2$1;->c:Lrx/f;

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lrx/d/a/y$2$1;->c:Lrx/f;

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0

    .line 159
    :cond_3
    cmp-long v0, p1, v2

    if-lez v0, :cond_4

    iget-object v0, p0, Lrx/d/a/y$2$1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    cmp-long v0, p1, v6

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lrx/d/a/y$2$1;->c:Lrx/f;

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lrx/f;->a(J)V

    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lrx/d/a/y$2$1;->c:Lrx/f;

    invoke-interface {v0, p1, p2}, Lrx/f;->a(J)V

    goto :goto_0
.end method
