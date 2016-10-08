.class final Lrx/i/k;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/i/g;


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput p1, p0, Lrx/i/k;->a:I

    .line 728
    return-void
.end method


# virtual methods
.method public final a(Lrx/i/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/h",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    .line 1913
    :goto_0
    iget v0, p1, Lrx/i/h;->c:I

    .line 732
    iget v1, p0, Lrx/i/k;->a:I

    if-le v0, v1, :cond_2

    .line 2898
    iget-object v0, p1, Lrx/i/h;->a:Lrx/i/i;

    iget-object v0, v0, Lrx/i/i;->b:Lrx/i/i;

    if-nez v0, :cond_0

    .line 2899
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2901
    :cond_0
    iget-object v0, p1, Lrx/i/h;->a:Lrx/i/i;

    iget-object v0, v0, Lrx/i/i;->b:Lrx/i/i;

    .line 2902
    iget-object v1, p1, Lrx/i/h;->a:Lrx/i/i;

    iget-object v0, v0, Lrx/i/i;->b:Lrx/i/i;

    iput-object v0, v1, Lrx/i/i;->b:Lrx/i/i;

    .line 2903
    iget-object v0, p1, Lrx/i/h;->a:Lrx/i/i;

    iget-object v0, v0, Lrx/i/i;->b:Lrx/i/i;

    if-nez v0, :cond_1

    .line 2904
    iget-object v0, p1, Lrx/i/h;->a:Lrx/i/i;

    iput-object v0, p1, Lrx/i/h;->b:Lrx/i/i;

    .line 2906
    :cond_1
    iget v0, p1, Lrx/i/h;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lrx/i/h;->c:I

    goto :goto_0

    .line 735
    :cond_2
    return-void
.end method
