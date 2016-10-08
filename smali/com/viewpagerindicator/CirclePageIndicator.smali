.class public Lcom/viewpagerindicator/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/viewpagerindicator/e;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/cp;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/viewpagerindicator/g;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/viewpagerindicator/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 62
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 77
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    sget v1, Lcom/viewpagerindicator/i;->default_circle_indicator_page_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 82
    sget v2, Lcom/viewpagerindicator/i;->default_circle_indicator_fill_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 83
    sget v3, Lcom/viewpagerindicator/k;->default_circle_indicator_orientation:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 84
    sget v4, Lcom/viewpagerindicator/i;->default_circle_indicator_stroke_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 85
    sget v5, Lcom/viewpagerindicator/j;->default_circle_indicator_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 86
    sget v5, Lcom/viewpagerindicator/j;->default_circle_indicator_radius:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 87
    sget v6, Lcom/viewpagerindicator/h;->default_circle_indicator_centered:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 88
    sget v7, Lcom/viewpagerindicator/h;->default_circle_indicator_snap:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 91
    sget-object v7, Lcom/viewpagerindicator/l;->CirclePageIndicator:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 93
    sget v8, Lcom/viewpagerindicator/l;->CirclePageIndicator_centered:I

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:Z

    .line 94
    sget v6, Lcom/viewpagerindicator/l;->CirclePageIndicator_android_orientation:I

    invoke-virtual {v7, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    .line 95
    iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    sget v6, Lcom/viewpagerindicator/l;->CirclePageIndicator_pageColor:I

    invoke-virtual {v7, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    sget v3, Lcom/viewpagerindicator/l;->CirclePageIndicator_strokeColor:I

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget v3, Lcom/viewpagerindicator/l;->CirclePageIndicator_fillColor:I

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget v1, Lcom/viewpagerindicator/l;->CirclePageIndicator_radius:I

    invoke-virtual {v7, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    .line 103
    sget v1, Lcom/viewpagerindicator/l;->CirclePageIndicator_snap:I

    invoke-virtual {v7, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    .line 105
    sget v0, Lcom/viewpagerindicator/l;->CirclePageIndicator_android_background:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/support/v4/view/bx;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    goto/16 :goto_0
.end method

.method private c(I)I
    .locals 6

    .prologue
    .line 462
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 463
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 465
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 478
    :cond_1
    :goto_0
    return v0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->b()I

    move-result v0

    .line 471
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 474
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 475
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private d(I)I
    .locals 4

    .prologue
    .line 490
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 491
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 493
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 504
    :goto_0
    return v0

    .line 498
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 500
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 501
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(IFI)V
    .locals 1

    .prologue
    .line 412
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 413
    iput p2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:F

    .line 414
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 416
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/cp;->a(IFI)V

    .line 419
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 403
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    .line 405
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cp;->b(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public final b_(I)V
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->j:I

    if-nez v0, :cond_1

    .line 424
    :cond_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 425
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I

    .line 426
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/cp;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/cp;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cp;->b_(I)V

    .line 432
    :cond_2
    return-void
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 199
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->b()I

    move-result v6

    .line 205
    if-eqz v6, :cond_0

    .line 209
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    if-lt v0, v6, :cond_2

    .line 210
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 218
    :cond_2
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v0, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 220
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 221
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 222
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 230
    :goto_1
    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v7, v4, v5

    .line 231
    int-to-float v0, v0

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    add-float/2addr v4, v0

    .line 232
    int-to-float v0, v2

    iget v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    add-float/2addr v0, v5

    .line 233
    iget-boolean v5, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:Z

    if-eqz v5, :cond_3

    .line 234
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 240
    :cond_3
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    .line 241
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 242
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 246
    :cond_4
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v6, :cond_9

    .line 247
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 248
    iget v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v3, :cond_8

    move v3, v2

    move v2, v4

    .line 256
    :goto_3
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_5

    .line 257
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    :cond_5
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_6

    .line 262
    iget-object v8, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 246
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 224
    :cond_7
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 225
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 226
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 227
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_8
    move v3, v4

    .line 252
    goto :goto_3

    .line 267
    :cond_9
    iget-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I

    :goto_4
    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 268
    iget-boolean v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    if-nez v2, :cond_a

    .line 269
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->i:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 271
    :cond_a
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v2, :cond_c

    .line 272
    add-float/2addr v0, v1

    .line 278
    :goto_5
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 267
    :cond_b
    iget v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    goto :goto_4

    .line 276
    :cond_c
    add-float/2addr v0, v1

    move v9, v0

    move v0, v4

    move v4, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 446
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->c(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->d(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-direct {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator;->d(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/viewpagerindicator/CirclePageIndicator;->c(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 509
    check-cast p1, Lcom/viewpagerindicator/a;

    .line 510
    invoke-virtual {p1}, Lcom/viewpagerindicator/a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 511
    iget v0, p1, Lcom/viewpagerindicator/a;->a:I

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 512
    iget v0, p1, Lcom/viewpagerindicator/a;->a:I

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->h:I

    .line 513
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 514
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 519
    new-instance v1, Lcom/viewpagerindicator/a;

    invoke-direct {v1, v0}, Lcom/viewpagerindicator/a;-><init>(Landroid/os/Parcelable;)V

    .line 520
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/viewpagerindicator/a;->a:I

    .line 521
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 282
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/bd;->b()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 286
    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 290
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 292
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/at;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    goto :goto_0

    .line 297
    :pswitch_2
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/at;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 298
    invoke-static {p1, v0}, Landroid/support/v4/view/at;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 299
    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    sub-float v2, v0, v2

    .line 301
    iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    if-nez v3, :cond_4

    .line 302
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->n:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 303
    iput-boolean v1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    .line 307
    :cond_4
    iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    if-eqz v3, :cond_0

    .line 308
    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    .line 309
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 3471
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->a:Z

    .line 309
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(F)V

    goto :goto_0

    .line 319
    :pswitch_3
    iget-boolean v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    if-nez v3, :cond_7

    .line 320
    iget-object v3, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/bd;->b()I

    move-result v3

    .line 321
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->getWidth()I

    move-result v4

    .line 322
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 323
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 325
    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 326
    if-eq v2, v8, :cond_0

    .line 327
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 330
    :cond_6
    iget v6, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 331
    if-eq v2, v8, :cond_0

    .line 332
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 338
    :cond_7
    iput-boolean v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->q:Z

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 340
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 4471
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->a:Z

    .line 340
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->e()V

    goto/16 :goto_0

    .line 344
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/at;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 345
    invoke-static {p1, v0}, Landroid/support/v4/view/at;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    .line 346
    invoke-static {p1, v0}, Landroid/support/v4/view/at;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    goto/16 :goto_0

    .line 351
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/at;->b(Landroid/view/MotionEvent;)I

    move-result v2

    .line 352
    invoke-static {p1, v2}, Landroid/support/v4/view/at;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 353
    iget v4, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    if-ne v3, v4, :cond_9

    .line 354
    if-nez v2, :cond_8

    move v0, v1

    .line 355
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/at;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    .line 357
    :cond_9
    iget v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->p:I

    invoke-static {p1, v0}, Landroid/support/v4/view/at;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/at;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->o:F

    goto/16 :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->l:Z

    .line 119
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 120
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 392
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->g:I

    .line 393
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 394
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 138
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/cp;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->f:Landroid/support/v4/view/cp;

    .line 437
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_0
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->k:I

    .line 149
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->requestLayout()V

    .line 150
    return-void

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 129
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->a:F

    .line 181
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 182
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->m:Z

    .line 190
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 191
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 164
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    .line 173
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_2
    iput-object p1, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 376
    iget-object v0, p0, Lcom/viewpagerindicator/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 377
    invoke-virtual {p0}, Lcom/viewpagerindicator/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method
