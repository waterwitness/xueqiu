.class final Lcom/xueqiu/android/stockchart/d/c$1;
.super Ljava/lang/Object;
.source "SmallChartFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stockchart/d/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/c;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->ao:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v2

    .line 30
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/d/c;->ar:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aC:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getTopChartHeight()F

    move-result v0

    .line 46
    :goto_2
    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->an:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/d/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->setRequestedOrientation(I)V

    goto :goto_0

    .line 33
    :sswitch_0
    const-string v5, "kline"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v5, "stock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v0

    goto :goto_2

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v0

    goto :goto_2

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->ar:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aw:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/c;->aq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/a;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getIndicator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "volume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "macd"

    :goto_3
    iput-object v0, v1, Lcom/xueqiu/android/stockchart/d/c;->au:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/c;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setIndicator(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 1258
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 2162
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/d/c;->u()V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->al:Lcom/xueqiu/android/stockchart/b/a;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/c;->al:Lcom/xueqiu/android/stockchart/b/a;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/c;->as:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/c$1;->a:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/c;->au:Ljava/lang/String;

    const-string v4, "volume"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stockchart/b/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_4
    const-string v0, "volume"

    goto :goto_3

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x61682df -> :sswitch_0
        0x68af716 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
