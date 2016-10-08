.class final Lrx/d/a/ab$1$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ab$1$1$1;->a(Lrx/f;)V
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/d/a/ab$1$1$1;


# direct methods
.method constructor <init>(Lrx/d/a/ab$1$1$1;Lrx/f;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lrx/d/a/ab$1$1$1$1;->b:Lrx/d/a/ab$1$1$1;

    iput-object p2, p0, Lrx/d/a/ab$1$1$1$1;->a:Lrx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lrx/d/a/ab$1$1$1$1;->b:Lrx/d/a/ab$1$1$1;

    iget-object v1, v1, Lrx/d/a/ab$1$1$1;->a:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lrx/d/a/ab$1$1$1$1;->a:Lrx/f;

    invoke-interface {v0, p1, p2}, Lrx/f;->a(J)V

    .line 98
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lrx/d/a/ab$1$1$1$1;->b:Lrx/d/a/ab$1$1$1;

    iget-object v0, v0, Lrx/d/a/ab$1$1$1;->b:Lrx/d/a/ab$1$1;

    iget-object v0, v0, Lrx/d/a/ab$1$1;->b:Lrx/d/a/ab$1;

    iget-object v0, v0, Lrx/d/a/ab$1;->b:Lrx/h;

    new-instance v1, Lrx/d/a/ab$1$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lrx/d/a/ab$1$1$1$1$1;-><init>(Lrx/d/a/ab$1$1$1$1;J)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    goto :goto_0
.end method
