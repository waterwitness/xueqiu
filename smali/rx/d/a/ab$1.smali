.class final Lrx/d/a/ab$1;
.super Lrx/i;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ab;->a(Lrx/i;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lrx/a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/h;

.field final synthetic c:Lrx/d/a/ab;


# direct methods
.method constructor <init>(Lrx/d/a/ab;Lrx/i;Lrx/i;Lrx/h;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lrx/d/a/ab$1;->c:Lrx/d/a/ab;

    iput-object p3, p0, Lrx/d/a/ab$1;->a:Lrx/i;

    iput-object p4, p0, Lrx/d/a/ab$1;->b:Lrx/h;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    check-cast p1, Lrx/a;

    .line 1057
    iget-object v0, p0, Lrx/d/a/ab$1;->b:Lrx/h;

    new-instance v1, Lrx/d/a/ab$1$1;

    invoke-direct {v1, p0, p1}, Lrx/d/a/ab$1$1;-><init>(Lrx/d/a/ab$1;Lrx/a;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 43
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lrx/d/a/ab$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
