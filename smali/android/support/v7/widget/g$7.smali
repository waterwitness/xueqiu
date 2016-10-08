.class final Landroid/support/v7/widget/g$7;
.super Landroid/support/v7/widget/j;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/g;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/h;

.field final synthetic b:Landroid/support/v4/view/dc;

.field final synthetic c:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/h;Landroid/support/v4/view/dc;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Landroid/support/v7/widget/g$7;->c:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/g$7;->a:Landroid/support/v7/widget/h;

    iput-object p3, p0, Landroid/support/v7/widget/g$7;->b:Landroid/support/v4/view/dc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/j;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Landroid/support/v7/widget/g$7;->b:Landroid/support/v4/view/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;

    .line 352
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 353
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 354
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/g$7;->c:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/g$7;->a:Landroid/support/v7/widget/h;

    iget-object v1, v1, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/g;->g(Landroid/support/v7/widget/ao;)V

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/g$7;->c:Landroid/support/v7/widget/g;

    .line 1034
    iget-object v0, v0, Landroid/support/v7/widget/g;->g:Ljava/util/ArrayList;

    .line 356
    iget-object v1, p0, Landroid/support/v7/widget/g$7;->a:Landroid/support/v7/widget/h;

    iget-object v1, v1, Landroid/support/v7/widget/h;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/g$7;->c:Landroid/support/v7/widget/g;

    .line 2034
    invoke-virtual {v0}, Landroid/support/v7/widget/g;->c()V

    .line 358
    return-void
.end method
