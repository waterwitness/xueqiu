.class final Lrx/d/a/y$2;
.super Lrx/i;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/y;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Lrx/i;

.field final synthetic d:Lrx/d/a/y;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/d/a/y;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lrx/d/a/y$2;->d:Lrx/d/a/y;

    iput-object p3, p0, Lrx/d/a/y$2;->c:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 91
    iget-object v0, p0, Lrx/d/a/y$2;->d:Lrx/d/a/y;

    invoke-static {v0}, Lrx/d/a/y;->a(Lrx/d/a/y;)Lrx/c/e;

    move-result-object v0

    invoke-interface {v0}, Lrx/c/e;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/y$2;->a:Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lrx/d/a/y$2;->a:Ljava/lang/Object;

    iput-object v0, p0, Lrx/d/a/y$2;->f:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/y$2;->b:Z

    return-void
.end method

.method private a(Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lrx/d/a/y$2;->b:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/y$2;->b:Z

    .line 128
    iget-object v0, p0, Lrx/d/a/y$2;->a:Ljava/lang/Object;

    invoke-static {}, Lrx/d/a/y;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lrx/d/a/y$2;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lrx/d/a/y$2;->c:Lrx/i;

    invoke-direct {p0, v0}, Lrx/d/a/y$2;->a(Lrx/i;)V

    .line 121
    iget-object v0, p0, Lrx/d/a/y$2;->c:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 122
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
    .line 98
    iget-object v0, p0, Lrx/d/a/y$2;->c:Lrx/i;

    invoke-direct {p0, v0}, Lrx/d/a/y$2;->a(Lrx/i;)V

    .line 100
    iget-object v0, p0, Lrx/d/a/y$2;->f:Ljava/lang/Object;

    invoke-static {}, Lrx/d/a/y;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 102
    iput-object p1, p0, Lrx/d/a/y$2;->f:Ljava/lang/Object;

    .line 110
    :goto_0
    iget-object v0, p0, Lrx/d/a/y$2;->c:Lrx/i;

    iget-object v1, p0, Lrx/d/a/y$2;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 111
    return-void

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/d/a/y$2;->d:Lrx/d/a/y;

    invoke-static {v0}, Lrx/d/a/y;->b(Lrx/d/a/y;)Lrx/c/g;

    move-result-object v0

    iget-object v1, p0, Lrx/d/a/y$2;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lrx/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/y$2;->f:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lrx/d/a/y$2;->c:Lrx/i;

    invoke-static {v0, p1}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lrx/d/a/y$2;->c:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public final a(Lrx/f;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lrx/d/a/y$2;->c:Lrx/i;

    new-instance v1, Lrx/d/a/y$2$1;

    invoke-direct {v1, p0, p1}, Lrx/d/a/y$2$1;-><init>(Lrx/d/a/y$2;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/f;)V

    .line 168
    return-void
.end method
