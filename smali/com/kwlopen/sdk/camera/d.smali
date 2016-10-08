.class final Lcom/kwlopen/sdk/camera/d;
.super Landroid/view/View;
.source "MaskSurfaceView.java"


# instance fields
.field final synthetic a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/kwlopen/sdk/camera/MaskSurfaceView;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 180
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    .line 181
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/d;->b:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 186
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->b:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->b:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    .line 193
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 203
    iget v0, p1, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c:F

    .line 204
    iget v0, p1, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c:F

    const v1, 0x3f2147ae    # 0.63f

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d:F

    .line 205
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d:F

    iget-object v2, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v2, v2, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->b:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c:F

    iget-object v2, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v2, v2, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->b:F

    iget-object v2, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v2, v2, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 224
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    iget-object v2, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v2, v2, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 226
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v3, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    iget-object v5, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    sub-float v3, v0, v11

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v5, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->b:F

    sub-float v6, v0, v4

    iget-object v7, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->b:F

    sub-float v7, v0, v4

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v8, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->a:F

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v9, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->b:F

    iget-object v10, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d:F

    add-float v6, v4, v0

    iget-object v7, p0, Lcom/kwlopen/sdk/camera/d;->c:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v1

    move v5, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->c:F

    add-float v5, v11, v0

    iget-object v0, p0, Lcom/kwlopen/sdk/camera/d;->a:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    iget v0, v0, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->d:F

    add-float v6, v4, v0

    iget-object v7, p0, Lcom/kwlopen/sdk/camera/d;->b:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method
