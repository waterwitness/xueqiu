.class final Lrx/d/a/k$1;
.super Lrx/i;
.source "OperatorDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TU;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lrx/i;

.field final synthetic c:Lrx/d/a/k;


# direct methods
.method constructor <init>(Lrx/d/a/k;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lrx/d/a/k$1;->c:Lrx/d/a/k;

    iput-object p3, p0, Lrx/d/a/k$1;->b:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrx/d/a/k$1;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/d/a/k$1;->a:Ljava/util/Set;

    .line 61
    iget-object v0, p0, Lrx/d/a/k$1;->b:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 62
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
    .line 44
    iget-object v0, p0, Lrx/d/a/k$1;->c:Lrx/d/a/k;

    iget-object v0, v0, Lrx/d/a/k;->a:Lrx/c/f;

    invoke-interface {v0, p1}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lrx/d/a/k$1;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lrx/d/a/k$1;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/d/a/k$1;->a(J)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/d/a/k$1;->a:Ljava/util/Set;

    .line 55
    iget-object v0, p0, Lrx/d/a/k$1;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method
