.class final Landroid/support/v7/internal/widget/c;
.super Ljava/lang/Object;
.source "AbsSpinnerICS.java"


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Landroid/support/v7/internal/widget/b;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/b;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method final a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 432
    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 438
    :cond_0
    return-object v0
.end method

.method public final a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v7/internal/widget/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    return-void
.end method
