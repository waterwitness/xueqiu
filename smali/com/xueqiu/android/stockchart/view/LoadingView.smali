.class public Lcom/xueqiu/android/stockchart/view/LoadingView;
.super Lcom/xueqiu/android/stockchart/view/BaseView;
.source "LoadingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 31
    invoke-super {p0, p1}, Lcom/xueqiu/android/stockchart/view/BaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 33
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/LoadingView;->getViewWidth()F

    move-result v0

    div-float v6, v0, v2

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/LoadingView;->getViewHeight()F

    move-result v0

    div-float v7, v0, v2

    .line 42
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/LoadingView;->getBorderLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 44
    sub-float v2, v7, v4

    .line 45
    sub-float v1, v6, v3

    .line 46
    add-float/2addr v3, v6

    .line 47
    add-float/2addr v4, v7

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v8, p0, Lcom/xueqiu/android/stockchart/view/LoadingView;->a:Landroid/content/res/TypedArray;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v0, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/LoadingView;->a:Landroid/content/res/TypedArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    const-string v0, "\u6570\u636e\u52a0\u8f7d\u4e2d..."

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    return-void
.end method
