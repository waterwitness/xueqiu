.class final Lrx/d/a/ak$1;
.super Lrx/i;
.source "OperatorToObservableSortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a/ak;
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

.field final synthetic c:Lrx/d/a/ak;


# direct methods
.method constructor <init>(Lrx/d/a/ak;Lrx/i;Lrx/i;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lrx/d/a/ak$1;->c:Lrx/d/a/ak;

    iput-object p3, p0, Lrx/d/a/ak$1;->b:Lrx/i;

    invoke-direct {p0, p2}, Lrx/i;-><init>(Lrx/i;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/d/a/ak$1;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lrx/d/a/ak$1;->a:Ljava/util/List;

    new-instance v1, Lrx/d/a/ak$1$1;

    invoke-direct {v1, p0}, Lrx/d/a/ak$1$1;-><init>(Lrx/d/a/ak$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    iget-object v0, p0, Lrx/d/a/ak$1;->b:Lrx/i;

    iget-object v1, p0, Lrx/d/a/ak$1;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lrx/d/a/ak$1;->b:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {p0, v0}, Lrx/d/a/ak$1;->a(Ljava/lang/Throwable;)V

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
    .line 88
    iget-object v0, p0, Lrx/d/a/ak$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lrx/d/a/ak$1;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 57
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/d/a/ak$1;->a(J)V

    .line 58
    return-void
.end method
