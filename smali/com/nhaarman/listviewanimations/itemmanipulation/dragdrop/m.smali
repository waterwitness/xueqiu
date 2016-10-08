.class public final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "HoverDrawable.java"


# instance fields
.field a:F

.field b:F

.field c:F


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1035
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1036
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    .line 63
    iput p2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->b:F

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->setBounds(IIII)V

    .line 66
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->setBounds(IIII)V

    .line 120
    return-void
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->a:F

    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
