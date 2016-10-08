.class final Landroid/support/v4/view/dg;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/do;


# instance fields
.field a:Landroid/support/v4/view/dc;


# direct methods
.method constructor <init>(Landroid/support/v4/view/dc;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    .line 530
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->d(Landroid/support/v4/view/dc;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 535
    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 537
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/dc;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->a(Landroid/support/v4/view/dc;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 540
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 542
    instance-of v2, v0, Landroid/support/v4/view/do;

    if-eqz v2, :cond_3

    .line 543
    check-cast v0, Landroid/support/v4/view/do;

    .line 545
    :goto_0
    if-eqz v0, :cond_2

    .line 546
    invoke-interface {v0, p1}, Landroid/support/v4/view/do;->a(Landroid/view/View;)V

    .line 548
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->d(Landroid/support/v4/view/dc;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->d(Landroid/support/v4/view/dc;)I

    move-result v0

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 554
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->c(Landroid/support/v4/view/dc;)I

    .line 556
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->b(Landroid/support/v4/view/dc;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Landroid/support/v4/view/dg;->a:Landroid/support/v4/view/dc;

    invoke-static {v0}, Landroid/support/v4/view/dc;->b(Landroid/support/v4/view/dc;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 559
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 561
    instance-of v2, v0, Landroid/support/v4/view/do;

    if-eqz v2, :cond_3

    .line 562
    check-cast v0, Landroid/support/v4/view/do;

    .line 564
    :goto_0
    if-eqz v0, :cond_2

    .line 565
    invoke-interface {v0, p1}, Landroid/support/v4/view/do;->b(Landroid/view/View;)V

    .line 567
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 571
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 572
    const/4 v1, 0x0

    .line 573
    instance-of v2, v0, Landroid/support/v4/view/do;

    if-eqz v2, :cond_1

    .line 574
    check-cast v0, Landroid/support/v4/view/do;

    .line 576
    :goto_0
    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0, p1}, Landroid/support/v4/view/do;->c(Landroid/view/View;)V

    .line 579
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
