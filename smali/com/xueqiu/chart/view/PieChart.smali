.class public Lcom/xueqiu/chart/view/PieChart;
.super Lcom/xueqiu/chart/view/Chart;
.source "PieChart.java"


# instance fields
.field private a:I

.field private b:F

.field private c:[F

.field private d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/xueqiu/chart/view/Chart;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, -0x5a

    iput v0, p0, Lcom/xueqiu/chart/view/PieChart;->a:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/chart/view/PieChart;->b:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/chart/view/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, -0x5a

    iput v0, p0, Lcom/xueqiu/chart/view/PieChart;->a:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/chart/view/PieChart;->b:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/chart/view/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, -0x5a

    iput v0, p0, Lcom/xueqiu/chart/view/PieChart;->a:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/chart/view/PieChart;->b:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    .line 61
    iget v0, p0, Lcom/xueqiu/chart/view/PieChart;->a:I

    int-to-float v2, v0

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 64
    const/4 v0, 0x0

    move v6, v0

    move v3, v7

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->i:Lcom/xueqiu/chart/a/a;

    .line 7020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->i:Lcom/xueqiu/chart/a/a;

    .line 8020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 65
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 66
    iget-object v4, p0, Lcom/xueqiu/chart/view/PieChart;->c:[F

    aget v4, v4, v6

    .line 67
    mul-float/2addr v4, v7

    .line 68
    iget-object v5, p0, Lcom/xueqiu/chart/view/PieChart;->i:Lcom/xueqiu/chart/a/a;

    .line 9020
    iget-object v5, v5, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 68
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v6, v5, :cond_0

    .line 69
    sub-float v8, v3, v4

    move v3, v4

    .line 73
    :goto_1
    iget-object v4, p0, Lcom/xueqiu/chart/view/PieChart;->k:Landroid/graphics/Paint;

    .line 9047
    iget v0, v0, Lcom/xueqiu/chart/a/b;->b:I

    .line 73
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/xueqiu/chart/view/PieChart;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 75
    add-float/2addr v2, v3

    .line 64
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v3, v8

    goto :goto_0

    :cond_0
    move v8, v3

    .line 71
    goto :goto_1

    .line 78
    :cond_1
    iget v0, p0, Lcom/xueqiu/chart/view/PieChart;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 79
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xueqiu/chart/view/PieChart;->b:F

    mul-float/2addr v0, v1

    .line 80
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    :cond_2
    return-void
.end method

.method protected final a(Landroid/graphics/Rect;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/xueqiu/chart/view/PieChart;->t:Landroid/graphics/Rect;

    .line 92
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 9061
    iget v0, v0, Lcom/xueqiu/chart/b/g;->k:I

    .line 92
    sget v1, Lcom/xueqiu/chart/b/i;->b:I

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 10037
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 93
    const-string v1, "AQJ"

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 10077
    iget-object v3, v3, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 11032
    iget v3, v3, Lcom/xueqiu/chart/b/j;->g:I

    .line 94
    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v5

    .line 95
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/PieChart;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 11045
    iget v3, v3, Lcom/xueqiu/chart/b/g;->h:I

    .line 95
    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v6

    .line 96
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 97
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->i:Lcom/xueqiu/chart/a/a;

    .line 12020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 12093
    iget v1, v1, Lcom/xueqiu/chart/b/g;->m:I

    .line 100
    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 13093
    iget v1, v1, Lcom/xueqiu/chart/b/g;->m:I

    .line 100
    iget-object v4, p0, Lcom/xueqiu/chart/view/PieChart;->i:Lcom/xueqiu/chart/a/a;

    .line 14020
    iget-object v4, v4, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 100
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v1, v4, :cond_3

    .line 101
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 14093
    iget v0, v0, Lcom/xueqiu/chart/b/g;->m:I

    move v1, v0

    :goto_0
    move v4, v3

    move v3, v2

    .line 103
    :goto_1
    if-ge v2, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->i:Lcom/xueqiu/chart/a/a;

    .line 15020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 105
    add-float v8, v5, v6

    iget-object v9, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 15037
    iget-object v9, v9, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 16031
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 107
    invoke-static {v9, v0}, Lcom/xueqiu/chart/c/c;->b(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v8

    .line 108
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 109
    int-to-float v0, v3

    add-float/2addr v0, v7

    float-to-int v0, v0

    .line 110
    if-lez v2, :cond_0

    .line 111
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/PieChart;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v8, p0, Lcom/xueqiu/chart/view/PieChart;->m:Lcom/xueqiu/chart/b/g;

    .line 16053
    iget v8, v8, Lcom/xueqiu/chart/b/g;->i:I

    .line 111
    int-to-float v8, v8

    invoke-static {v3, v8}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 103
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    .line 114
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    float-to-int v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->s:Landroid/graphics/Rect;

    .line 117
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method protected final a(Lcom/xueqiu/chart/a/a;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x0

    .line 1020
    iget-object v1, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 1039
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    .line 2027
    iget v0, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 50
    add-float/2addr v0, v1

    move v1, v0

    .line 51
    goto :goto_0

    .line 3020
    :cond_0
    iget-object v0, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->c:[F

    move v2, v3

    .line 4020
    :goto_1
    iget-object v0, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 5020
    iget-object v0, p1, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 55
    iget-object v4, p0, Lcom/xueqiu/chart/view/PieChart;->c:[F

    .line 5039
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 55
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    .line 6027
    iget v0, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 55
    div-float/2addr v0, v1

    aput v0, v4, v2

    .line 53
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 57
    :cond_1
    return-void
.end method

.method public getHolePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xueqiu/chart/view/PieChart;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getHolePercent()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/xueqiu/chart/view/PieChart;->b:F

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/xueqiu/chart/view/PieChart;->a:I

    return v0
.end method

.method public setHolePercent(F)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/xueqiu/chart/view/PieChart;->b:F

    .line 125
    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/xueqiu/chart/view/PieChart;->a:I

    .line 137
    return-void
.end method
