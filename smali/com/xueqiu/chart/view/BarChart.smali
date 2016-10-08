.class public Lcom/xueqiu/chart/view/BarChart;
.super Lcom/xueqiu/chart/view/BarLineChartBase;
.source "BarChart.java"


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/xueqiu/chart/view/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 22
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->w:F

    .line 24
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    .line 26
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->z:Landroid/graphics/PointF;

    .line 30
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->A:F

    .line 32
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->B:F

    .line 34
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->C:F

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/chart/view/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->w:F

    .line 24
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    .line 26
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->z:Landroid/graphics/PointF;

    .line 30
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->A:F

    .line 32
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->B:F

    .line 34
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->C:F

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/chart/view/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->w:F

    .line 24
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    .line 26
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->z:Landroid/graphics/PointF;

    .line 30
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->A:F

    .line 32
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->B:F

    .line 34
    iput v1, p0, Lcom/xueqiu/chart/view/BarChart;->C:F

    .line 46
    return-void
.end method

.method private a(FIII)F
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getBarWidth()F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p3

    mul-float/2addr v0, v1

    .line 176
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getGroupSpace()F

    move-result v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    .line 178
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getBarSpace()F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    .line 180
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getBarSpace()F

    move-result v3

    int-to-float v4, p4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getBarWidth()F

    move-result v4

    int-to-float v5, p4

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 181
    sub-float v0, p1, v0

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    add-float/2addr v0, v1

    return v0
.end method

.method private a(FF)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->z:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 130
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FFI)V
    .locals 7

    .prologue
    .line 69
    const/4 v0, 0x0

    move v6, v0

    .line 7039
    :goto_0
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 8039
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 70
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    .line 71
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 9020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v6, v2, p6}, Lcom/xueqiu/chart/view/BarChart;->a(FIII)F

    move-result v3

    .line 72
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getBarWidth()F

    move-result v1

    sub-float v1, v3, v1

    .line 9027
    iget v2, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 74
    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 75
    iget v4, p0, Lcom/xueqiu/chart/view/BarChart;->w:F

    .line 76
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 10027
    iget v0, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 76
    sub-float/2addr v0, p4

    mul-float/2addr v0, v5

    sub-float v5, p5, p4

    div-float/2addr v0, v5

    sub-float/2addr v2, v0

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->h:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->h:Landroid/graphics/Paint;

    .line 11047
    iget v5, p3, Lcom/xueqiu/chart/a/b;->b:I

    .line 83
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v5, p0, Lcom/xueqiu/chart/view/BarChart;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 78
    :cond_0
    iget v2, p0, Lcom/xueqiu/chart/view/BarChart;->w:F

    .line 79
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 11027
    iget v0, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 79
    sub-float/2addr v0, p4

    mul-float/2addr v0, v5

    sub-float v5, p5, p4

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    goto :goto_1

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/high16 v5, 0x42600000    # 56.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 50
    move v1, v3

    .line 1151
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    .line 1153
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/xueqiu/chart/view/BarChart;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/xueqiu/chart/view/BarChart;->w:F

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 2020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 1158
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    .line 2039
    iget-object v0, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 1158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1160
    const/4 v1, 0x6

    if-le v0, v1, :cond_3

    .line 1161
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    add-int/lit8 v0, v0, -0x6

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getBarWidth()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    .line 1166
    :goto_1
    iget v0, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 1167
    iget v0, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    iput v0, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 52
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/chart/view/BarChart;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 54
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, p0, Lcom/xueqiu/chart/view/BarChart;->a:Lcom/xueqiu/chart/b/d;

    .line 2059
    iget v6, v6, Lcom/xueqiu/chart/b/d;->d:F

    .line 54
    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 55
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, p0, Lcom/xueqiu/chart/view/BarChart;->a:Lcom/xueqiu/chart/b/d;

    .line 2067
    iget v6, v6, Lcom/xueqiu/chart/b/d;->e:F

    .line 55
    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 56
    iget-boolean v0, p0, Lcom/xueqiu/chart/view/BarChart;->l:Z

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 3020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v7, v0

    :goto_2
    if-lez v7, :cond_5

    .line 58
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 4020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 58
    add-int/lit8 v1, v7, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/chart/a/b;

    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 5020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/chart/view/BarChart;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FFI)V

    .line 57
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    .line 1151
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 1163
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    add-int/lit8 v0, v0, -0x6

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    goto/16 :goto_1

    :cond_4
    move v6, v3

    .line 61
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 6020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 7020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 62
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/chart/a/b;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/chart/view/BarChart;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FFI)V

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 65
    :cond_5
    return-void
.end method

.method protected final b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->n:Lcom/xueqiu/chart/b/e;

    .line 12034
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 91
    const-string v2, "A"

    invoke-static {v0, v2}, Lcom/xueqiu/chart/c/c;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    .line 92
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 93
    iget v0, v4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarChart;->a:Lcom/xueqiu/chart/b/d;

    .line 12059
    iget v5, v5, Lcom/xueqiu/chart/b/d;->d:F

    .line 93
    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 94
    iget v0, v4, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarChart;->a:Lcom/xueqiu/chart/b/d;

    .line 12067
    iget v5, v5, Lcom/xueqiu/chart/b/d;->e:F

    .line 94
    mul-float/2addr v2, v5

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 95
    iget-object v0, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 13020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/b;

    move v2, v1

    .line 13039
    :goto_0
    iget-object v1, v0, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 97
    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v5, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 14020
    iget-object v5, v5, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 97
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/xueqiu/chart/view/BarChart;->i:Lcom/xueqiu/chart/a/a;

    .line 15020
    iget-object v6, v6, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 97
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/xueqiu/chart/view/BarChart;->a(FIII)F

    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->getBarWidth()F

    move-result v5

    sub-float v5, v1, v5

    .line 99
    iget-object v1, p0, Lcom/xueqiu/chart/view/BarChart;->h:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v1, p0, Lcom/xueqiu/chart/view/BarChart;->h:Landroid/graphics/Paint;

    .line 15047
    iget v6, v0, Lcom/xueqiu/chart/a/b;->b:I

    .line 100
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v1, p0, Lcom/xueqiu/chart/view/BarChart;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/xueqiu/chart/view/BarChart;->n:Lcom/xueqiu/chart/b/e;

    .line 16034
    iget-object v7, v7, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 103
    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 96
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public getBarSpace()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/xueqiu/chart/view/BarChart;->A:F

    return v0
.end method

.method public getBarWidth()F
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/xueqiu/chart/view/BarChart;->C:F

    return v0
.end method

.method public getGroupSpace()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/xueqiu/chart/view/BarChart;->B:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 16133
    :pswitch_1
    iget v2, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    iget-object v3, p0, Lcom/xueqiu/chart/view/BarChart;->z:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v0, v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    .line 16135
    iget v2, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 16136
    iput v5, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    .line 16140
    :cond_0
    iget v2, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    iget v3, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 16141
    iget v2, p0, Lcom/xueqiu/chart/view/BarChart;->y:F

    iput v2, p0, Lcom/xueqiu/chart/view/BarChart;->x:F

    .line 16144
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/xueqiu/chart/view/BarChart;->a(FF)V

    .line 16145
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/BarChart;->invalidate()V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/xueqiu/chart/view/BarChart;->a(FF)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBarSpace(F)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/xueqiu/chart/view/BarChart;->A:F

    .line 190
    return-void
.end method

.method public setBarWidth(F)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/xueqiu/chart/view/BarChart;->C:F

    .line 206
    return-void
.end method

.method public setGroupSpace(F)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/xueqiu/chart/view/BarChart;->B:F

    .line 198
    return-void
.end method
