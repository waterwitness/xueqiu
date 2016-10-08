.class final Landroid/support/v7/widget/g$5;
.super Landroid/support/v7/widget/j;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/g;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ao;

.field final synthetic b:Landroid/support/v4/view/dc;

.field final synthetic c:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/ao;Landroid/support/v4/view/dc;)V
    .locals 1

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v7/widget/g$5;->c:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/g$5;->a:Landroid/support/v7/widget/ao;

    iput-object p3, p0, Landroid/support/v7/widget/g$5;->b:Landroid/support/v4/view/dc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/j;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v7/widget/g$5;->b:Landroid/support/v4/view/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/g$5;->c:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/g$5;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/g;->f(Landroid/support/v7/widget/ao;)V

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/g$5;->c:Landroid/support/v7/widget/g;

    .line 1034
    iget-object v0, v0, Landroid/support/v7/widget/g;->d:Ljava/util/ArrayList;

    .line 240
    iget-object v1, p0, Landroid/support/v7/widget/g$5;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/g$5;->c:Landroid/support/v7/widget/g;

    .line 2034
    invoke-virtual {v0}, Landroid/support/v7/widget/g;->c()V

    .line 242
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 233
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 234
    return-void
.end method
