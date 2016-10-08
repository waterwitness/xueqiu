.class final Lrx/d/a/x$1;
.super Lrx/i;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/x;->a(Lrx/i;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/d/a/x;

.field private c:Z


# direct methods
.method constructor <init>(Lrx/d/a/x;Lrx/i;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lrx/d/a/x$1;->b:Lrx/d/a/x;

    iput-object p2, p0, Lrx/d/a/x$1;->a:Lrx/i;

    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/x$1;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lrx/d/a/x$1;->c:Z

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/x$1;->c:Z

    .line 64
    iget-object v0, p0, Lrx/d/a/x$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

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
    .line 86
    iget-boolean v0, p0, Lrx/d/a/x$1;->c:Z

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lrx/d/a/x$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lrx/d/a/x$1;->c:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/x$1;->c:Z

    .line 75
    :try_start_0
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->b()Lrx/g/a;

    .line 1066
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 77
    iget-object v0, p0, Lrx/d/a/x$1;->b:Lrx/d/a/x;

    .line 2044
    iget-object v0, v0, Lrx/d/a/x;->a:Lrx/c/f;

    .line 77
    invoke-interface {v0, p1}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/a;

    .line 78
    iget-object v1, p0, Lrx/d/a/x$1;->a:Lrx/i;

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/i;)Lrx/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lrx/d/a/x$1;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lrx/f;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lrx/d/a/x$1;->a:Lrx/i;

    new-instance v1, Lrx/d/a/x$1$1;

    invoke-direct {v1, p0, p1}, Lrx/d/a/x$1$1;-><init>(Lrx/d/a/x$1;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/f;)V

    .line 100
    return-void
.end method
