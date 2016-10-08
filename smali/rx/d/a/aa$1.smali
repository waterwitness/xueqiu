.class final Lrx/d/a/aa$1;
.super Lrx/i;
.source "OperatorSkip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lrx/i;

.field final synthetic c:Lrx/d/a/aa;


# direct methods
.method constructor <init>(Lrx/d/a/aa;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lrx/d/a/aa$1;->c:Lrx/d/a/aa;

    iput-object p3, p0, Lrx/d/a/aa$1;->b:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lrx/d/a/aa$1;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lrx/d/a/aa$1;->b:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 48
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
    .line 57
    iget v0, p0, Lrx/d/a/aa$1;->a:I

    iget-object v1, p0, Lrx/d/a/aa$1;->c:Lrx/d/a/aa;

    iget v1, v1, Lrx/d/a/aa;->a:I

    if-lt v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lrx/d/a/aa$1;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget v0, p0, Lrx/d/a/aa$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/d/a/aa$1;->a:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lrx/d/a/aa$1;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public final a(Lrx/f;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lrx/d/a/aa$1;->b:Lrx/i;

    new-instance v1, Lrx/d/a/aa$1$1;

    invoke-direct {v1, p0, p1}, Lrx/d/a/aa$1$1;-><init>(Lrx/d/a/aa$1;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/f;)V

    .line 79
    return-void
.end method
