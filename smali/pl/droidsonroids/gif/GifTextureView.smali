.class public Lpl/droidsonroids/gif/GifTextureView;
.super Landroid/view/TextureView;
.source "GifTextureView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final g:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private a:Landroid/widget/ImageView$ScaleType;

.field private final b:Landroid/graphics/Matrix;

.field private c:Lpl/droidsonroids/gif/i;

.field private d:Z

.field private e:Lpl/droidsonroids/gif/e;

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "pl_droidsonroids_gif_surface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lpl/droidsonroids/gif/GifTextureView;->g:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->a:Landroid/widget/ImageView$ScaleType;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/graphics/Matrix;

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    .line 1091
    if-eqz p2, :cond_6

    .line 1092
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "scaleType"

    const/4 v2, -0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1093
    if-ltz v0, :cond_0

    sget-object v1, Lpl/droidsonroids/gif/GifTextureView;->g:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1094
    sget-object v1, Lpl/droidsonroids/gif/GifTextureView;->g:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v1, v0

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->a:Landroid/widget/ImageView$ScaleType;

    .line 1096
    :cond_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lpl/droidsonroids/gif/n;->GifTextureView:[I

    invoke-virtual {v0, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1146
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1147
    sget v0, Lpl/droidsonroids/gif/n;->GifTextureView_gifSource:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1148
    const/4 v0, 0x0

    .line 1098
    :goto_0
    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Lpl/droidsonroids/gif/i;

    .line 1099
    sget v0, Lpl/droidsonroids/gif/n;->GifTextureView_isOpaque:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-super {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1100
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1101
    invoke-static {p0, p2, p3}, Lpl/droidsonroids/gif/g;->a(Landroid/view/View;Landroid/util/AttributeSet;I)Z

    move-result v0

    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Z

    .line 1105
    :goto_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1106
    new-instance v0, Lpl/droidsonroids/gif/e;

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/e;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    .line 1107
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Lpl/droidsonroids/gif/i;

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/e;->start()V

    .line 71
    :cond_1
    return-void

    .line 1151
    :cond_2
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_5

    .line 1152
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1153
    const-string v3, "drawable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1154
    :cond_3
    new-instance v0, Lpl/droidsonroids/gif/k;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v3, v2}, Lpl/droidsonroids/gif/k;-><init>(Landroid/content/res/Resources;I)V

    goto :goto_0

    .line 1155
    :cond_4
    const-string v3, "string"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected string, drawable or raw resource, type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cannot be converted to GIF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_5
    new-instance v0, Lpl/droidsonroids/gif/j;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lpl/droidsonroids/gif/j;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1103
    :cond_6
    invoke-super {p0, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/i;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Lpl/droidsonroids/gif/i;

    return-object v0
.end method

.method private a(Lpl/droidsonroids/gif/GifInfoHandle;)V
    .locals 11

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 366
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 367
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 368
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 370
    iget v4, p1, Lpl/droidsonroids/gif/GifInfoHandle;->b:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 371
    iget v5, p1, Lpl/droidsonroids/gif/GifInfoHandle;->c:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 372
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p1, Lpl/droidsonroids/gif/GifInfoHandle;->b:I

    int-to-float v7, v7

    iget v8, p1, Lpl/droidsonroids/gif/GifInfoHandle;->c:I

    int-to-float v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 373
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 374
    sget-object v8, Lpl/droidsonroids/gif/GifTextureView$1;->a:[I

    iget-object v9, p0, Lpl/droidsonroids/gif/GifTextureView;->a:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 409
    :goto_0
    invoke-super {p0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 410
    :pswitch_0
    return-void

    .line 376
    :pswitch_1
    div-float v0, v2, v10

    div-float v2, v3, v10

    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 379
    :pswitch_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v0, v6

    .line 380
    mul-float/2addr v4, v0

    mul-float/2addr v0, v5

    div-float/2addr v2, v10

    div-float/2addr v3, v10

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 383
    :pswitch_3
    iget v6, p1, Lpl/droidsonroids/gif/GifInfoHandle;->b:I

    int-to-float v6, v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_0

    iget v6, p1, Lpl/droidsonroids/gif/GifInfoHandle;->c:I

    int-to-float v6, v6

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_0

    .line 388
    :goto_1
    mul-float/2addr v4, v0

    mul-float/2addr v0, v5

    div-float/2addr v2, v10

    div-float/2addr v3, v10

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 386
    :cond_0
    div-float v6, v0, v4

    div-float/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 391
    :pswitch_4
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 392
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 395
    :pswitch_5
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 396
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 399
    :pswitch_6
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 400
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 405
    :pswitch_7
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 406
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/e;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setSuperSurfaceTextureListener(Lpl/droidsonroids/gif/e;)V

    return-void
.end method

.method static synthetic b(Lpl/droidsonroids/gif/GifTextureView;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    return v0
.end method

.method private setSuperSurfaceTextureListener(Lpl/droidsonroids/gif/e;)V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 275
    return-void
.end method


# virtual methods
.method public getIOException()Ljava/io/IOException;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-static {v0}, Lpl/droidsonroids/gif/e;->b(Lpl/droidsonroids/gif/e;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-static {v0}, Lpl/droidsonroids/gif/e;->b(Lpl/droidsonroids/gif/e;)Ljava/io/IOException;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-static {v0}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/e;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    move-result v0

    invoke-static {v0}, Lpl/droidsonroids/gif/GifIOException;->a(I)Lpl/droidsonroids/gif/GifIOException;

    move-result-object v0

    goto :goto_0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->a:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 448
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 449
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-virtual {v0, p0}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/GifTextureView;)V

    .line 297
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 298
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 302
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 460
    check-cast p1, Lpl/droidsonroids/gif/f;

    .line 461
    invoke-virtual {p1}, Lpl/droidsonroids/gif/f;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 462
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    iget-object v1, p1, Lpl/droidsonroids/gif/f;->a:[[J

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, v0, Lpl/droidsonroids/gif/e;->b:[J

    .line 463
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-static {v1}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/e;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->m()[J

    move-result-object v1

    iput-object v1, v0, Lpl/droidsonroids/gif/e;->b:[J

    .line 455
    new-instance v1, Lpl/droidsonroids/gif/f;

    invoke-super {p0}, Landroid/view/TextureView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    iget-object v0, v0, Lpl/droidsonroids/gif/e;->b:[J

    :goto_0
    invoke-direct {v1, v2, v0}, Lpl/droidsonroids/gif/f;-><init>(Landroid/os/Parcelable;[J)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFreezesAnimation(Z)V
    .locals 0

    .prologue
    .line 472
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifTextureView;->d:Z

    .line 473
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 420
    return-void
.end method

.method public declared-synchronized setInputSource(Lpl/droidsonroids/gif/i;)V
    .locals 1
    .param p1    # Lpl/droidsonroids/gif/i;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-virtual {v0, p0}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/GifTextureView;)V

    .line 311
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Lpl/droidsonroids/gif/i;

    .line 312
    new-instance v0, Lpl/droidsonroids/gif/e;

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/e;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    .line 313
    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/e;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOpaque(Z)V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 289
    invoke-super {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 290
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->c:Lpl/droidsonroids/gif/i;

    invoke-virtual {p0, v0}, Lpl/droidsonroids/gif/GifTextureView;->setInputSource(Lpl/droidsonroids/gif/i;)V

    .line 292
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->a:Landroid/widget/ImageView$ScaleType;

    .line 354
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-static {v0}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/e;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 355
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
        .end annotation
    .end param

    .prologue
    .line 326
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->f:F

    .line 327
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-static {v0}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/e;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a(F)V

    .line 328
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing SurfaceTexture is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Changing SurfaceTextureListener is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 431
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Lpl/droidsonroids/gif/e;

    invoke-static {v0}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/e;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 432
    return-void
.end method
