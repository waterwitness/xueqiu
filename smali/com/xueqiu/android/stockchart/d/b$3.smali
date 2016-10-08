.class final Lcom/xueqiu/android/stockchart/d/b$3;
.super Ljava/lang/Object;
.source "BigChartFragment.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/a/d;


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
    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/b;->a(Lcom/xueqiu/android/stockchart/d/b;Z)Z

    .line 216
    return-void
.end method

.method public final a(FF)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowOHLCMAArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/b;->c(Lcom/xueqiu/android/stockchart/d/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getStartIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/d/b;->a(Lcom/xueqiu/android/stockchart/d/b;I)I

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getEndIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/d/b;->b(Lcom/xueqiu/android/stockchart/d/b;I)I

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2, p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b(F)I

    move-result v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/d/b;->c(Lcom/xueqiu/android/stockchart/d/b;I)I

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v2}, Lcom/xueqiu/android/stockchart/d/b;->d(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v3}, Lcom/xueqiu/android/stockchart/d/b;->e(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/d/b;->d(Lcom/xueqiu/android/stockchart/d/b;I)I

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v0, v6}, Lcom/xueqiu/android/stockchart/d/b;->a(Lcom/xueqiu/android/stockchart/d/b;Z)Z

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOriginCandleWidth()F

    move-result v0

    mul-float/2addr v0, p2

    .line 178
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setCandleWidth(F)V

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleCount()I

    move-result v2

    .line 181
    int-to-float v0, v2

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v3}, Lcom/xueqiu/android/stockchart/d/b;->f(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v3}, Lcom/xueqiu/android/stockchart/d/b;->g(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 182
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/b;->e(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v0

    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v4}, Lcom/xueqiu/android/stockchart/d/b;->g(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v0, v3

    .line 186
    iget-object v4, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v4}, Lcom/xueqiu/android/stockchart/d/b;->e(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v5}, Lcom/xueqiu/android/stockchart/d/b;->g(Lcom/xueqiu/android/stockchart/d/b;)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v3

    add-int/2addr v2, v4

    .line 187
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getMaxIndex()I

    move-result v3

    .line 189
    if-le v2, v3, :cond_3

    .line 190
    sub-int v3, v2, v3

    sub-int/2addr v0, v3

    .line 193
    :cond_3
    if-gez v0, :cond_4

    .line 194
    sub-int v0, v2, v0

    move v2, v0

    move v0, v1

    .line 198
    :cond_4
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getStartIndex()I

    move-result v3

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 199
    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getEndIndex()I

    move-result v3

    if-eq v2, v3, :cond_5

    if-gt v0, v2, :cond_5

    .line 201
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setStartIndex(I)V

    .line 202
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v3, v3, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setEndIndex(I)V

    .line 203
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 1258
    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    .line 206
    :cond_5
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    .line 2190
    iget-boolean v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aM:Z

    .line 206
    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/d/b;->a(Lcom/xueqiu/android/stockchart/d/b;Z)Z

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b$3;->a:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/stockchart/d/b;->f(Z)V

    goto/16 :goto_0
.end method
