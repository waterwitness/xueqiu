.class public abstract Lcom/xueqiu/chart/view/Chart;
.super Landroid/widget/FrameLayout;
.source "Chart.java"


# instance fields
.field private a:Z

.field protected i:Lcom/xueqiu/chart/a/a;

.field protected j:Ljava/lang/String;

.field protected k:Landroid/graphics/Paint;

.field protected l:Z

.field protected m:Lcom/xueqiu/chart/b/g;

.field protected n:Lcom/xueqiu/chart/b/e;

.field protected o:Lcom/xueqiu/chart/b/e;

.field protected p:Lcom/xueqiu/chart/b/e;

.field protected q:Lcom/xueqiu/chart/b/a;

.field protected r:Landroid/graphics/Rect;

.field protected s:Landroid/graphics/Rect;

.field protected t:Landroid/graphics/Rect;

.field protected u:Landroid/graphics/Rect;

.field protected v:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v0, "Empty"

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->j:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->k:Landroid/graphics/Paint;

    .line 53
    iput-boolean v2, p0, Lcom/xueqiu/chart/view/Chart;->l:Z

    .line 61
    new-instance v0, Lcom/xueqiu/chart/b/e;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/e;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->r:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->s:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->t:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->u:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->v:Landroid/graphics/Rect;

    .line 75
    iput-boolean v2, p0, Lcom/xueqiu/chart/view/Chart;->a:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const-string v0, "Empty"

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->j:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->k:Landroid/graphics/Paint;

    .line 53
    iput-boolean v2, p0, Lcom/xueqiu/chart/view/Chart;->l:Z

    .line 61
    new-instance v0, Lcom/xueqiu/chart/b/e;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/e;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->r:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->s:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->t:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->u:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->v:Landroid/graphics/Rect;

    .line 75
    iput-boolean v2, p0, Lcom/xueqiu/chart/view/Chart;->a:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v0, "Empty"

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->j:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->k:Landroid/graphics/Paint;

    .line 53
    iput-boolean v2, p0, Lcom/xueqiu/chart/view/Chart;->l:Z

    .line 61
    new-instance v0, Lcom/xueqiu/chart/b/e;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/e;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->r:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->s:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->t:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->u:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->v:Landroid/graphics/Rect;

    .line 75
    iput-boolean v2, p0, Lcom/xueqiu/chart/view/Chart;->a:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method protected abstract a(Landroid/graphics/Rect;)V
.end method

.method protected abstract a(Lcom/xueqiu/chart/a/a;)V
.end method

.method protected b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 116
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 1020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 118
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 2020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :cond_0
    const-string v2, "Chart"

    const-string v3, "must contains at least 1 data series."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->r:Landroid/graphics/Rect;

    .line 2274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 3034
    iget-object v3, v3, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 2274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 2275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->j:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 2276
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 4034
    iget-object v5, v5, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 2276
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 5034
    iget-object v5, v5, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 2275
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5220
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 125
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xueqiu/chart/view/Chart;->a:Z

    if-nez v2, :cond_3

    .line 126
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/xueqiu/chart/view/Chart;->a:Z

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/view/Chart;->a(Lcom/xueqiu/chart/a/a;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->r:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/view/Chart;->a(Landroid/graphics/Rect;)V

    .line 132
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->u:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/chart/view/Chart;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->v:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/chart/view/Chart;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->t:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/chart/view/Chart;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xueqiu/chart/view/Chart;->s:Landroid/graphics/Rect;

    .line 5139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 6077
    iget-object v13, v2, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 5140
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 7032
    iget v3, v13, Lcom/xueqiu/chart/b/j;->g:I

    .line 5140
    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v14

    .line 5141
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 7077
    iget-object v3, v3, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 8048
    iget v3, v3, Lcom/xueqiu/chart/b/j;->h:I

    .line 5141
    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v15

    .line 5142
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 9045
    iget v3, v3, Lcom/xueqiu/chart/b/g;->h:I

    .line 5142
    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v16

    .line 5143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 10037
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 5143
    const-string v3, "AQJ"

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v17

    .line 5144
    sget-object v2, Lcom/xueqiu/chart/view/Chart$1;->b:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 10069
    iget v3, v3, Lcom/xueqiu/chart/b/g;->l:I

    .line 5144
    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 5146
    :pswitch_1
    sget-object v2, Lcom/xueqiu/chart/view/Chart$1;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v3}, Lcom/xueqiu/chart/b/g;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 5148
    :pswitch_2
    const/4 v3, 0x0

    .line 5149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 11020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5149
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 11093
    iget v4, v4, Lcom/xueqiu/chart/b/g;->m:I

    .line 5150
    if-ltz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 12093
    iget v4, v4, Lcom/xueqiu/chart/b/g;->m:I

    .line 5150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 13020
    iget-object v5, v5, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5150
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 5151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 13093
    iget v2, v2, Lcom/xueqiu/chart/b/g;->m:I

    move v9, v2

    .line 5153
    :goto_1
    const/4 v2, 0x0

    move v10, v2

    move v11, v3

    :goto_2
    if-ge v10, v9, :cond_1

    .line 5154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 14020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5154
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/xueqiu/chart/a/b;

    .line 5155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 14085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 15047
    iget v3, v8, Lcom/xueqiu/chart/a/b;->b:I

    .line 5155
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 15077
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 16024
    iget v2, v2, Lcom/xueqiu/chart/b/j;->f:I

    .line 5156
    sget v3, Lcom/xueqiu/chart/b/k;->a:I

    if-ne v2, v3, :cond_4

    .line 5157
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    add-float/2addr v2, v3

    .line 5158
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 16085
    iget-object v5, v5, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5157
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5167
    :goto_3
    add-float v2, v11, v14

    .line 5168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 20037
    iget-object v3, v3, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 21031
    iget-object v4, v8, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 5168
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 5169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 21045
    iget v4, v4, Lcom/xueqiu/chart/b/g;->h:I

    .line 5169
    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 22031
    iget-object v4, v8, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 5170
    iget v5, v12, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 5171
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v17, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v7}, Lcom/xueqiu/chart/b/g;->b()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 22037
    iget-object v7, v7, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 5170
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5172
    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 5173
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 22053
    iget v4, v4, Lcom/xueqiu/chart/b/g;->i:I

    .line 5173
    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v3, v2

    .line 5153
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    goto/16 :goto_2

    .line 5161
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 17085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5161
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 18085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5162
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5163
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v3, v2, v11

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    add-float v5, v2, v14

    .line 5164
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 19085
    iget-object v7, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 5163
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 5179
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getWidth()I

    move-result v6

    .line 5180
    const/4 v4, 0x0

    .line 5181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 23020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5181
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 5183
    const/4 v2, 0x0

    move v5, v4

    move v4, v2

    :goto_4
    if-ge v4, v3, :cond_5

    .line 5184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 24020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5184
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/chart/a/b;

    .line 5185
    int-to-float v5, v5

    add-float/2addr v5, v14

    float-to-int v5, v5

    .line 5186
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 24037
    iget-object v7, v7, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 25031
    iget-object v2, v2, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 5186
    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 5187
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 25045
    iget v7, v7, Lcom/xueqiu/chart/b/g;->h:I

    .line 5187
    add-int/2addr v5, v7

    .line 5188
    add-int/2addr v2, v5

    .line 5189
    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 25053
    iget v7, v7, Lcom/xueqiu/chart/b/g;->i:I

    .line 5189
    int-to-float v7, v7

    invoke-static {v5, v7}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v5

    add-float/2addr v2, v5

    float-to-int v5, v2

    .line 5183
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 5192
    :cond_5
    sub-int v2, v6, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 26045
    iget v4, v4, Lcom/xueqiu/chart/b/g;->h:I

    .line 5192
    add-int/2addr v2, v4

    int-to-float v2, v2

    add-float v4, v2, v14

    .line 5193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 26093
    iget v2, v2, Lcom/xueqiu/chart/b/g;->m:I

    .line 5193
    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 27093
    iget v2, v2, Lcom/xueqiu/chart/b/g;->m:I

    .line 5193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 28020
    iget-object v5, v5, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5193
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v2, v5, :cond_9

    .line 5194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 28093
    iget v2, v2, Lcom/xueqiu/chart/b/g;->m:I

    move v9, v2

    .line 5196
    :goto_5
    const/4 v2, 0x0

    move v10, v4

    move v11, v2

    :goto_6
    if-ge v11, v9, :cond_1

    .line 5197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 29020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5197
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/xueqiu/chart/a/b;

    .line 5198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 29085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 30047
    iget v3, v8, Lcom/xueqiu/chart/a/b;->b:I

    .line 5198
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 30077
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 31024
    iget v2, v2, Lcom/xueqiu/chart/b/j;->f:I

    .line 5199
    sget v3, Lcom/xueqiu/chart/b/k;->a:I

    if-ne v2, v3, :cond_6

    .line 5200
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    add-float/2addr v2, v3

    .line 5201
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v4}, Lcom/xueqiu/chart/b/g;->b()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 31085
    iget-object v5, v5, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5200
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5210
    :goto_7
    add-float v2, v10, v14

    .line 5211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 35037
    iget-object v3, v3, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 36031
    iget-object v4, v8, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 5211
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 5212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 36045
    iget v4, v4, Lcom/xueqiu/chart/b/g;->h:I

    .line 5212
    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 37031
    iget-object v4, v8, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 5213
    iget v5, v12, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 5214
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v17, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v7}, Lcom/xueqiu/chart/b/g;->b()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 37037
    iget-object v7, v7, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 5213
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5215
    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 5216
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 37053
    iget v4, v4, Lcom/xueqiu/chart/b/g;->i:I

    .line 5216
    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 5196
    add-int/lit8 v3, v11, 0x1

    move v10, v2

    move v11, v3

    goto/16 :goto_6

    .line 5204
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 32085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5204
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 33085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5205
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5206
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float v3, v2, v10

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v4}, Lcom/xueqiu/chart/b/g;->b()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v10

    add-float v5, v2, v14

    .line 5207
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v6}, Lcom/xueqiu/chart/b/g;->b()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 34085
    iget-object v7, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 5206
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 5222
    :pswitch_4
    sget-object v2, Lcom/xueqiu/chart/view/Chart$1;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    invoke-virtual {v3}, Lcom/xueqiu/chart/b/g;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    .line 5224
    :pswitch_5
    move/from16 v0, v17

    invoke-static {v0, v14}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 5225
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 38053
    iget v3, v3, Lcom/xueqiu/chart/b/g;->i:I

    .line 5225
    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v19

    .line 5227
    const/4 v3, 0x0

    .line 5228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 39020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5228
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 39093
    iget v4, v4, Lcom/xueqiu/chart/b/g;->m:I

    .line 5229
    if-ltz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 40093
    iget v4, v4, Lcom/xueqiu/chart/b/g;->m:I

    .line 5229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 41020
    iget-object v5, v5, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5229
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_8

    .line 5230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 41093
    iget v2, v2, Lcom/xueqiu/chart/b/g;->m:I

    move v9, v2

    .line 5232
    :goto_8
    const/4 v2, 0x0

    move v10, v2

    move v11, v3

    :goto_9
    if-ge v10, v9, :cond_1

    .line 5233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 42020
    iget-object v2, v2, Lcom/xueqiu/chart/a/a;->a:Ljava/util/List;

    .line 5233
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/xueqiu/chart/a/b;

    .line 5234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 42085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 43047
    iget v3, v8, Lcom/xueqiu/chart/a/b;->b:I

    .line 5234
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 43085
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5235
    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 44077
    iget-object v2, v2, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 45024
    iget v2, v2, Lcom/xueqiu/chart/b/j;->f:I

    .line 5236
    sget v3, Lcom/xueqiu/chart/b/k;->a:I

    if-ne v2, v3, :cond_7

    .line 5237
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    add-float/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v11

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 45085
    iget-object v5, v5, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    .line 5237
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47031
    :goto_a
    iget-object v2, v8, Lcom/xueqiu/chart/a/b;->a:Ljava/lang/String;

    .line 5247
    iget v3, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    add-float v3, v3, v16

    iget v4, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v11

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v18, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v17, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 47037
    iget-object v5, v5, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 5247
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5249
    int-to-float v2, v11

    add-float v3, v18, v19

    add-float/2addr v2, v3

    float-to-int v3, v2

    .line 5232
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    goto :goto_9

    .line 5241
    :cond_7
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v18, v4

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v15, v4

    sub-float v4, v2, v4

    iget v2, v12, Landroid/graphics/Rect;->left:I

    .line 46032
    iget v5, v13, Lcom/xueqiu/chart/b/j;->g:I

    .line 5243
    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v18, v6

    add-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v15, v6

    sub-float v6, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 46085
    iget-object v7, v2, Lcom/xueqiu/chart/b/g;->g:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 5241
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_8
    move v9, v2

    goto/16 :goto_8

    :cond_9
    move v9, v3

    goto/16 :goto_5

    :cond_a
    move v9, v2

    goto/16 :goto_1

    .line 5144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 5146
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 5222
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public getData()Lcom/xueqiu/chart/a/a;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    return-object v0
.end method

.method public getEmptyDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getEmptyLabel()Lcom/xueqiu/chart/b/e;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    return-object v0
.end method

.method public getLegend()Lcom/xueqiu/chart/b/g;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    return-object v0
.end method

.method public getSeriesPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->k:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getXLabel()Lcom/xueqiu/chart/b/e;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->n:Lcom/xueqiu/chart/b/e;

    return-object v0
.end method

.method public getYLabel()Lcom/xueqiu/chart/b/e;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->o:Lcom/xueqiu/chart/b/e;

    return-object v0
.end method

.method public setData(Lcom/xueqiu/chart/a/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/high16 v2, 0x41200000    # 10.0f

    .line 286
    iput-object p1, p0, Lcom/xueqiu/chart/view/Chart;->i:Lcom/xueqiu/chart/a/a;

    .line 47086
    new-instance v0, Lcom/xueqiu/chart/b/g;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/g;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 47087
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 48077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 49036
    const/16 v1, 0xa

    iput v1, v0, Lcom/xueqiu/chart/b/j;->g:I

    .line 47088
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 49077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 50052
    iput v3, v0, Lcom/xueqiu/chart/b/j;->h:I

    .line 47089
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 50054
    iput v3, v0, Lcom/xueqiu/chart/b/g;->h:I

    .line 47090
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 50056
    const/16 v1, 0x14

    iput v1, v0, Lcom/xueqiu/chart/b/g;->i:I

    .line 47091
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 50058
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 47091
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 47092
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->m:Lcom/xueqiu/chart/b/g;

    .line 50059
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->f:Landroid/text/TextPaint;

    .line 47092
    sget v1, Lcom/xueqiu/chart/c/c;->a:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 50060
    new-instance v0, Lcom/xueqiu/chart/b/e;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/e;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->n:Lcom/xueqiu/chart/b/e;

    .line 50061
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->n:Lcom/xueqiu/chart/b/e;

    .line 50071
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 50061
    sget v1, Lcom/xueqiu/chart/c/c;->a:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 50062
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->n:Lcom/xueqiu/chart/b/e;

    .line 50072
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 50062
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50063
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->n:Lcom/xueqiu/chart/b/e;

    sget v1, Lcom/xueqiu/chart/b/f;->b:I

    .line 50073
    iput v1, v0, Lcom/xueqiu/chart/b/e;->g:I

    .line 50064
    new-instance v0, Lcom/xueqiu/chart/b/e;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/e;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->o:Lcom/xueqiu/chart/b/e;

    .line 50065
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->o:Lcom/xueqiu/chart/b/e;

    .line 50075
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 50065
    sget v1, Lcom/xueqiu/chart/c/c;->a:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 50066
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->o:Lcom/xueqiu/chart/b/e;

    .line 50076
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 50066
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50067
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->o:Lcom/xueqiu/chart/b/e;

    sget v1, Lcom/xueqiu/chart/b/f;->a:I

    .line 50077
    iput v1, v0, Lcom/xueqiu/chart/b/e;->g:I

    .line 50068
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 50079
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 50068
    sget v1, Lcom/xueqiu/chart/c/c;->a:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 50069
    iget-object v0, p0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 50080
    iget-object v0, v0, Lcom/xueqiu/chart/b/e;->f:Landroid/text/TextPaint;

    .line 50069
    invoke-virtual {p0}, Lcom/xueqiu/chart/view/Chart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xueqiu/chart/c/c;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50081
    new-instance v0, Lcom/xueqiu/chart/b/a;

    invoke-direct {v0}, Lcom/xueqiu/chart/b/a;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/chart/view/Chart;->q:Lcom/xueqiu/chart/b/a;

    .line 47082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/chart/view/Chart;->a:Z

    .line 288
    return-void
.end method

.method public setEmptyDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/xueqiu/chart/view/Chart;->j:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setEmptyLabel(Lcom/xueqiu/chart/b/e;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/xueqiu/chart/view/Chart;->p:Lcom/xueqiu/chart/b/e;

    .line 316
    return-void
.end method

.method public setReverseDrawing(Z)V
    .locals 0

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/xueqiu/chart/view/Chart;->l:Z

    .line 328
    return-void
.end method
