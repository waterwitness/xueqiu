.class final Landroid/support/v4/a/r$3;
.super Landroid/support/v4/a/s;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/i;

.field final synthetic b:Landroid/support/v4/a/r;


# direct methods
.method constructor <init>(Landroid/support/v4/a/r;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/a/i;)V
    .locals 0

    .prologue
    .line 1165
    iput-object p1, p0, Landroid/support/v4/a/r$3;->b:Landroid/support/v4/a/r;

    iput-object p4, p0, Landroid/support/v4/a/r$3;->a:Landroid/support/v4/a/i;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/a/s;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1168
    invoke-super {p0, p1}, Landroid/support/v4/a/s;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1169
    iget-object v0, p0, Landroid/support/v4/a/r$3;->a:Landroid/support/v4/a/i;

    iget-object v0, v0, Landroid/support/v4/a/i;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Landroid/support/v4/a/r$3;->a:Landroid/support/v4/a/i;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/a/i;->l:Landroid/view/View;

    .line 1171
    iget-object v0, p0, Landroid/support/v4/a/r$3;->b:Landroid/support/v4/a/r;

    iget-object v1, p0, Landroid/support/v4/a/r$3;->a:Landroid/support/v4/a/i;

    iget-object v2, p0, Landroid/support/v4/a/r$3;->a:Landroid/support/v4/a/i;

    iget v2, v2, Landroid/support/v4/a/i;->m:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 1174
    :cond_0
    return-void
.end method
