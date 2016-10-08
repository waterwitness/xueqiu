.class public final Landroid/support/v7/internal/widget/e;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/p;

.field public b:Landroid/support/v7/internal/view/menu/t;

.field final synthetic c:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;B)V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/e;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;)V
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/support/v7/internal/view/menu/p;

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/p;->b(Landroid/support/v7/internal/view/menu/t;)Z

    .line 1388
    :cond_0
    iput-object p2, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/support/v7/internal/view/menu/p;

    .line 1389
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/p;Z)V
    .locals 0

    .prologue
    .line 1431
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/aj;)Z
    .locals 1

    .prologue
    .line 1426
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1399
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->size()I

    move-result v3

    move v2, v1

    .line 1404
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1405
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/a/b;

    .line 1406
    iget-object v4, p0, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    if-ne v0, v4, :cond_1

    .line 1407
    const/4 v0, 0x1

    .line 1413
    :goto_1
    if-nez v0, :cond_0

    .line 1415
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/e;->c(Landroid/support/v7/internal/view/menu/t;)Z

    .line 1418
    :cond_0
    return-void

    .line 1404
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final b(Landroid/support/v7/internal/view/menu/t;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1440
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/t;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    .line 1441
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->c(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1442
    iput-object p1, p0, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    .line 1443
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_0

    .line 1444
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1446
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_1

    .line 1447
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1449
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1450
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1451
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1453
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1454
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1456
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ag;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1457
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ag;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ag;->setVisibility(I)V

    .line 1459
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1460
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1462
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    .line 1463
    invoke-virtual {p1, v4}, Landroid/support/v7/internal/view/menu/t;->d(Z)V

    .line 1465
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/c/b;

    if-eqz v0, :cond_6

    .line 1466
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    check-cast v0, Landroid/support/v7/c/b;

    invoke-interface {v0}, Landroid/support/v7/c/b;->a()V

    .line 1469
    :cond_6
    return v4
.end method

.method public final c(Landroid/support/v7/internal/view/menu/t;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1476
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/c/b;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    check-cast v0, Landroid/support/v7/c/b;

    invoke-interface {v0}, Landroid/support/v7/c/b;->b()V

    .line 1480
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1481
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1482
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->i:Landroid/view/View;

    .line 1483
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1486
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1487
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1488
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->k(Landroid/support/v7/internal/widget/ActionBarView;)V

    .line 1493
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->l(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1494
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1496
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ag;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->l(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1497
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ag;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ag;->setVisibility(I)V

    .line 1499
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 1500
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->d(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1503
    iput-object v3, p0, Landroid/support/v7/internal/widget/e;->b:Landroid/support/v7/internal/view/menu/t;

    .line 1504
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    .line 1505
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/view/menu/t;->d(Z)V

    .line 1507
    return v4

    .line 1490
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 1435
    const/4 v0, 0x0

    return v0
.end method
