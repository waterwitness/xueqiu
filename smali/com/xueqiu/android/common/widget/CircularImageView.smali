.class public Lcom/xueqiu/android/common/widget/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Z

.field private g:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-boolean v4, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->f:Z

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->d:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->e:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget-object v0, Lcom/xueqiu/android/R$styleable;->CircularImageView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 60
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/CircularImageView;->setBorderWidth(I)V

    .line 61
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/CircularImageView;->setBorderColor(I)V

    .line 64
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v0}, Lcom/xueqiu/android/common/widget/CircularImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1082
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->f:Z

    .line 128
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/4 v5, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1176
    if-nez v0, :cond_6

    .line 1177
    const/4 v0, 0x0

    .line 88
    :goto_0
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->c:Landroid/graphics/Bitmap;

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 92
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->f:Z

    if-nez v0, :cond_2

    .line 2114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    .line 2115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    if-ge v0, v1, :cond_0

    .line 2116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    .line 2118
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CircularImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2119
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->c:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    iget v3, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->g:Landroid/graphics/BitmapShader;

    .line 2121
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->f:Z

    .line 96
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    if-ge v0, v1, :cond_3

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CircularImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->g:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    :cond_4
    iget v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    iget v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 108
    iget v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    iget v4, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v6

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    iget v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    iget v3, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v6

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    :cond_5
    return-void

    .line 1178
    :cond_6
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_7

    .line 1179
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 1182
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1183
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1182
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1184
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1185
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1186
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 1188
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    .line 132
    .line 2139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2142
    if-ne v1, v4, :cond_2

    .line 2158
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2159
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2161
    if-ne v2, v4, :cond_3

    .line 2172
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/CircularImageView;->setMeasuredDimension(II)V

    .line 135
    return-void

    .line 2145
    :cond_2
    if-eq v1, v3, :cond_0

    .line 2150
    iget v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    goto :goto_0

    .line 2164
    :cond_3
    if-eq v2, v3, :cond_1

    .line 2169
    iget v1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->b:I

    goto :goto_1
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CircularImageView;->invalidate()V

    .line 78
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/xueqiu/android/common/widget/CircularImageView;->a:I

    .line 70
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CircularImageView;->requestLayout()V

    .line 71
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/CircularImageView;->invalidate()V

    .line 72
    return-void
.end method
