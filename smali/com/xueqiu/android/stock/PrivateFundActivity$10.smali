.class final Lcom/xueqiu/android/stock/PrivateFundActivity$10;
.super Lcom/xueqiu/android/base/b/p;
.source "PrivateFundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/NavDailyList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 698
    check-cast p1, Ljava/util/List;

    .line 1705
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1708
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavDailyList;->getList()Ljava/util/List;

    move-result-object v3

    .line 1709
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavDailyList;->getList()Ljava/util/List;

    move-result-object v2

    .line 1711
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1712
    :cond_0
    :goto_0
    return-void

    .line 1715
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1718
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1719
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 1721
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getPercent()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1724
    :cond_2
    const/4 v1, 0x0

    .line 1726
    const/4 v0, 0x1

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v2, v0, :cond_3

    .line 1727
    add-int/lit8 v0, v2, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 1728
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 1729
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getPercent()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 1730
    new-instance v8, Lcom/xueqiu/chart/a/c;

    invoke-direct {v8, v7, v0}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1733
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v1, v0

    .line 1736
    :goto_3
    new-instance v8, Lcom/xueqiu/chart/a/c;

    invoke-direct {v8, v7, v1}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1726
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 1739
    :cond_3
    new-instance v1, Lcom/xueqiu/chart/a/b;

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const v2, 0x7f070174

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2059
    const/4 v0, 0x1

    iput v0, v1, Lcom/xueqiu/chart/a/b;->c:I

    .line 1741
    new-instance v2, Lcom/xueqiu/chart/a/b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavDailyList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3055
    iget v0, v1, Lcom/xueqiu/chart/a/b;->c:I

    .line 3059
    iput v0, v2, Lcom/xueqiu/chart/a/b;->c:I

    .line 1743
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4051
    iput v0, v1, Lcom/xueqiu/chart/a/b;->b:I

    .line 1744
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0061

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5051
    iput v0, v2, Lcom/xueqiu/chart/a/b;->b:I

    .line 1745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1747
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/chart/a/a;

    invoke-direct {v2, v0}, Lcom/xueqiu/chart/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/chart/view/LineChart;->setData(Lcom/xueqiu/chart/a/a;)V

    .line 1749
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/LineChart;->setReverseDrawing(Z)V

    .line 1750
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/g;->b(I)V

    .line 1751
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/g;->c(I)V

    .line 1752
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 5077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 1752
    sget v1, Lcom/xueqiu/chart/b/k;->b:I

    .line 6028
    iput v1, v0, Lcom/xueqiu/chart/b/j;->f:I

    .line 1753
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 6077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 7052
    const/4 v1, 0x2

    iput v1, v0, Lcom/xueqiu/chart/b/j;->h:I

    .line 1754
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 8049
    const/4 v1, 0x5

    iput v1, v0, Lcom/xueqiu/chart/b/g;->h:I

    .line 1755
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    sget v1, Lcom/xueqiu/chart/b/c;->c:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/g;->d(I)V

    .line 1756
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 9031
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/chart/b/d;->a:Z

    .line 1757
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 9035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 1757
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1758
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 10035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 1758
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1759
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 11035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 1759
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ea8f5c3    # 0.33f

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1760
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 11047
    const/4 v1, 0x3

    iput v1, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 1761
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/b/e;->d()V

    .line 1762
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 1763
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    sget v1, Lcom/xueqiu/chart/b/c;->c:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->d(I)V

    .line 1764
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 12047
    const/4 v1, 0x3

    iput v1, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 1765
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 12063
    const v1, 0x3d75c28f    # 0.06f

    iput v1, v0, Lcom/xueqiu/chart/b/d;->d:F

    .line 1766
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 12071
    const v1, 0x3df5c28f    # 0.12f

    iput v1, v0, Lcom/xueqiu/chart/b/d;->e:F

    .line 1767
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 1768
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->b(I)V

    .line 1769
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/PrivateFundActivity$10$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/PrivateFundActivity$10$1;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity$10;)V

    .line 13046
    iput-object v1, v0, Lcom/xueqiu/chart/b/e;->h:Lcom/xueqiu/chart/c/d;

    .line 1775
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$10;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->n(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/chart/view/LineChart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->invalidate()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_3
.end method
