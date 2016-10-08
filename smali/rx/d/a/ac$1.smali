.class final Lrx/d/a/ac$1;
.super Lrx/i;
.source "OperatorTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ac;->a(Lrx/i;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lrx/i;

.field final synthetic d:Lrx/d/a/ac;


# direct methods
.method constructor <init>(Lrx/d/a/ac;Lrx/i;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object p1, p0, Lrx/d/a/ac$1;->d:Lrx/d/a/ac;

    iput-object p2, p0, Lrx/d/a/ac$1;->c:Lrx/i;

    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 44
    iput v0, p0, Lrx/d/a/ac$1;->a:I

    .line 45
    iput-boolean v0, p0, Lrx/d/a/ac$1;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lrx/d/a/ac$1;->b:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lrx/d/a/ac$1;->c:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 52
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
    .line 63
    .line 1076
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    iget v0, p0, Lrx/d/a/ac$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/d/a/ac$1;->a:I

    iget-object v1, p0, Lrx/d/a/ac$1;->d:Lrx/d/a/ac;

    iget v1, v1, Lrx/d/a/ac;->a:I

    if-lt v0, v1, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/a/ac$1;->b:Z

    .line 67
    :cond_0
    iget-object v0, p0, Lrx/d/a/ac$1;->c:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 68
    iget-boolean v0, p0, Lrx/d/a/ac$1;->b:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lrx/d/a/ac$1;->c:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 2066
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 73
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lrx/d/a/ac$1;->b:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lrx/d/a/ac$1;->c:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 59
    :cond_0
    return-void
.end method

.method public final a(Lrx/f;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lrx/d/a/ac$1;->c:Lrx/i;

    new-instance v1, Lrx/d/a/ac$1$1;

    invoke-direct {v1, p0, p1}, Lrx/d/a/ac$1$1;-><init>(Lrx/d/a/ac$1;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/f;)V

    .line 94
    return-void
.end method
