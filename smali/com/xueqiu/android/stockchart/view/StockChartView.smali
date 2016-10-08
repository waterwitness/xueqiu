.class public Lcom/xueqiu/android/stockchart/view/StockChartView;
.super Lcom/xueqiu/android/stockchart/view/ChartView;
.source "StockChartView.java"


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:F

.field public d:F

.field public e:F

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/xueqiu/android/stockchart/e/h;

.field private h:I

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    .line 35
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->i:F

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    .line 35
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->i:F

    .line 87
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/util/List;)[F

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    aget v9, v0, v1

    .line 190
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getBottomChartHeight()F

    move-result v0

    div-float v10, v0, v9

    .line 192
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v1

    .line 194
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 195
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    .line 202
    :goto_0
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v6, :cond_4

    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    if-ge v8, v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/j;

    .line 206
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stockchart/e/i;

    .line 11011
    iget v7, v2, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 209
    if-eqz v0, :cond_2

    .line 210
    sub-float v2, v7, v3

    .line 212
    if-nez v8, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getLastClose()F

    move-result v2

    sub-float v2, v7, v2

    .line 216
    :cond_0
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 217
    const/high16 v2, 0x3f800000    # 1.0f

    .line 220
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(F)I

    move-result v3

    .line 223
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getViewHeight()F

    move-result v2

    .line 12008
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/j;->a:F

    .line 223
    mul-float/2addr v0, v10

    sub-float/2addr v2, v0

    .line 225
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getViewHeight()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v0, v3

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    add-float/2addr v1, v0

    :cond_2
    move v0, v7

    .line 202
    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v3, v0

    goto :goto_1

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 234
    :cond_4
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v0

    .line 238
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopBottomGap()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 240
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "big"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 242
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr v0, v3

    .line 247
    :goto_3
    float-to-int v3, v9

    invoke-static {v3}, Lcom/xueqiu/android/stockchart/f/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    return-void

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    .line 501
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v4

    .line 502
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v0

    .line 503
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartWidth()F

    .line 504
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartWidth()F

    move-result v1

    div-float v7, v1, v2

    .line 506
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    add-float v8, v0, v1

    .line 507
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    .line 509
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 510
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xueqiu/android/stockchart/c;->chart_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 512
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getFontSize()F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 514
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 515
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    add-float v10, v4, v0

    .line 517
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_1

    .line 518
    int-to-float v0, v6

    mul-float/2addr v0, v7

    add-float/2addr v0, v8

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->b(F)I

    move-result v0

    .line 519
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(I)Lcom/xueqiu/android/stockchart/e/i;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_1

    .line 12020
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/e/i;->b:Ljava/lang/String;

    .line 524
    const-string v1, "MM-DD"

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    int-to-float v1, v6

    mul-float/2addr v1, v7

    add-float/2addr v1, v8

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v7, v2

    add-float/2addr v1, v2

    .line 527
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 528
    invoke-virtual {p1, v0, v1, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 530
    if-eqz v6, :cond_0

    .line 531
    int-to-float v0, v6

    mul-float/2addr v0, v7

    add-float v1, v8, v0

    .line 532
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 517
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 535
    :cond_1
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v4

    .line 539
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v8

    .line 540
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartWidth()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v9, v0, v1

    .line 542
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 543
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xueqiu/android/stockchart/c;->chart_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 544
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getFontSize()F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 547
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 548
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    add-float v11, v4, v0

    .line 550
    const-string v0, "MM-DD"

    .line 552
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getPeriod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1m"

    if-eq v1, v2, :cond_1

    .line 553
    const-string v0, "YYYY-MM-DD"

    move-object v6, v0

    .line 556
    :goto_0
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    const/4 v0, 0x5

    if-ge v7, v0, :cond_0

    .line 557
    int-to-float v0, v7

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->b(F)I

    move-result v0

    .line 558
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(I)Lcom/xueqiu/android/stockchart/e/i;

    move-result-object v1

    .line 559
    if-eqz v1, :cond_0

    .line 13020
    iget-object v1, v1, Lcom/xueqiu/android/stockchart/e/i;->b:Ljava/lang/String;

    .line 563
    invoke-static {v1, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float v1, v8, v0

    .line 566
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 567
    invoke-virtual {p1, v2, v1, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 569
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 556
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 571
    :cond_0
    return-void

    :cond_1
    move-object v6, v0

    goto :goto_0
.end method

.method private getCenterTimeIndex()I
    .locals 3

    .prologue
    const/16 v0, 0x78

    .line 154
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 9046
    iget v1, v1, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 159
    invoke-static {v1}, Lcom/xueqiu/android/stockchart/f/a;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const/16 v0, 0xb4

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {v1}, Lcom/xueqiu/android/stockchart/f/a;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/16 v0, 0x96

    goto :goto_0
.end method

.method private getSplitTimesFor1d()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v0, :cond_0

    .line 170
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "09:30"

    aput-object v1, v0, v2

    const-string v1, "11:30"

    aput-object v1, v0, v3

    const-string v1, "15:00"

    aput-object v1, v0, v4

    .line 178
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 10046
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 173
    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "09:30"

    aput-object v1, v0, v2

    const-string v1, "12:30"

    aput-object v1, v0, v3

    const-string v1, "16:00"

    aput-object v1, v0, v4

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "09:30"

    aput-object v1, v0, v2

    const-string v1, "12:00"

    aput-object v1, v0, v3

    const-string v1, "16:00"

    aput-object v1, v0, v4

    goto :goto_0

    .line 178
    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "09:30"

    aput-object v1, v0, v2

    const-string v1, "11:30"

    aput-object v1, v0, v3

    const-string v1, "15:00"

    aput-object v1, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/xueqiu/android/stockchart/e/i;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/i;

    .line 645
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(F)I
    .locals 2

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v0

    sub-float v0, p1, v0

    .line 623
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 625
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 629
    :cond_0
    if-gez v0, :cond_1

    .line 630
    const/4 v0, 0x0

    .line 633
    :cond_1
    return v0
.end method

.method public final b(I)Lcom/xueqiu/android/stockchart/e/j;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/j;

    .line 658
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentX()F
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 669
    int-to-float v0, v0

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getLastClose()F
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 689
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getPeriod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 13038
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/h;->d:F

    .line 702
    :goto_0
    return v0

    .line 693
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/i;

    .line 14011
    iget v3, v0, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 696
    cmpl-float v3, v3, v2

    if-eqz v3, :cond_1

    .line 15011
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/i;->a:F

    goto :goto_0

    .line 693
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getPerWidth()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    return v0
.end method

.method public getPriceChartMin()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->e:F

    return v0
.end method

.method public getPriceChartScale()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->d:F

    return v0
.end method

.method public getStock()Lcom/xueqiu/android/stockchart/e/h;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    return-object v0
.end method

.method public getTimesArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimesSize()I
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVolumeArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    .prologue
    .line 91
    invoke-super/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/ChartView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a()V

    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(Landroid/graphics/Canvas;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    if-eqz v2, :cond_0

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 2046
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getPeriod()Ljava/lang/String;

    move-result-object v3

    .line 1130
    const-string v4, "1d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1131
    invoke-static {v2}, Lcom/xueqiu/android/stockchart/f/a;->f(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1132
    const/16 v2, 0x187

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    .line 1112
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v2, :cond_8

    .line 109
    :cond_1
    :goto_1
    return-void

    .line 1133
    :cond_2
    invoke-static {v2}, Lcom/xueqiu/android/stockchart/f/a;->g(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1134
    const/16 v2, 0x14c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    goto :goto_0

    .line 1136
    :cond_3
    const/16 v2, 0xf2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    goto :goto_0

    .line 1138
    :cond_4
    const-string v4, "5d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1139
    invoke-static {v2}, Lcom/xueqiu/android/stockchart/f/a;->f(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1140
    const/16 v2, 0xc8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    goto :goto_0

    .line 1141
    :cond_5
    invoke-static {v2}, Lcom/xueqiu/android/stockchart/f/a;->g(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1142
    const/16 v2, 0xaf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    goto :goto_0

    .line 1144
    :cond_6
    const/16 v2, 0x82

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    goto :goto_0

    .line 1147
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->h:I

    goto :goto_0

    .line 102
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_21

    .line 2255
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getPeriod()Ljava/lang/String;

    move-result-object v20

    .line 2256
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v21

    .line 2257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/util/List;)[F

    move-result-object v3

    .line 2258
    const/4 v2, 0x0

    aget v2, v3, v2

    .line 2259
    const/4 v4, 0x1

    aget v3, v3, v4

    .line 2261
    const/4 v5, 0x0

    .line 2262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 3030
    iget-object v4, v4, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 2262
    if-nez v4, :cond_10

    const/4 v4, 0x1

    .line 2263
    :goto_2
    if-eqz v4, :cond_9

    .line 2264
    const/high16 v2, 0x41200000    # 10.0f

    .line 2265
    const/high16 v3, 0x41400000    # 12.0f

    .line 2266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    const-string v6, "11"

    invoke-virtual {v4, v6}, Lcom/xueqiu/android/stockchart/e/h;->a(Ljava/lang/String;)V

    .line 2269
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getLastClose()F

    move-result v4

    .line 2271
    const-string v6, "1d"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "5d"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 2274
    :cond_a
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_11

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_11

    .line 2275
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_23

    .line 2276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 3038
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/h;->d:F

    .line 2279
    :goto_3
    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v2

    add-float v4, v2, v3

    .line 2280
    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v2

    sub-float v5, v2, v3

    .line 2281
    const/4 v3, 0x1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    .line 2312
    :goto_4
    sub-float v2, v16, v17

    .line 2313
    const v3, 0x3d75c28f    # 0.06f

    mul-float/2addr v3, v2

    add-float v3, v3, v16

    .line 2314
    const v4, 0x3d75c28f    # 0.06f

    mul-float/2addr v2, v4

    sub-float v22, v17, v2

    .line 2315
    sub-float v2, v3, v22

    .line 2316
    div-float v23, v21, v2

    .line 2318
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xueqiu/android/stockchart/view/StockChartView;->e:F

    .line 2319
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xueqiu/android/stockchart/view/StockChartView;->d:F

    .line 4412
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v6

    .line 4413
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v3

    .line 4414
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartWidth()F

    move-result v2

    add-float v5, v3, v2

    .line 4419
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "big"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4420
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float v4, v3, v2

    .line 4421
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v2, v5

    move/from16 v18, v2

    move/from16 v19, v4

    .line 4427
    :goto_5
    sub-float v2, v16, v22

    mul-float v2, v2, v23

    sub-float v4, v6, v2

    .line 4428
    sub-float v2, v17, v22

    mul-float v2, v2, v23

    sub-float v10, v6, v2

    .line 4430
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v2, p1

    move v6, v4

    .line 4431
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v8, p1

    move v9, v3

    move v11, v5

    move v12, v10

    move-object v13, v7

    .line 4432
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 4434
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 4435
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4436
    const/high16 v2, -0x10000

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4437
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getFontSize()F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 5030
    iget-object v2, v2, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 4439
    if-eqz v2, :cond_b

    .line 4440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 5087
    iget-wide v6, v2, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 4440
    move/from16 v0, v16

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v5

    .line 4441
    sub-float v2, v16, v14

    .line 4442
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%.2f%%"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    div-float v11, v2, v14

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4443
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4444
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v7, "big"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_6
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4445
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getFontSize()F

    move-result v2

    add-float/2addr v2, v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4446
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "big"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_7
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4447
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getFontSize()F

    move-result v2

    add-float/2addr v2, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4449
    sub-float v2, v17, v14

    .line 4450
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%.2f%%"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    div-float v8, v2, v14

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4451
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(F)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 6087
    iget-wide v6, v2, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 4452
    move/from16 v0, v17

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v5

    .line 4453
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v6, "big"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_8
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4454
    const/high16 v2, 0x40400000    # 3.0f

    sub-float v2, v10, v2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4455
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "big"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_9
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4456
    const/high16 v2, 0x40400000    # 3.0f

    sub-float v2, v10, v2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6461
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getPeriod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6471
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v6

    .line 6473
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v2

    .line 6474
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartWidth()F

    move-result v3

    add-float/2addr v3, v2

    .line 6476
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    add-float/2addr v2, v4

    .line 6477
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    sub-float v4, v3, v4

    .line 6479
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 6480
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/xueqiu/android/stockchart/c;->chart_text_color:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6481
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6482
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getFontSize()F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6484
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v3, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float v7, v6, v3

    .line 6485
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getCenterTimeIndex()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v3, v8

    .line 6486
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getSplitTimesFor1d()[Ljava/lang/String;

    move-result-object v8

    .line 6487
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6488
    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6490
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6491
    const/4 v2, 0x1

    aget-object v2, v8, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6493
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6494
    const/4 v2, 0x2

    aget-object v2, v8, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6496
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 6497
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2324
    :goto_a
    const-string v2, "1d"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "5d"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6577
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v2

    .line 6578
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xueqiu/android/stockchart/c;->chart_last_close_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 6581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    if-eqz v4, :cond_d

    .line 6582
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 6583
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6584
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6585
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6587
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getLastClose()F

    move-result v3

    .line 6588
    sub-float v3, v3, v22

    mul-float v3, v3, v23

    sub-float/2addr v2, v3

    .line 6589
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 6590
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v5

    .line 6591
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartWidth()F

    move-result v7

    add-float/2addr v6, v7

    .line 6592
    invoke-virtual {v3, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 6593
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6594
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 6595
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 6596
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2329
    :cond_d
    if-nez v15, :cond_21

    .line 2333
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v10

    .line 2334
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_line_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 2335
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_bg_color_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 2336
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_bg_color_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 2337
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_average_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 2339
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 2340
    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 2341
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2342
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2344
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2347
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 2348
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2349
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2350
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2352
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 2353
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 2355
    const/4 v4, 0x0

    .line 2356
    const/4 v3, 0x0

    .line 2357
    const/4 v2, 0x0

    move v5, v4

    move v6, v10

    move v4, v3

    move v3, v2

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1e

    .line 2358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2359
    if-ge v3, v2, :cond_f

    .line 2360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stockchart/e/i;

    .line 2362
    if-eqz v2, :cond_f

    .line 7011
    iget v7, v2, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 2364
    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_e

    .line 8011
    iget v7, v2, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 2365
    sub-float v7, v7, v22

    mul-float v7, v7, v23

    sub-float v7, v21, v7

    .line 8030
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/i;->c:F

    .line 2366
    sub-float v2, v2, v22

    mul-float v2, v2, v23

    sub-float v2, v21, v2

    .line 2368
    if-lez v3, :cond_1d

    .line 2369
    if-eqz v4, :cond_1d

    .line 2375
    invoke-virtual {v9, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2376
    invoke-virtual {v14, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2385
    :cond_e
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    add-float/2addr v6, v2

    .line 2357
    :cond_f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b

    .line 2262
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2283
    :cond_11
    cmpl-float v6, v4, v2

    if-lez v6, :cond_12

    move v2, v4

    .line 2287
    :cond_12
    cmpg-float v6, v4, v3

    if-gez v6, :cond_13

    move v3, v4

    .line 2291
    :cond_13
    cmpl-float v6, v2, v3

    if-nez v6, :cond_14

    .line 2292
    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v4

    add-float/2addr v2, v4

    .line 2293
    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v4

    sub-float v3, v4, v3

    .line 2296
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 3046
    iget v6, v6, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 2296
    invoke-static {v6}, Lcom/xueqiu/android/stockchart/f/a;->e(I)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 2298
    const-string v6, "5d"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2299
    cmpl-float v6, v2, v3

    if-nez v6, :cond_15

    cmpl-float v6, v2, v4

    if-nez v6, :cond_15

    .line 2300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 4038
    iget v4, v4, Lcom/xueqiu/android/stockchart/e/h;->d:F

    .line 2304
    :cond_15
    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2305
    add-float v2, v4, v3

    .line 2306
    sub-float v3, v4, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_4

    .line 4423
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v2, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float v4, v3, v2

    .line 4424
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v2, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    sub-float v2, v5, v2

    move/from16 v18, v2

    move/from16 v19, v4

    goto/16 :goto_5

    .line 4444
    :cond_17
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_6

    .line 4446
    :cond_18
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto/16 :goto_7

    .line 4453
    :cond_19
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_8

    .line 4455
    :cond_1a
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto/16 :goto_9

    .line 6463
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getPeriod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 6464
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->c(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    .line 6466
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->d(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    .line 2380
    :cond_1d
    invoke-virtual {v9, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2381
    invoke-virtual {v14, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2382
    const/4 v4, 0x1

    move v5, v7

    goto/16 :goto_c

    .line 2391
    :cond_1e
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 2392
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 8046
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 2395
    invoke-static {v2}, Lcom/xueqiu/android/stockchart/f/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "1d"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "5d"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2396
    :cond_1f
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 2397
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2401
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->c:F

    sub-float v2, v6, v2

    .line 2402
    move/from16 v0, v21

    invoke-virtual {v9, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2403
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v2

    move/from16 v0, v21

    invoke-virtual {v9, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2404
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getChartStartX()F

    move-result v2

    invoke-virtual {v9, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2405
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 106
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 107
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->b(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_22
    move v14, v4

    move v15, v5

    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_4

    :cond_23
    move v2, v4

    goto/16 :goto_3

    .line 6594
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public setStock(Lcom/xueqiu/android/stockchart/e/h;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->g:Lcom/xueqiu/android/stockchart/e/h;

    .line 74
    return-void
.end method

.method public setTimesArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->b:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public setVolumeArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/StockChartView;->f:Ljava/util/ArrayList;

    .line 66
    return-void
.end method
