.class final Lrx/d/a/ak$1$1;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/ak$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a/ak$1;


# direct methods
.method constructor <init>(Lrx/d/a/ak$1;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lrx/d/a/ak$1$1;->a:Lrx/d/a/ak$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lrx/d/a/ak$1$1;->a:Lrx/d/a/ak$1;

    iget-object v0, v0, Lrx/d/a/ak$1;->c:Lrx/d/a/ak;

    invoke-static {v0}, Lrx/d/a/ak;->a(Lrx/d/a/ak;)Lrx/c/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrx/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
