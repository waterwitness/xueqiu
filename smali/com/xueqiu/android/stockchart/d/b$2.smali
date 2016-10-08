.class final Lcom/xueqiu/android/stockchart/d/b$2;
.super Ljava/lang/Object;
.source "BigChartFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/d/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/b;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->ar:Ljava/lang/String;

    const-string v2, "kline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v0

    .line 131
    :goto_0
    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/b;->aq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getIndicator()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/b;->a(Lcom/xueqiu/android/stockchart/d/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 140
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->ar:Ljava/lang/String;

    const-string v2, "stock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v0

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getTopChartHeight()F

    move-result v0

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$2;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/b;->b(Lcom/xueqiu/android/stockchart/d/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    goto :goto_1
.end method
