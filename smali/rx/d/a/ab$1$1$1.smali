.class final Lrx/d/a/ab$1$1$1;
.super Lrx/i;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ab$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/d/a/ab$1$1;


# direct methods
.method constructor <init>(Lrx/d/a/ab$1$1;Lrx/i;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lrx/d/a/ab$1$1$1;->b:Lrx/d/a/ab$1$1;

    iput-object p3, p0, Lrx/d/a/ab$1$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lrx/d/a/ab$1$1$1;->b:Lrx/d/a/ab$1$1;

    iget-object v0, v0, Lrx/d/a/ab$1$1;->b:Lrx/d/a/ab$1;

    iget-object v0, v0, Lrx/d/a/ab$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lrx/d/a/ab$1$1$1;->b:Lrx/d/a/ab$1$1;

    iget-object v0, v0, Lrx/d/a/ab$1$1;->b:Lrx/d/a/ab$1;

    iget-object v0, v0, Lrx/d/a/ab$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lrx/d/a/ab$1$1$1;->b:Lrx/d/a/ab$1$1;

    iget-object v0, v0, Lrx/d/a/ab$1$1;->b:Lrx/d/a/ab$1;

    iget-object v0, v0, Lrx/d/a/ab$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public final a(Lrx/f;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lrx/d/a/ab$1$1$1;->b:Lrx/d/a/ab$1$1;

    iget-object v0, v0, Lrx/d/a/ab$1$1;->b:Lrx/d/a/ab$1;

    iget-object v0, v0, Lrx/d/a/ab$1;->a:Lrx/i;

    new-instance v1, Lrx/d/a/ab$1$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/d/a/ab$1$1$1$1;-><init>(Lrx/d/a/ab$1$1$1;Lrx/f;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Lrx/f;)V

    .line 101
    return-void
.end method
