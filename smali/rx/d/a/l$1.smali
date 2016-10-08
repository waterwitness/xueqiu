.class final Lrx/d/a/l$1;
.super Lrx/i;
.source "OperatorDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/d/a/l;

.field private c:Z


# direct methods
.method constructor <init>(Lrx/d/a/l;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lrx/d/a/l$1;->b:Lrx/d/a/l;

    iput-object p3, p0, Lrx/d/a/l$1;->a:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/l$1;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lrx/d/a/l$1;->c:Z

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/d/a/l$1;->b:Lrx/d/a/l;

    .line 1027
    iget-object v0, v0, Lrx/d/a/l;->a:Lrx/e;

    .line 46
    invoke-interface {v0}, Lrx/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/l$1;->c:Z

    .line 53
    iget-object v0, p0, Lrx/d/a/l$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {p0, v0}, Lrx/d/a/l$1;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lrx/d/a/l$1;->c:Z

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/d/a/l$1;->b:Lrx/d/a/l;

    .line 3027
    iget-object v0, v0, Lrx/d/a/l;->a:Lrx/e;

    .line 79
    invoke-interface {v0, p1}, Lrx/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    iget-object v0, p0, Lrx/d/a/l$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-static {v0, p1}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d/a/l$1;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p1}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v0, p0, Lrx/d/a/l$1;->c:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/l$1;->c:Z

    .line 65
    :try_start_0
    iget-object v0, p0, Lrx/d/a/l$1;->b:Lrx/d/a/l;

    .line 2027
    iget-object v0, v0, Lrx/d/a/l;->a:Lrx/e;

    .line 65
    invoke-interface {v0, p1}, Lrx/e;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v0, p0, Lrx/d/a/l$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    iget-object v1, p0, Lrx/d/a/l$1;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
