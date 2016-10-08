.class final Landroid/support/v7/widget/g$8;
.super Landroid/support/v7/widget/j;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/g;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/h;

.field final synthetic b:Landroid/support/v4/view/dc;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/h;Landroid/support/v4/view/dc;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 365
    iput-object p1, p0, Landroid/support/v7/widget/g$8;->d:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/g$8;->a:Landroid/support/v7/widget/h;

    iput-object p3, p0, Landroid/support/v7/widget/g$8;->b:Landroid/support/v4/view/dc;

    iput-object p4, p0, Landroid/support/v7/widget/g$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/j;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Landroid/support/v7/widget/g$8;->b:Landroid/support/v4/view/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/g$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/g$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/g$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/g$8;->d:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/g$8;->a:Landroid/support/v7/widget/h;

    iget-object v1, v1, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/g;->g(Landroid/support/v7/widget/ao;)V

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/g$8;->d:Landroid/support/v7/widget/g;

    .line 1034
    iget-object v0, v0, Landroid/support/v7/widget/g;->g:Ljava/util/ArrayList;

    .line 377
    iget-object v1, p0, Landroid/support/v7/widget/g$8;->a:Landroid/support/v7/widget/h;

    iget-object v1, v1, Landroid/support/v7/widget/h;->b:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/g$8;->d:Landroid/support/v7/widget/g;

    .line 2034
    invoke-virtual {v0}, Landroid/support/v7/widget/g;->c()V

    .line 379
    return-void
.end method
