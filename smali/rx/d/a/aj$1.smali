.class final Lrx/d/a/aj$1;
.super Lrx/i;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/aj;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lrx/i;

.field final synthetic c:Lrx/d/a/aj;

.field private d:Z


# direct methods
.method constructor <init>(Lrx/d/a/aj;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lrx/d/a/aj$1;->c:Lrx/d/a/aj;

    iput-object p3, p0, Lrx/d/a/aj$1;->b:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/aj$1;->d:Z

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/d/a/aj$1;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lrx/d/a/aj$1;->d:Z

    .line 72
    iget-object v0, p0, Lrx/d/a/aj$1;->b:Lrx/i;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lrx/d/a/aj$1;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lrx/d/a/aj$1;->b:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {p0, v0}, Lrx/d/a/aj$1;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v0, p0, Lrx/d/a/aj$1;->d:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lrx/d/a/aj$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lrx/d/a/aj$1;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 50
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/d/a/aj$1;->a(J)V

    .line 51
    return-void
.end method
