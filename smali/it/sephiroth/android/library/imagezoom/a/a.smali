.class public final Lit/sephiroth/android/library/imagezoom/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field protected b:Landroid/graphics/Paint;

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    .line 27
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->c:I

    .line 29
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->d:I

    .line 34
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->b:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 36
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 37
    return-void

    .line 31
    :cond_0
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/a/a;->c:I

    .line 32
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/a/a;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->d:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->c:I

    return v0
.end method

.method public final getMinimumHeight()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->d:I

    return v0
.end method

.method public final getMinimumWidth()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->c:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 62
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 67
    return-void
.end method
