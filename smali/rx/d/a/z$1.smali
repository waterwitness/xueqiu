.class final Lrx/d/a/z$1;
.super Lrx/i;
.source "OperatorSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/z;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/d/a/z;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Z

.field private f:Z


# direct methods
.method constructor <init>(Lrx/d/a/z;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object p1, p0, Lrx/d/a/z$1;->b:Lrx/d/a/z;

    iput-object p3, p0, Lrx/d/a/z$1;->a:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 51
    iput-boolean v0, p0, Lrx/d/a/z$1;->d:Z

    .line 52
    iput-boolean v0, p0, Lrx/d/a/z$1;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 71
    iget-boolean v0, p0, Lrx/d/a/z$1;->f:Z

    if-nez v0, :cond_0

    .line 74
    iget-boolean v0, p0, Lrx/d/a/z$1;->d:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lrx/d/a/z$1;->a:Lrx/i;

    iget-object v1, p0, Lrx/d/a/z$1;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lrx/d/a/z$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lrx/d/a/z$1;->b:Lrx/d/a/z;

    .line 1028
    iget-boolean v0, v0, Lrx/d/a/z;->a:Z

    .line 78
    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lrx/d/a/z$1;->a:Lrx/i;

    iget-object v1, p0, Lrx/d/a/z$1;->b:Lrx/d/a/z;

    .line 2028
    iget-object v1, v1, Lrx/d/a/z;->b:Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lrx/d/a/z$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lrx/d/a/z$1;->a:Lrx/i;

    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Sequence contains no elements"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 56
    iget-boolean v0, p0, Lrx/d/a/z$1;->d:Z

    if-eqz v0, :cond_0

    .line 57
    iput-boolean v1, p0, Lrx/d/a/z$1;->f:Z

    .line 58
    iget-object v0, p0, Lrx/d/a/z$1;->a:Lrx/i;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sequence contains too many elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 59
    invoke-virtual {p0}, Lrx/d/a/z$1;->b()V

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lrx/d/a/z$1;->c:Ljava/lang/Object;

    .line 62
    iput-boolean v1, p0, Lrx/d/a/z$1;->d:Z

    .line 65
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/d/a/z$1;->a(J)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lrx/d/a/z$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method
