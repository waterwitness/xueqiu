.class final Lrx/d/a/ad$1;
.super Lrx/i;
.source "OperatorTakeLast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/ad;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Deque;

.field final synthetic b:Lrx/d/a/a;

.field final synthetic c:Lrx/d/a/ar;

.field final synthetic d:Lrx/i;

.field final synthetic f:Lrx/d/a/ad;


# direct methods
.method constructor <init>(Lrx/d/a/ad;Lrx/i;Ljava/util/Deque;Lrx/d/a/a;Lrx/d/a/ar;Lrx/i;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lrx/d/a/ad$1;->f:Lrx/d/a/ad;

    iput-object p3, p0, Lrx/d/a/ad$1;->a:Ljava/util/Deque;

    iput-object p4, p0, Lrx/d/a/ad$1;->b:Lrx/d/a/a;

    iput-object p5, p0, Lrx/d/a/ad$1;->c:Lrx/d/a/ar;

    iput-object p6, p0, Lrx/d/a/ad$1;->d:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lrx/d/a/ad$1;->a:Ljava/util/Deque;

    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lrx/d/a/ad$1;->c:Lrx/d/a/ar;

    .line 1043
    iget-boolean v1, v0, Lrx/d/a/ar;->a:Z

    if-nez v1, :cond_0

    .line 1044
    const/4 v1, 0x1

    iput-boolean v1, v0, Lrx/d/a/ar;->a:Z

    .line 1045
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lrx/d/a/ar;->b(J)V

    .line 60
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lrx/d/a/ad$1;->f:Lrx/d/a/ad;

    .line 2029
    iget v0, v0, Lrx/d/a/ad;->a:I

    .line 70
    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lrx/d/a/ad$1;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lrx/d/a/ad$1;->f:Lrx/d/a/ad;

    .line 3029
    iget v1, v1, Lrx/d/a/ad;->a:I

    .line 75
    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lrx/d/a/ad$1;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 78
    :cond_1
    iget-object v0, p0, Lrx/d/a/ad$1;->a:Ljava/util/Deque;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lrx/d/a/ad$1;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 65
    iget-object v0, p0, Lrx/d/a/ad$1;->d:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 53
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/d/a/ad$1;->a(J)V

    .line 54
    return-void
.end method
