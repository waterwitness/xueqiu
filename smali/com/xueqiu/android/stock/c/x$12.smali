.class final Lcom/xueqiu/android/stock/c/x$12;
.super Lcom/xueqiu/android/base/b/p;
.source "StockDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/stock/model/AHStockQuote;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 618
    check-cast p1, Lcom/xueqiu/android/stock/model/AHStockQuote;

    .line 1626
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getCurrentCn()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 1631
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPercentCn()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1632
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPriceRatio()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 1633
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    const v5, 0x7f0702d6

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 1635
    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    .line 1636
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    const v1, 0x7f0702d7

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 1637
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getCurrentHkHkd()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 1638
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getPercentHk()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-object v6, v4

    move-wide v4, v0

    move-wide v0, v2

    .line 1641
    :goto_0
    const-string v2, "%.2f  %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v1, 0x1

    const-string v7, "%s%.2f%%"

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmpl-double v0, v4, v12

    if-lez v0, :cond_1

    const-string v0, "+"

    :goto_1
    aput-object v0, v10, v11

    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1642
    const-string v0, "%.2f%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1643
    const-string v0, "%s(\u5317\u4eac\u65f6\u95f4)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getTimeCn()J

    move-result-wide v12

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    const-string v11, "HH:mm"

    invoke-static {v3, v11}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1645
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->k(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0e0607

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1647
    if-eqz v3, :cond_0

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1651
    new-instance v0, Lcom/xueqiu/android/stock/c/x$12$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/x$12$1;-><init>(Lcom/xueqiu/android/stock/c/x$12;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1660
    const v0, 0x7f0e0608

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1661
    const v1, 0x7f0e0609

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1662
    const v2, 0x7f0e060a

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1663
    const v12, 0x7f0e060b

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1665
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1666
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1668
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    .line 1669
    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1671
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1672
    invoke-virtual {v0, v8, v9}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1674
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    :cond_0
    return-void

    .line 1641
    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    move-object v6, v4

    move-wide v4, v0

    move-wide v0, v2

    goto/16 :goto_0
.end method
