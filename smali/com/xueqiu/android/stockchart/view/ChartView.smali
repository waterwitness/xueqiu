.class public Lcom/xueqiu/android/stockchart/view/ChartView;
.super Lcom/xueqiu/android/stockchart/view/BaseView;
.source "ChartView.java"


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/text/DecimalFormat;

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->e:F

    .line 29
    const-string v0, "small"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->h:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->j:Ljava/text/DecimalFormat;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->e:F

    .line 29
    const-string v0, "small"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->h:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->j:Ljava/text/DecimalFormat;

    .line 138
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getViewWidth()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->c:F

    .line 184
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getViewHeight()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    .line 186
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getChartWidth()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    .line 187
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getChartStartX()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->e:F

    .line 189
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getTopBottomGap()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->m:F

    .line 190
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->m:F

    sub-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    .line 191
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->m:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->l:F

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->i:Ljava/lang/String;

    const-string v1, "fund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->m:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    .line 196
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 146
    .line 1153
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1154
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1155
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1157
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 1158
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v3, v0, v2

    .line 1160
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1161
    const/high16 v8, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v10, v0, v2

    move-object v6, p1

    move v7, v1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1162
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v8, v0, v2

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v6, p1

    move v7, v3

    move v9, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1163
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v8, v0, v2

    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v10, v0, v2

    move-object v6, p1

    move v7, v3

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->i:Ljava/lang/String;

    const-string v1, "fund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1169
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1170
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1172
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 1173
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v3, v0, v2

    .line 1174
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    iget v2, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->m:F

    add-float/2addr v2, v0

    move-object v0, p1

    move v4, v2

    .line 1176
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1177
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v10, v0, v4

    move-object v6, p1

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1178
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v8, v0, v4

    move-object v6, p1

    move v7, v3

    move v9, v3

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1179
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v8, v0, v2

    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v10, v0, v2

    move-object v6, p1

    move v7, v3

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    :cond_0
    return-void
.end method

.method public getBottomChartHeight()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->l:F

    return v0
.end method

.method public getChartStartX()F
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->h:Ljava/lang/String;

    const-string v1, "big"

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->e:F

    .line 125
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->e:F

    return v0
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getChartWidth()F
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->h:Ljava/lang/String;

    const-string v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getViewWidth()F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    .line 118
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->i:Ljava/lang/String;

    const-string v1, "kline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->i:Ljava/lang/String;

    const-string v1, "stock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->f:Ljava/lang/String;

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->f:Ljava/lang/String;

    const-string v1, "5d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getViewWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getChartStartX()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getViewWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getChartStartX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getViewWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getChartStartX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->d:F

    goto :goto_0
.end method

.method public getDecimalFormat()Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->j:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTopBottomGap()F
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/ChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method public getTopChartHeight()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->k:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getViewWidth()F
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/xueqiu/android/stockchart/view/BaseView;->getViewWidth()F

    move-result v0

    .line 97
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/xueqiu/android/stockchart/view/BaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    return-void
.end method

.method public setChartType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->i:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->g:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/xueqiu/android/stockchart/f/a;->b(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->j:Ljava/text/DecimalFormat;

    .line 79
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/ChartView;->h:Ljava/lang/String;

    .line 50
    return-void
.end method
