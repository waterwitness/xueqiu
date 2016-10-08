.class final Landroid/support/v7/widget/g$6;
.super Landroid/support/v7/widget/j;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/g;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ao;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/dc;

.field final synthetic e:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/ao;IILandroid/support/v4/view/dc;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/widget/g$6;->e:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/g$6;->a:Landroid/support/v7/widget/ao;

    iput p3, p0, Landroid/support/v7/widget/g$6;->b:I

    iput p4, p0, Landroid/support/v7/widget/g$6;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/g$6;->d:Landroid/support/v4/view/dc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/j;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/g$6;->d:Landroid/support/v4/view/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;

    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/g$6;->e:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/g$6;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/g;->e(Landroid/support/v7/widget/ao;)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/g$6;->e:Landroid/support/v7/widget/g;

    .line 1034
    iget-object v0, v0, Landroid/support/v7/widget/g;->e:Ljava/util/ArrayList;

    .line 302
    iget-object v1, p0, Landroid/support/v7/widget/g$6;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/g$6;->e:Landroid/support/v7/widget/g;

    .line 2034
    invoke-virtual {v0}, Landroid/support/v7/widget/g;->c()V

    .line 304
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget v0, p0, Landroid/support/v7/widget/g$6;->b:I

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 294
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/g$6;->c:I

    if-eqz v0, :cond_1

    .line 295
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;F)V

    .line 297
    :cond_1
    return-void
.end method
