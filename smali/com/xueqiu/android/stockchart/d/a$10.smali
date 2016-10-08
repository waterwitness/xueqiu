.class final Lcom/xueqiu/android/stockchart/d/a$10;
.super Ljava/lang/Object;
.source "BaseChartFragment.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/a;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->c:Lcom/xueqiu/android/stockchart/a/c;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->c:Lcom/xueqiu/android/stockchart/a/c;

    invoke-interface {v0, p1, p2}, Lcom/xueqiu/android/stockchart/a/c;->a(FF)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "stock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a(F)V

    .line 519
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->d(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->b(F)V

    goto :goto_0

    .line 515
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "fund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->e(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/stockchart/d/a;->a(FF)V

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->c:Lcom/xueqiu/android/stockchart/a/c;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->c:Lcom/xueqiu/android/stockchart/a/c;

    invoke-interface {v0, p1, p2}, Lcom/xueqiu/android/stockchart/a/c;->b(FF)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "stock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a(F)V

    .line 533
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->b(F)V

    goto :goto_0

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "fund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/stockchart/d/a;->a(FF)V

    goto :goto_0
.end method

.method public final c(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 537
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->c:Lcom/xueqiu/android/stockchart/a/c;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->c:Lcom/xueqiu/android/stockchart/a/c;

    invoke-interface {v0, p1, p2}, Lcom/xueqiu/android/stockchart/a/c;->c(FF)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->al:Lcom/xueqiu/android/stockchart/b/a;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->al:Lcom/xueqiu/android/stockchart/b/a;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->as:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stockchart/b/a;->b(Ljava/lang/String;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "stock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->setIsOnPress(Z)V

    .line 556
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 1162
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V

    .line 557
    return-void

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 550
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->d(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "fund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$10;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->e(Lcom/xueqiu/android/stockchart/d/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
