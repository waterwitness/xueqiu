.class public Lcom/xueqiu/android/stockchart/view/PressInfoView;
.super Lcom/xueqiu/android/stockchart/view/ChartView;
.source "PressInfoView.java"


# instance fields
.field private b:Z

.field private c:F

.field private d:F

.field private e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

.field private f:Lcom/xueqiu/android/stockchart/view/StockChartView;

.field private g:Lcom/xueqiu/android/stockchart/view/FundChartView;

.field private h:Lcom/xueqiu/android/stockchart/e/h;

.field private i:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    .line 34
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->i:Ljava/text/DecimalFormat;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    .line 34
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->i:Ljava/text/DecimalFormat;

    .line 79
    return-void
.end method

.method private a(FFFFLandroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getBorderLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 372
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 373
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 374
    invoke-virtual {v0, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 375
    invoke-virtual {v0, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 376
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 377
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    invoke-virtual {p5, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 380
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    .line 382
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 383
    return-void
.end method

.method private a(FFLandroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getBorderLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 311
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v0

    add-float v1, p1, v0

    .line 312
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 313
    cmpl-float v0, p2, v2

    if-lez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v7

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartWidth()F

    move-result v2

    add-float v9, v0, v2

    move-object v6, p3

    move v8, p2

    move v10, p2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "kline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xueqiu/android/stockchart/c;->chart_average_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p3, v1, p2, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 322
    :cond_0
    return-void
.end method

.method private a(Lcom/xueqiu/android/stockchart/e/e;Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, v2

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopChartHeight()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopBottomGap()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getFontSize()F

    move-result v4

    add-float v8, v2, v4

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getFontSize()F

    move-result v2

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v9

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "big"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    if-eqz v2, :cond_3

    .line 173
    :cond_0
    if-nez p1, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowMACDArray()Ljava/util/List;

    move-result-object v2

    .line 175
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 176
    if-nez v4, :cond_1

    .line 222
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stockchart/e/e;

    move-object/from16 p1, v2

    .line 184
    :cond_2
    const-string v2, "DIF\uff1a %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->i:Ljava/text/DecimalFormat;

    .line 7012
    move-object/from16 v0, p1

    iget v7, v0, Lcom/xueqiu/android/stockchart/e/e;->a:F

    .line 184
    float-to-double v10, v7

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 186
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    add-float v11, v2, v4

    .line 187
    const-string v2, "DEA\uff1a %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->i:Ljava/text/DecimalFormat;

    .line 7020
    move-object/from16 v0, p1

    iget v7, v0, Lcom/xueqiu/android/stockchart/e/e;->b:F

    .line 187
    float-to-double v12, v7

    invoke-virtual {v6, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 189
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    add-float v13, v2, v4

    .line 190
    const-string v2, "MACD\uff1a%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->i:Ljava/text/DecimalFormat;

    .line 7028
    move-object/from16 v0, p1

    iget v7, v0, Lcom/xueqiu/android/stockchart/e/e;->c:F

    .line 190
    float-to-double v14, v7

    invoke-virtual {v6, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 192
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float v5, v13, v2

    .line 195
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a:Landroid/content/res/TypedArray;

    const/4 v6, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    const/16 v2, 0xcc

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getFontSize()F

    move-result v2

    sub-float v2, v8, v2

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float v6, v8, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/xueqiu/android/stockchart/c;->chart_dif_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v3, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_dea_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8028
    move-object/from16 v0, p1

    iget v2, v0, Lcom/xueqiu/android/stockchart/e/e;->c:F

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(F)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v13, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 212
    :cond_3
    const-string v10, "MACD(12,26,9)"

    .line 213
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float v5, v3, v2

    .line 215
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a:Landroid/content/res/TypedArray;

    const/4 v6, 0x6

    const/4 v11, 0x0

    invoke-virtual {v4, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    const/16 v2, 0xcc

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getFontSize()F

    move-result v2

    sub-float v2, v8, v2

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float v6, v8, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 220
    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v3, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/xueqiu/android/stockchart/e/f;Landroid/graphics/Canvas;)V
    .locals 22

    .prologue
    .line 389
    if-nez p1, :cond_8

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowOHLCMAArray()Ljava/util/List;

    move-result-object v2

    .line 391
    if-nez v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget v3, v3, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    if-lez v3, :cond_0

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget v3, v3, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stockchart/e/f;

    .line 402
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    add-float/2addr v3, v4

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getFontSize()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    add-float v15, v4, v5

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getFontSize()F

    move-result v4

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v16

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v4}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getKlineType()Ljava/lang/String;

    move-result-object v5

    .line 408
    const-string v4, "\u524d\u590d\u6743"

    .line 410
    const-string v6, "normal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 411
    const-string v4, "\u4e0d\u590d\u6743"

    .line 416
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v5}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getPeriod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/stockchart/f/a;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 417
    const-string v4, ""

    move-object v8, v4

    .line 420
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float v7, v3, v4

    .line 424
    const-string v6, ""

    .line 425
    const-string v5, ""

    .line 426
    const-string v4, ""

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "big"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    if-eqz v9, :cond_6

    .line 429
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    add-float v9, v4, v5

    .line 430
    const-string v4, "MA5 %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->h:Lcom/xueqiu/android/stockchart/e/h;

    .line 10087
    iget-wide v10, v7, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 11036
    iget v7, v2, Lcom/xueqiu/android/stockchart/e/f;->e:F

    .line 430
    float-to-double v12, v7

    invoke-static {v10, v11, v12, v13}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 432
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v4, v9

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v6

    add-float v7, v4, v6

    .line 433
    const-string v4, "MA10 %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->h:Lcom/xueqiu/android/stockchart/e/h;

    .line 11087
    iget-wide v12, v11, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 12044
    iget v11, v2, Lcom/xueqiu/android/stockchart/e/f;->f:F

    .line 433
    float-to-double v0, v11

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 435
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v10, v11}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v10

    add-float/2addr v6, v10

    .line 436
    const-string v10, "MA20 %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->h:Lcom/xueqiu/android/stockchart/e/h;

    .line 12087
    iget-wide v0, v13, Lcom/xueqiu/android/stockchart/e/h;->i:D

    move-wide/from16 v18, v0

    .line 13052
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/f;->g:F

    .line 436
    float-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 438
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v10, v6

    move-object v11, v5

    move v12, v6

    move v13, v7

    move v14, v9

    move-object v9, v2

    move v5, v10

    move-object v10, v4

    .line 442
    :goto_4
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a:Landroid/content/res/TypedArray;

    const/4 v6, 0x6

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    const/16 v2, 0xcc

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 445
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v2, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    add-float v6, v15, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 447
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v3, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "big"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    if-eqz v2, :cond_0

    .line 450
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_ma5_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_ma10_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v13, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_ma20_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v12, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 412
    :cond_5
    const-string v6, "after"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 413
    const-string v4, "\u540e\u590d\u6743"

    goto/16 :goto_2

    :cond_6
    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move v12, v3

    move v13, v3

    move v14, v3

    move v5, v7

    goto/16 :goto_4

    :cond_7
    move-object v8, v4

    goto/16 :goto_3

    :cond_8
    move-object/from16 v2, p1

    goto/16 :goto_1
.end method

.method private a(Lcom/xueqiu/android/stockchart/e/j;Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    .line 300
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopChartHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopBottomGap()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getFontSize()F

    move-result v2

    add-float/2addr v1, v2

    .line 301
    const-string v2, "\u6210\u4ea4\u91cf\uff1a%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 9008
    iget v6, p1, Lcom/xueqiu/android/stockchart/e/j;->a:F

    .line 301
    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 302
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v3

    .line 303
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 305
    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private b(FFLandroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 325
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopBottomGap()F

    move-result v0

    .line 327
    div-float v2, v0, v3

    sub-float v2, p1, v2

    .line 328
    div-float v3, v0, v3

    add-float/2addr v3, p1

    .line 329
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v4

    .line 331
    cmpg-float v5, v2, v1

    if-gez v5, :cond_0

    .line 333
    add-float v3, v1, v0

    move v2, v1

    :cond_0
    move-object v0, p0

    move-object v5, p3

    .line 336
    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FFFFLandroid/graphics/Canvas;)V

    .line 338
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 341
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr v1, v3

    .line 342
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 343
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->h:Lcom/xueqiu/android/stockchart/e/h;

    .line 9087
    iget-wide v4, v3, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 343
    float-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    return-void
.end method


# virtual methods
.method public getStock()Lcom/xueqiu/android/stockchart/e/h;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->h:Lcom/xueqiu/android/stockchart/e/h;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/xueqiu/android/stockchart/view/ChartView;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a()V

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->h:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    if-eqz v0, :cond_7

    .line 93
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    if-eqz v0, :cond_c

    .line 1225
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->c:F

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b(F)I

    move-result v2

    .line 1226
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowOHLCMAArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 1229
    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Lcom/xueqiu/android/stockchart/e/f;Landroid/graphics/Canvas;)V

    .line 1231
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getIndicator()Ljava/lang/String;

    move-result-object v1

    const-string v3, "volume"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1232
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowVolumeArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stockchart/e/j;

    .line 1233
    invoke-direct {p0, v1, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Lcom/xueqiu/android/stockchart/e/j;Landroid/graphics/Canvas;)V

    .line 1236
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getIndicator()Ljava/lang/String;

    move-result-object v1

    const-string v3, "macd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1237
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowMACDArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stockchart/e/e;

    .line 1238
    invoke-direct {p0, v1, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Lcom/xueqiu/android/stockchart/e/e;Landroid/graphics/Canvas;)V

    .line 1242
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 1839
    iget v3, v1, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, v1, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    iget v1, v1, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v1, v4

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float v2, v3, v1

    .line 1243
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->d:F

    .line 1245
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_b

    iget-object v3, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_b

    .line 1246
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "big"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1247
    iget-object v3, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 1844
    invoke-virtual {v3}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v4

    sub-float/2addr v4, v1

    iget v5, v3, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    div-float/2addr v4, v5

    iget v3, v3, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    add-float/2addr v3, v4

    .line 1247
    invoke-direct {p0, v1, v3, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b(FFLandroid/graphics/Canvas;)V

    .line 1253
    :cond_4
    :goto_1
    invoke-direct {p0, v2, v1, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FFLandroid/graphics/Canvas;)V

    .line 2068
    iget-object v1, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 1255
    const-string v3, "MM-DD hh:mm"

    invoke-static {v1, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1256
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getPeriod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1day"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1257
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getPeriod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1week"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1258
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getPeriod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1month"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3068
    :cond_5
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 1259
    const-string v1, "YYYY-MM-DD"

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 3265
    :goto_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v0

    add-float v4, v2, v0

    .line 3266
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v8

    .line 3267
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3269
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    add-float v5, v0, v1

    .line 3270
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v5, v0

    sub-float v1, v4, v0

    .line 3271
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopChartHeight()F

    move-result v2

    .line 3272
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopBottomGap()F

    move-result v0

    add-float v3, v2, v0

    .line 3273
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v5, v0

    add-float/2addr v0, v4

    .line 3275
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_6

    .line 3276
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v1

    .line 3277
    add-float v0, v1, v5

    .line 3278
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v5, v4

    add-float/2addr v4, v1

    .line 3281
    :cond_6
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartWidth()F

    move-result v7

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v9

    add-float/2addr v7, v9

    .line 3283
    cmpl-float v9, v0, v7

    if-lez v9, :cond_e

    .line 3284
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v4, v7, v0

    .line 3285
    sub-float v1, v4, v5

    .line 3286
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v5, v0

    add-float/2addr v0, v1

    move v7, v0

    :goto_3
    move-object v0, p0

    move-object v5, p1

    .line 3289
    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FFFFLandroid/graphics/Canvas;)V

    .line 3291
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    add-float/2addr v0, v2

    .line 3292
    invoke-virtual {p1, v6, v7, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    if-eqz v0, :cond_a

    .line 107
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    if-eqz v0, :cond_a

    .line 4132
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->c:F

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->b(F)I

    move-result v0

    .line 4134
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(I)Lcom/xueqiu/android/stockchart/e/i;

    move-result-object v1

    .line 4135
    if-eqz v1, :cond_a

    .line 4139
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->b(I)Lcom/xueqiu/android/stockchart/e/j;

    move-result-object v2

    .line 4140
    invoke-direct {p0, v2, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Lcom/xueqiu/android/stockchart/e/j;Landroid/graphics/Canvas;)V

    .line 4143
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getPerWidth()F

    move-result v2

    int-to-float v0, v0

    mul-float v7, v2, v0

    .line 4144
    iget v6, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->d:F

    .line 4146
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getTopChartHeight()F

    move-result v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_d

    .line 5011
    iget v0, v1, Lcom/xueqiu/android/stockchart/e/i;->a:F

    .line 4148
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getLastClose()F

    move-result v1

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/StockChartView;->getLastClose()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v8, v1, v2

    .line 4150
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "big"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4151
    invoke-direct {p0, v6, v0, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b(FFLandroid/graphics/Canvas;)V

    .line 5347
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getTopBottomGap()F

    move-result v0

    .line 5348
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartStartX()F

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartWidth()F

    move-result v2

    add-float/2addr v1, v2

    .line 5349
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float v2, v6, v2

    .line 5350
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, v6

    .line 5351
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getViewWidth()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 5353
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_8

    .line 5354
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5355
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    :cond_8
    move-object v0, p0

    move-object v5, p1

    .line 5358
    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FFFFLandroid/graphics/Canvas;)V

    .line 5360
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    .line 5361
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5363
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v1, v3

    .line 5364
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 5365
    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5366
    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    move v0, v6

    .line 4158
    :goto_5
    invoke-direct {p0, v7, v0, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FFLandroid/graphics/Canvas;)V

    .line 113
    :cond_a
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getChartType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    if-eqz v0, :cond_0

    .line 6122
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->g:Lcom/xueqiu/android/stockchart/view/FundChartView;

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->c:F

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->b(F)I

    move-result v0

    .line 6125
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->g:Lcom/xueqiu/android/stockchart/view/FundChartView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/FundChartView;->getPerWidth()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 6126
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->d:F

    .line 6128
    invoke-direct {p0, v0, v1, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(FFLandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1250
    :cond_b
    const/high16 v1, -0x40800000    # -1.0f

    goto/16 :goto_1

    .line 96
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Lcom/xueqiu/android/stockchart/e/f;Landroid/graphics/Canvas;)V

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getIndicator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "macd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->a(Lcom/xueqiu/android/stockchart/e/e;Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 4155
    :cond_d
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_5

    :cond_e
    move v7, v4

    move v4, v0

    goto/16 :goto_3

    :cond_f
    move-object v6, v1

    goto/16 :goto_2
.end method

.method public setFundChartView(Lcom/xueqiu/android/stockchart/view/FundChartView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->g:Lcom/xueqiu/android/stockchart/view/FundChartView;

    .line 38
    return-void
.end method

.method public setIsOnPress(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->b:Z

    .line 51
    return-void
.end method

.method public setKlineChartView(Lcom/xueqiu/android/stockchart/view/KlineChartView;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->e:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 42
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->getDecimalFormat()Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->i:Ljava/text/DecimalFormat;

    .line 43
    return-void
.end method

.method public setPressEventX(F)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->c:F

    .line 55
    return-void
.end method

.method public setPressEventY(F)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->d:F

    .line 59
    return-void
.end method

.method public setStock(Lcom/xueqiu/android/stockchart/e/h;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->h:Lcom/xueqiu/android/stockchart/e/h;

    .line 67
    return-void
.end method

.method public setStockChartView(Lcom/xueqiu/android/stockchart/view/StockChartView;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/PressInfoView;->f:Lcom/xueqiu/android/stockchart/view/StockChartView;

    .line 47
    return-void
.end method
