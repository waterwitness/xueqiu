.class public Lcom/xueqiu/android/common/widget/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SwitchButton.java"


# static fields
.field private static a:[I

.field private static b:[I


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Landroid/animation/ObjectAnimator;

.field private F:F

.field private G:Landroid/graphics/RectF;

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:I

.field private M:Landroid/graphics/Paint;

.field private N:Ljava/lang/CharSequence;

.field private O:Ljava/lang/CharSequence;

.field private P:Landroid/text/TextPaint;

.field private Q:Landroid/text/Layout;

.field private R:Landroid/text/Layout;

.field private S:F

.field private T:F

.field private U:F

.field private V:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/res/ColorStateList;

.field private g:F

.field private h:F

.field private i:Landroid/graphics/RectF;

.field private j:F

.field private k:J

.field private l:Z

.field private m:I

.field private n:Landroid/graphics/PointF;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/RectF;

.field private w:Landroid/graphics/RectF;

.field private x:Landroid/graphics/RectF;

.field private y:Landroid/graphics/RectF;

.field private z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xueqiu/android/common/widget/SwitchButton;->a:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xueqiu/android/common/widget/SwitchButton;->b:[I

    return-void

    .line 48
    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    .line 49
    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->D:Z

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->D:Z

    .line 96
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->D:Z

    .line 91
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .prologue
    .line 234
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->P:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->P:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private a()V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v0, v3

    .line 326
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    .line 328
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    if-eqz v4, :cond_0

    .line 329
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    cmpl-float v4, v4, v11

    if-lez v4, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v12

    .line 332
    add-float/2addr v0, v4

    .line 336
    :cond_0
    iget-boolean v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    if-eqz v4, :cond_1

    .line 337
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 338
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 341
    :cond_1
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v0

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 343
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    .line 344
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->j:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->S:F

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->S:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v12

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 345
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->T:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v12

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 346
    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    add-float v6, v0, v3

    iget-object v7, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v4

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->j:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget v10, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->S:F

    add-float/2addr v9, v10

    .line 348
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-float/2addr v0, v8

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v8

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v8

    sub-float/2addr v3, v4

    .line 346
    invoke-virtual {v5, v6, v7, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->x:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v11, v4, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 353
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v12

    .line 354
    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    .line 5318
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 357
    iget-object v6, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    .line 6318
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 357
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v12

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->U:F

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 362
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v12

    add-float/2addr v3, v4

    .line 363
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->y:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v12

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->U:F

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v11

    if-lez v4, :cond_6

    :goto_1
    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 368
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v12

    add-float/2addr v1, v2

    .line 369
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->z:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 371
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 361
    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 367
    goto :goto_1
.end method

.method private a(FF)V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 783
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a()V

    .line 784
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->requestLayout()V

    .line 785
    return-void
.end method

.method private a(FFFF)V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 778
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->requestLayout()V

    .line 779
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 25

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->K:I

    .line 106
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->L:I

    .line 108
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    .line 109
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->P:Landroid/text/TextPaint;

    .line 115
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    .line 116
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    .line 117
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->x:Landroid/graphics/RectF;

    .line 118
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    .line 119
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    .line 120
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->y:Landroid/graphics/RectF;

    .line 121
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->z:Landroid/graphics/RectF;

    .line 123
    const-string v4, "process"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 129
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    .line 131
    const/16 v20, 0x0

    .line 132
    const/16 v19, 0x0

    .line 133
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 134
    const/16 v18, 0x0

    .line 135
    const/16 v17, 0x0

    .line 136
    const/16 v16, 0x0

    .line 137
    const/4 v15, 0x0

    .line 138
    const/high16 v6, 0x41a00000    # 20.0f

    mul-float v14, v5, v6

    .line 140
    const/high16 v5, 0x40000000    # 2.0f

    div-float v13, v14, v5

    .line 142
    const/4 v12, 0x0

    .line 143
    const/4 v11, 0x0

    .line 144
    const v10, 0x3fe66666    # 1.8f

    .line 145
    const/16 v9, 0xfa

    .line 146
    const/4 v8, 0x1

    .line 147
    const/high16 v7, -0x80000000

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v5, 0x0

    .line 152
    if-nez p1, :cond_6

    const/16 v21, 0x0

    move-object/from16 v23, v21

    .line 153
    :goto_0
    if-eqz v23, :cond_9

    .line 154
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 155
    const/4 v5, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    .line 156
    const/4 v5, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 157
    const/4 v6, 0x6

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 158
    const/4 v6, 0x7

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 159
    const/4 v6, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 160
    const/4 v6, 0x5

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 161
    const/16 v5, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    .line 162
    const/16 v5, 0x9

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 163
    const/16 v5, 0xa

    move/from16 v0, v22

    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 164
    const/16 v5, 0xb

    add-float v6, v14, v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 165
    const/16 v5, 0xc

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 166
    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 167
    const/16 v5, 0xe

    const v6, 0x3fe66666    # 1.8f

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 168
    const/16 v5, 0xf

    const/16 v6, 0xfa

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    .line 169
    const/16 v5, 0xd

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 170
    const/16 v5, 0x10

    const/high16 v6, -0x80000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 171
    const/16 v5, 0x11

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    const/16 v5, 0x12

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    const/16 v24, 0x13

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 174
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    :goto_1
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->N:Ljava/lang/CharSequence;

    .line 179
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    .line 180
    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->U:F

    .line 183
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    .line 184
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    .line 186
    move-object/from16 v0, p0

    iput v7, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    .line 187
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_0

    .line 188
    const v4, 0x327fc2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    .line 190
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    invoke-static {v4}, Lcom/xueqiu/android/common/widget/e;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->o:I

    .line 194
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    if-eqz v4, :cond_2

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    int-to-float v4, v4

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 198
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 201
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    .line 202
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    .line 204
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_3

    .line 205
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    invoke-static {v4}, Lcom/xueqiu/android/common/widget/e;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    sget-object v5, Lcom/xueqiu/android/common/widget/SwitchButton;->a:[I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->q:I

    .line 211
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    move/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    :cond_4
    move-object/from16 v0, p0

    iput v10, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->j:F

    .line 216
    move-object/from16 v0, p0

    iput v14, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->g:F

    .line 217
    move-object/from16 v0, p0

    iput v13, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    .line 218
    int-to-long v4, v9

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->k:J

    .line 219
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->l:Z

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/xueqiu/android/common/widget/SwitchButton;->k:J

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SwitchButton;->setFocusable(Z)V

    .line 224
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SwitchButton;->setClickable(Z)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 228
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SwitchButton;->setProcess(F)V

    .line 230
    :cond_5
    return-void

    .line 152
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v21

    sget-object v22, Lcom/xueqiu/android/R$styleable;->SwitchButton:[I

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    move-object/from16 v23, v21

    goto/16 :goto_0

    .line 185
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 203
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_9
    move-object/from16 v21, v20

    move/from16 v22, v14

    move-object/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    goto/16 :goto_1

    .line 123
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 575
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->k:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 582
    if-eqz p1, :cond_2

    .line 583
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->F:F

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 587
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->F:F

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 666
    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 668
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 669
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 671
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 454
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 456
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->o:I

    .line 462
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xueqiu/android/common/widget/SwitchButton;->b:[I

    .line 463
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 464
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 466
    sget-object v3, Lcom/xueqiu/android/common/widget/SwitchButton;->a:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->r:I

    .line 467
    sget-object v3, Lcom/xueqiu/android/common/widget/SwitchButton;->b:[I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->s:I

    .line 469
    :cond_0
    iget-boolean v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    .line 470
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getDrawableState()[I

    move-result-object v2

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    .line 471
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->q:I

    .line 484
    :cond_1
    :goto_2
    return-void

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 462
    :cond_3
    sget-object v0, Lcom/xueqiu/android/common/widget/SwitchButton;->a:[I

    goto :goto_1

    .line 473
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->l:Z

    if-eqz v1, :cond_5

    .line 474
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 475
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    .line 479
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 480
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->t:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 477
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 683
    iget-wide v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->k:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackMeasureRatio()F
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->j:F

    return v0
.end method

.method public getBackRadius()F
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 820
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getProcess()F
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->F:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->g:F

    return v0
.end method

.method public getThumbSizeF()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getThumbWidth()F
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40800000    # 4.0f

    const/4 v2, 0x0

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 375
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 378
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    if-eqz v0, :cond_4

    .line 379
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v0

    :goto_0
    mul-float/2addr v0, v11

    float-to-int v0, v0

    .line 381
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 382
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    rsub-int v0, v0, 0xff

    .line 384
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 385
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    .line 418
    :goto_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v1

    float-to-double v4, v1

    cmpl-double v1, v4, v8

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->y:Landroid/graphics/RectF;

    move-object v3, v1

    .line 419
    :goto_3
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_9

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v1

    mul-float/2addr v1, v12

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v1, v4

    :goto_4
    mul-float/2addr v1, v11

    float-to-int v4, v1

    .line 421
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v6, v8

    if-lez v1, :cond_b

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->r:I

    .line 422
    :goto_5
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    .line 423
    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    .line 424
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v5, v4, v6, v7, v1}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 426
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 427
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->v:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->F:F

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->x:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 434
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    if-eqz v0, :cond_c

    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 7318
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 435
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    .line 8318
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 435
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 442
    :goto_6
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->D:Z

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    const-string v1, "#AA0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 445
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    const-string v1, "#0000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 447
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    const-string v1, "#00CC00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->y:Landroid/graphics/RectF;

    :goto_7
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 450
    :cond_1
    return-void

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v0

    sub-float v0, v10, v0

    goto/16 :goto_0

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 388
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 391
    :cond_4
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->l:Z

    if-eqz v0, :cond_6

    .line 396
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v0

    :goto_8
    mul-float/2addr v0, v11

    float-to-int v0, v0

    .line 397
    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 398
    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xff

    .line 399
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    iget v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 400
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    iget v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 403
    rsub-int v0, v0, 0xff

    .line 404
    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->q:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 405
    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    .line 406
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->q:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->q:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->q:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 407
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 396
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v0

    sub-float v0, v10, v0

    goto :goto_8

    .line 411
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->w:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 417
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    goto/16 :goto_2

    .line 418
    :cond_8
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->z:Landroid/graphics/RectF;

    move-object v3, v1

    goto/16 :goto_3

    .line 420
    :cond_9
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v1, v4, v6

    if-gez v1, :cond_a

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v1

    mul-float/2addr v1, v12

    sub-float v1, v10, v1

    goto/16 :goto_4

    :cond_a
    move v1, v2

    goto/16 :goto_4

    .line 421
    :cond_b
    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->s:I

    goto/16 :goto_5

    .line 438
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->G:Landroid/graphics/RectF;

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->g:F

    iget v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->g:F

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 448
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->z:Landroid/graphics/RectF;

    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v10, -0x80000000

    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->N:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->N:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    .line 1249
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1250
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1253
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->j:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 1318
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1254
    iget-boolean v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    if-eqz v1, :cond_2

    .line 1255
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1257
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1258
    :goto_0
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1259
    :goto_1
    cmpl-float v6, v1, v2

    if-nez v6, :cond_3

    cmpl-float v6, v3, v2

    if-eqz v6, :cond_4

    .line 1260
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->U:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->S:F

    .line 1261
    int-to-float v1, v0

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    .line 1262
    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->S:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4

    .line 1263
    int-to-float v0, v0

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->S:F

    sub-float v1, v3, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1266
    :cond_4
    int-to-float v1, v0

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v3

    float-to-double v6, v1

    .line 2318
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 1266
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1267
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1268
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1270
    if-ne v5, v11, :cond_a

    .line 1271
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3283
    :cond_5
    :goto_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 3284
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 3287
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->i:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v8, v1

    .line 3318
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 3288
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 3289
    :goto_3
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 3290
    :goto_4
    cmpl-float v7, v1, v2

    if-nez v7, :cond_6

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_e

    .line 3291
    :cond_6
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->T:F

    .line 3292
    int-to-float v1, v3

    iget v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->T:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v2, v1

    .line 4318
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 3294
    :goto_5
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3295
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3297
    if-ne v5, v11, :cond_d

    .line 3298
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 245
    :cond_7
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setMeasuredDimension(II)V

    .line 246
    return-void

    :cond_8
    move v1, v2

    .line 1257
    goto/16 :goto_0

    :cond_9
    move v3, v2

    .line 1258
    goto/16 :goto_1

    .line 1274
    :cond_a
    if-ne v5, v10, :cond_5

    .line 1275
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_2

    :cond_b
    move v1, v2

    .line 3288
    goto :goto_3

    :cond_c
    move v4, v2

    .line 3289
    goto :goto_4

    .line 3301
    :cond_d
    if-ne v5, v10, :cond_7

    .line 3302
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_e
    move v1, v3

    goto :goto_5
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 879
    check-cast p1, Lcom/xueqiu/android/common/widget/at;

    .line 880
    iget-object v0, p1, Lcom/xueqiu/android/common/widget/at;->a:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/xueqiu/android/common/widget/at;->b:Ljava/lang/CharSequence;

    .line 8858
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->N:Ljava/lang/CharSequence;

    .line 8859
    iput-object v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    .line 8861
    iput-object v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->Q:Landroid/text/Layout;

    .line 8862
    iput-object v2, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->R:Landroid/text/Layout;

    .line 8864
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->requestLayout()V

    .line 881
    invoke-virtual {p1}, Lcom/xueqiu/android/common/widget/at;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 882
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 870
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 871
    new-instance v1, Lcom/xueqiu/android/common/widget/at;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/common/widget/at;-><init>(Landroid/os/Parcelable;)V

    .line 872
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->N:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/xueqiu/android/common/widget/at;->a:Ljava/lang/CharSequence;

    .line 873
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->O:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/xueqiu/android/common/widget/at;->b:Ljava/lang/CharSequence;

    .line 874
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    .line 312
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a()V

    .line 315
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isClickable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 536
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->H:F

    sub-float/2addr v3, v4

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->I:F

    sub-float/2addr v4, v5

    .line 501
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 8591
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 8592
    if-eqz v1, :cond_2

    .line 8593
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 504
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->H:F

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->I:F

    .line 506
    iget v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->H:F

    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->J:F

    .line 507
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setPressed(Z)V

    goto :goto_0

    .line 511
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 512
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getProcess()F

    move-result v2

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->J:F

    sub-float v3, v1, v3

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->x:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/SwitchButton;->setProcess(F)V

    .line 513
    iput v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->J:F

    goto :goto_0

    .line 518
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setPressed(Z)V

    .line 519
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getStatusBasedOnPos()Z

    move-result v2

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v5, v6

    .line 521
    iget v6, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->K:I

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->K:I

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_3

    iget v3, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->L:I

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_3

    .line 522
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->performClick()Z

    goto :goto_0

    .line 524
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isChecked()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 525
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/SwitchButton;->playSoundEffect(I)V

    .line 526
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/SwitchButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 528
    :cond_4
    invoke-direct {p0, v2}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(Z)V

    goto/16 :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 1

    .prologue
    .line 687
    iput-wide p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->k:J

    .line 688
    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 729
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    .line 730
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 734
    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    .line 738
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 712
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    .line 714
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a()V

    .line 715
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->refreshDrawableState()V

    .line 716
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->requestLayout()V

    .line 717
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 718
    return-void

    .line 713
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackDrawableRes(I)V
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/g;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    return-void
.end method

.method public setBackMeasureRatio(F)V
    .locals 0

    .prologue
    .line 760
    iput p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->j:F

    .line 761
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->requestLayout()V

    .line 762
    return-void
.end method

.method public setBackRadius(F)V
    .locals 1

    .prologue
    .line 828
    iput p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->h:F

    .line 829
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 832
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 601
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(Z)V

    .line 603
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 604
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 654
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->E:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 657
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setProcess(F)V

    .line 658
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 659
    return-void

    .line 657
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->V:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setCheckedImmediately(Z)V

    .line 624
    :goto_0
    return-void

    .line 620
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 621
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setCheckedImmediately(Z)V

    .line 622
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->V:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->V:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setChecked(Z)V

    .line 614
    :goto_0
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 611
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/SwitchButton;->setChecked(Z)V

    .line 612
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->V:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setDrawDebugRect(Z)V
    .locals 0

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->D:Z

    .line 679
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 680
    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0

    .prologue
    .line 839
    iput-boolean p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->l:Z

    .line 840
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 648
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 649
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->V:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 650
    return-void
.end method

.method public final setProcess(F)V
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 554
    .line 555
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    move p1, v0

    .line 560
    :cond_0
    :goto_0
    iput p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->F:F

    .line 561
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 562
    return-void

    .line 557
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    move p1, v1

    .line 558
    goto :goto_0
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 745
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 746
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    :cond_0
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    .line 753
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 695
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    .line 696
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    .line 697
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a()V

    .line 698
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->refreshDrawableState()V

    .line 699
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->requestLayout()V

    .line 700
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 701
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbDrawableRes(I)V
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/g;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 769
    if-nez p1, :cond_0

    .line 770
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(FFFF)V

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(FFFF)V

    goto :goto_0
.end method

.method public setThumbRadius(F)V
    .locals 1

    .prologue
    .line 813
    iput p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->g:F

    .line 814
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 817
    :cond_0
    return-void
.end method

.method public setThumbSize(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 796
    if-nez p1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    .line 798
    invoke-direct {p0, v0, v0}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(FF)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/common/widget/SwitchButton;->a(FF)V

    goto :goto_0
.end method

.method public setTintColor(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 847
    iput p1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    .line 848
    iget v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/e;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->f:Landroid/content/res/ColorStateList;

    .line 849
    iget v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->m:I

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/e;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->e:Landroid/content/res/ColorStateList;

    .line 850
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->C:Z

    .line 851
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/SwitchButton;->B:Z

    .line 853
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->refreshDrawableState()V

    .line 854
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SwitchButton;->invalidate()V

    .line 855
    return-void
.end method
