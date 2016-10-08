.class final Lrx/d/a/n$1;
.super Lrx/i;
.source "OperatorMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/d/a/n;


# direct methods
.method constructor <init>(Lrx/d/a/n;Lrx/i;Lrx/i;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lrx/d/a/n$1;->b:Lrx/d/a/n;

    iput-object p3, p0, Lrx/d/a/n$1;->a:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lrx/d/a/n$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 45
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
    .line 55
    :try_start_0
    iget-object v0, p0, Lrx/d/a/n$1;->a:Lrx/i;

    iget-object v1, p0, Lrx/d/a/n$1;->b:Lrx/d/a/n;

    .line 1030
    iget-object v1, v1, Lrx/d/a/n;->a:Lrx/c/f;

    .line 55
    invoke-interface {v1, p1}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lrx/b/f;->b(Ljava/lang/Throwable;)V

    .line 58
    invoke-static {v0, p1}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d/a/n$1;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lrx/d/a/n$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method
