.class public Lcom/xueqiu/chart/view/LineChart;
.super Lcom/xueqiu/chart/view/BarLineChartBase;
.source "LineChart.java"


# instance fields
.field private A:Landroid/graphics/Paint;

.field public w:Z

.field private x:D

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/chart/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/xueqiu/chart/view/BarLineChartBase;-><init>(Landroid/content/Context;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/chart/view/LineChart;->x:D

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/chart/view/LineChart;->w:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->A:Landroid/graphics/Paint;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/chart/view/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/chart/view/LineChart;->x:D

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/chart/view/LineChart;->w:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->A:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/chart/view/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/chart/view/LineChart;->x:D

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/chart/view/LineChart;->w:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->A:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFLjava/lang/String;I)V
    .locals 9

    .prologue
    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 131
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 132
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    const/4 v2, 0x0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p5, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 137
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v0, v4}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v4

    .line 138
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 142
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    sub-float v5, p4, v5

    invoke-virtual {v0, p3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    sub-float v5, p3, v4

    const v6, 0x3fdd70a4    # 1.73f

    mul-float/2addr v6, v4

    sub-float v6, p4, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    sub-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    add-float v5, p3, v4

    const v6, 0x3fdd70a4    # 1.73f

    mul-float/2addr v6, v4

    sub-float v6, p4, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    sub-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    div-int/lit8 v0, v2, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    .line 150
    iget v5, p2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 151
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 154
    :cond_0
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v3

    sub-float v6, v0, v6

    const v7, 0x3fdd70a4    # 1.73f

    mul-float/2addr v7, v4

    sub-float v7, p4, v7

    mul-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    int-to-float v2, v2

    add-float/2addr v2, v0

    int-to-float v8, v3

    add-float/2addr v2, v8

    const v8, 0x3fdd70a4    # 1.73f

    mul-float/2addr v8, v4

    sub-float v8, p4, v8

    invoke-direct {v5, v6, v7, v2, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 155
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {p1, v5, v2, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 158
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    const v2, 0x3fdd70a4    # 1.73f

    mul-float/2addr v2, v4

    sub-float v2, p4, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, p5, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FF)V
    .locals 7

    .prologue
    .line 103
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 104
    const/4 v0, 0x0

    move v1, v0

    .line 7039
    :goto_0
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 8039
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    .line 107
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 9039
    iget-object v5, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 107
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 108
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 10027
    iget v6, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 108
    sub-float/2addr v6, p4

    mul-float/2addr v5, v6

    sub-float v6, p5, p4

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 109
    if-nez v1, :cond_1

    .line 110
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10043
    :goto_1
    iget-object v5, v0, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 114
    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    .line 11043
    iget-object v0, v0, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 115
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    .line 11047
    iget v1, p3, Lcom/xueqiu/chart/a/b;->b:I

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 11055
    iget v3, p3, Lcom/xueqiu/chart/a/b;->c:I

    .line 121
    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 11063
    iget-boolean v0, p3, Lcom/xueqiu/chart/a/b;->d:Z

    .line 123
    if-eqz v0, :cond_3

    .line 124
    invoke-direct/range {p0 .. p5}, Lcom/xueqiu/chart/view/LineChart;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FF)V

    .line 126
    :cond_3
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FF)V
    .locals 12

    .prologue
    .line 165
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 166
    const/4 v3, 0x0

    .line 167
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 168
    const/4 v0, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 12039
    :goto_0
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 13039
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/a/c;

    .line 170
    iget v5, p2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 14039
    iget-object v10, p3, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 170
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    div-float/2addr v6, v10

    int-to-float v10, v1

    mul-float/2addr v6, v10

    add-float/2addr v6, v5

    .line 171
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    .line 15027
    iget v11, v0, Lcom/xueqiu/chart/a/c;->a:F

    .line 171
    sub-float v11, v11, p4

    mul-float/2addr v10, v11

    sub-float v11, p5, p4

    div-float/2addr v10, v11

    sub-float/2addr v5, v10

    .line 172
    if-nez v4, :cond_0

    .line 15035
    iget-object v10, v0, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 15071
    iget-object v11, p3, Lcom/xueqiu/chart/a/b;->e:Lcom/xueqiu/chart/a/c;

    .line 16035
    iget-object v11, v11, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 172
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 173
    :cond_0
    const/4 v4, 0x1

    .line 17035
    iget-object v10, v0, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 17071
    iget-object v11, p3, Lcom/xueqiu/chart/a/b;->e:Lcom/xueqiu/chart/a/c;

    .line 18035
    iget-object v11, v11, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 174
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 175
    invoke-virtual {v9, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v5

    move v3, v6

    .line 19035
    :cond_1
    :goto_1
    iget-object v0, v0, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 19079
    iget-object v10, p3, Lcom/xueqiu/chart/a/b;->f:Lcom/xueqiu/chart/a/c;

    .line 20035
    iget-object v10, v10, Lcom/xueqiu/chart/a/c;->c:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v2

    .line 188
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    const-string v1, "#eeae00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v9, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 193
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v9, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 195
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 197
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20079
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->f:Lcom/xueqiu/chart/a/c;

    .line 21043
    iget-object v0, v0, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 199
    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    .line 21079
    iget-object v1, p3, Lcom/xueqiu/chart/a/b;->f:Lcom/xueqiu/chart/a/c;

    .line 22043
    iget-object v1, v1, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 23040
    iget v1, v1, Lcom/xueqiu/chart/b/j;->i:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 23071
    :cond_2
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->e:Lcom/xueqiu/chart/a/c;

    .line 24043
    iget-object v0, v0, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 208
    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    .line 24071
    iget-object v1, p3, Lcom/xueqiu/chart/a/b;->e:Lcom/xueqiu/chart/a/c;

    .line 25043
    iget-object v1, v1, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 26040
    iget v1, v1, Lcom/xueqiu/chart/b/j;->i:I

    .line 210
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    const-string v0, "%.2f%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getMaxDraw()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 26071
    iget-object v0, p3, Lcom/xueqiu/chart/a/b;->e:Lcom/xueqiu/chart/a/c;

    .line 27043
    iget-object v0, v0, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 28040
    iget v6, v0, Lcom/xueqiu/chart/b/j;->i:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 217
    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/chart/view/LineChart;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFLjava/lang/String;I)V

    .line 219
    :cond_3
    return-void

    .line 179
    :cond_4
    invoke-virtual {v9, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    .line 168
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    move v4, v2

    move v5, v7

    move v6, v8

    goto/16 :goto_2
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 73
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 100
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/b/j;

    .line 79
    iget-object v1, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 81
    iget-boolean v2, p0, Lcom/xueqiu/chart/view/LineChart;->w:Z

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    .line 4040
    iget v3, v0, Lcom/xueqiu/chart/b/j;->i:I

    .line 83
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v2, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    iget-object v2, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/chart/view/LineChart;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4056
    iget-object v5, v0, Lcom/xueqiu/chart/b/j;->j:Ljava/lang/String;

    .line 91
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 5040
    iget v6, v0, Lcom/xueqiu/chart/b/j;->i:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/chart/view/LineChart;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFLjava/lang/String;I)V

    .line 77
    :cond_2
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 6024
    :cond_3
    iget v2, v0, Lcom/xueqiu/chart/b/j;->f:I

    .line 93
    sget v3, Lcom/xueqiu/chart/b/k;->a:I

    if-ne v2, v3, :cond_2

    .line 94
    iget-object v2, p0, Lcom/xueqiu/chart/view/LineChart;->A:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v2, p0, Lcom/xueqiu/chart/view/LineChart;->A:Landroid/graphics/Paint;

    .line 6040
    iget v3, v0, Lcom/xueqiu/chart/b/j;->i:I

    .line 95
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/xueqiu/chart/view/LineChart;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7032
    iget v0, v0, Lcom/xueqiu/chart/b/j;->g:I

    .line 96
    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v0

    div-float/2addr v0, v8

    iget-object v3, p0, Lcom/xueqiu/chart/view/LineChart;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 50
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/chart/view/LineChart;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 51
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 52
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/xueqiu/chart/view/LineChart;->a:Lcom/xueqiu/chart/b/d;

    .line 1059
    iget v3, v3, Lcom/xueqiu/chart/b/d;->d:F

    .line 52
    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 53
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/xueqiu/chart/view/LineChart;->a:Lcom/xueqiu/chart/b/d;

    .line 1067
    iget v3, v3, Lcom/xueqiu/chart/b/d;->e:F

    .line 53
    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 54
    iget-boolean v0, p0, Lcom/xueqiu/chart/view/LineChart;->l:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->i:Lcom/xueqiu/chart/a/a;

    .line 2020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v6, v0

    :goto_0
    if-lez v6, :cond_1

    .line 56
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->i:Lcom/xueqiu/chart/a/a;

    .line 3020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 56
    add-int/lit8 v1, v6, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/chart/a/b;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/chart/view/LineChart;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FF)V

    .line 55
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/chart/view/LineChart;->i:Lcom/xueqiu/chart/a/a;

    .line 4020
    iget-object v0, v0, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/chart/a/b;

    move-object v0, p0

    move-object v1, p1

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/chart/view/LineChart;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/xueqiu/chart/a/b;FF)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/xueqiu/chart/view/LineChart;->d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 64
    return-void
.end method

.method public getMaxDraw()D
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/xueqiu/chart/view/LineChart;->x:D

    return-wide v0
.end method

.method public setMaxDraw(D)V
    .locals 1

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/xueqiu/chart/view/LineChart;->x:D

    .line 231
    return-void
.end method
