.class final Lcom/xueqiu/android/stockchart/d/a$11;
.super Ljava/lang/Object;
.source "BaseChartFragment.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/a/a;


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
    .line 566
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(FF)V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->d:Lcom/xueqiu/android/stockchart/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->d:Lcom/xueqiu/android/stockchart/a/a;

    invoke-interface {v0, p1, p2}, Lcom/xueqiu/android/stockchart/a/a;->d(FF)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/xueqiu/android/stockchart/d/a;F)F

    .line 573
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/xueqiu/android/stockchart/d/a;Z)Z

    .line 574
    return-void
.end method

.method public final e(FF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v2, "kline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->d:Lcom/xueqiu/android/stockchart/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v2, "kline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->d:Lcom/xueqiu/android/stockchart/a/a;

    invoke-interface {v0, p1, p2}, Lcom/xueqiu/android/stockchart/a/a;->e(FF)V

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    .line 1190
    iget-boolean v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aM:Z

    .line 586
    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->f(Lcom/xueqiu/android/stockchart/d/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getStartIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/xueqiu/android/stockchart/d/a;I)I

    .line 592
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getEndIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/d/a;->b(Lcom/xueqiu/android/stockchart/d/a;I)I

    .line 593
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0, v4}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/xueqiu/android/stockchart/d/a;Z)Z

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->g(Lcom/xueqiu/android/stockchart/d/a;)F

    move-result v0

    sub-float v0, p1, v0

    .line 597
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleWidth()F

    move-result v2

    .line 598
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleGap()F

    move-result v3

    .line 600
    add-float/2addr v2, v3

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v2, v0, -0x1

    .line 602
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->h(Lcom/xueqiu/android/stockchart/d/a;)I

    move-result v0

    add-int/2addr v0, v2

    .line 603
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v3}, Lcom/xueqiu/android/stockchart/d/a;->i(Lcom/xueqiu/android/stockchart/d/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 605
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getMaxIndex()I

    move-result v3

    .line 607
    if-le v2, v3, :cond_4

    .line 608
    sub-int v3, v2, v3

    .line 609
    sub-int/2addr v0, v3

    .line 612
    :cond_4
    if-gez v0, :cond_5

    .line 613
    sub-int v0, v2, v0

    move v2, v0

    move v0, v1

    .line 617
    :cond_5
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getStartIndex()I

    move-result v3

    if-eq v0, v3, :cond_6

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 618
    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getEndIndex()I

    move-result v3

    if-eq v2, v3, :cond_6

    if-gt v0, v2, :cond_6

    .line 620
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setStartIndex(I)V

    .line 621
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setEndIndex(I)V

    .line 622
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 1258
    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    .line 624
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 2162
    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V

    .line 627
    :cond_6
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    .line 2190
    iget-boolean v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aM:Z

    .line 627
    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/xueqiu/android/stockchart/d/a;Z)Z

    .line 629
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/d/a;->f(Z)V

    goto/16 :goto_0
.end method

.method public final f(FF)V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->d:Lcom/xueqiu/android/stockchart/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->d:Lcom/xueqiu/android/stockchart/a/a;

    invoke-interface {v0, p1, p2}, Lcom/xueqiu/android/stockchart/a/a;->f(FF)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$11;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/xueqiu/android/stockchart/d/a;F)F

    .line 639
    return-void
.end method
