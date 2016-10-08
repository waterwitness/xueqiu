.class public final Lcom/xueqiu/android/common/widget/d;
.super Landroid/graphics/drawable/Drawable;
.source "BarDrawable.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:I

.field private f:Landroid/graphics/ColorFilter;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(IIF)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    const/16 v0, 0xff

    iput v0, p0, Lcom/xueqiu/android/common/widget/d;->e:I

    .line 38
    iput p1, p0, Lcom/xueqiu/android/common/widget/d;->a:I

    .line 39
    iput p2, p0, Lcom/xueqiu/android/common/widget/d;->b:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/d;->c:F

    .line 41
    iput p3, p0, Lcom/xueqiu/android/common/widget/d;->d:F

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/d;->g:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/d;->h:Landroid/graphics/Paint;

    .line 44
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 48
    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/d;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/d;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1058
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/d;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/d;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1059
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/d;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/d;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1060
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/d;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xueqiu/android/common/widget/d;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/d;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/d;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/xueqiu/android/common/widget/d;->c:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/xueqiu/android/common/widget/d;->d:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/d;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/xueqiu/android/common/widget/d;->e:I

    .line 66
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/d;->f:Landroid/graphics/ColorFilter;

    .line 71
    return-void
.end method
