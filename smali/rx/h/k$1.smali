.class final Lrx/h/k$1;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/k;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
.end annotation


# instance fields
.field final synthetic a:Lrx/j/c;

.field final synthetic b:Lrx/c/a;

.field final synthetic c:Lrx/h/k;


# direct methods
.method constructor <init>(Lrx/h/k;Lrx/j/c;Lrx/c/a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lrx/h/k$1;->c:Lrx/h/k;

    iput-object p2, p0, Lrx/h/k$1;->a:Lrx/j/c;

    iput-object p3, p0, Lrx/h/k$1;->b:Lrx/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lrx/h/k$1;->a:Lrx/j/c;

    .line 1053
    iget-object v0, v0, Lrx/j/c;->a:Lrx/j/d;

    iget-boolean v0, v0, Lrx/j/d;->a:Z

    .line 125
    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lrx/h/k$1;->a:Lrx/j/c;

    iget-object v1, p0, Lrx/h/k$1;->c:Lrx/h/k;

    iget-object v2, p0, Lrx/h/k$1;->b:Lrx/c/a;

    invoke-virtual {v1, v2}, Lrx/h/k;->a(Lrx/c/a;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/c;->a(Lrx/j;)V

    goto :goto_0
.end method
