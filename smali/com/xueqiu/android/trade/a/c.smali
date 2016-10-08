.class public final Lcom/xueqiu/android/trade/a/c;
.super Lcom/xueqiu/android/common/a/d;
.source "PerformanceStockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/StockIncome;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/xueqiu/android/base/util/ar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f0301f3

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/c;->e:Lcom/xueqiu/android/base/util/ar;

    .line 1111
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/a/c;->e:Lcom/xueqiu/android/base/util/ar;

    .line 25
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 40
    new-instance v1, Lcom/xueqiu/android/trade/a/d;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/a/d;-><init>()V

    .line 41
    const v0, 0x7f0e06c2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->a:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0e06c4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->b:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0e06c5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->c:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0e06c6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->d:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0e06c7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->e:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e06c8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->f:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0e06c9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->g:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0e06ca

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->h:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0e06c3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->i:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0e01fb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/d;->j:Landroid/view/View;

    .line 52
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockIncome;

    .line 59
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getMarketValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getShares()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getCurrent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getSymbol()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/String;)Lcom/xueqiu/android/base/util/at;

    move-result-object v4

    .line 70
    iget-object v5, v4, Lcom/xueqiu/android/base/util/at;->c:Ljava/lang/String;

    const-string v6, "\u57fa\u91d1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, v4, Lcom/xueqiu/android/base/util/at;->c:Ljava/lang/String;

    const-string v5, "\u6caaB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    :cond_0
    const-string v2, "%.3f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getCurrent()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_1
    iget-object v4, v1, Lcom/xueqiu/android/trade/a/d;->e:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getAvgPrice()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xueqiu/android/trade/a/c;->e:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getFloatAmount()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/xueqiu/android/trade/a/c;->e:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getFloatAmount()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v4, v1, Lcom/xueqiu/android/trade/a/d;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getFloatAmount()F

    move-result v5

    .line 2090
    const-string v6, "%s%s"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_3

    const-string v2, "+"

    :goto_1
    aput-object v2, v7, v8

    const/4 v2, 0x1

    float-to-double v8, v5

    invoke-static {v8, v9}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v1, Lcom/xueqiu/android/trade/a/d;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getFloatRate()F

    move-result v4

    .line 2094
    const-string v5, "%s%.2f%%"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    const-string v0, "+"

    :goto_2
    aput-object v0, v6, v7

    const/4 v0, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, v1, Lcom/xueqiu/android/trade/a/d;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/a/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_5

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-object v3

    .line 54
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/d;

    move-object v1, v0

    goto/16 :goto_0

    .line 2090
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 2094
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 84
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method
