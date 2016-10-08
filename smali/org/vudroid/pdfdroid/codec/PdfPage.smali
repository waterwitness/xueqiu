.class public Lorg/vudroid/pdfdroid/codec/PdfPage;
.super Ljava/lang/Object;
.source "PdfPage.java"

# interfaces
.implements Lorg/vudroid/a/a/c;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->a:J

    .line 18
    iput-wide p3, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->b:J

    .line 19
    return-void
.end method

.method static a(JI)Lorg/vudroid/pdfdroid/codec/PdfPage;
    .locals 4

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lorg/vudroid/pdfdroid/codec/PdfPage;

    invoke-static {p0, p1, p2}, Lorg/vudroid/pdfdroid/codec/PdfPage;->open(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p0, p1}, Lorg/vudroid/pdfdroid/codec/PdfPage;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 70
    iget-wide v2, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->a:J

    invoke-static {v2, v3, v0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->getMediaBox(J[F)V

    .line 71
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private static native free(J)V
.end method

.method private static native getMediaBox(J[F)V
.end method

.method private native nativeCreateView(JJ[I[F[I)V
.end method

.method private static native open(JI)J
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final a(IILandroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 39
    int-to-float v1, p1

    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->d()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    neg-int v2, p2

    int-to-float v2, v2

    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->d()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 40
    const/4 v1, 0x0

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 41
    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1075
    new-array v6, v10, [I

    .line 1076
    iget v2, v1, Landroid/graphics/Rect;->left:I

    aput v2, v6, v4

    .line 1077
    iget v2, v1, Landroid/graphics/Rect;->top:I

    aput v2, v6, v5

    .line 1078
    iget v2, v1, Landroid/graphics/Rect;->right:I

    aput v2, v6, v8

    .line 1079
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    aput v2, v6, v9

    .line 1081
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 1082
    const/4 v3, 0x6

    new-array v7, v3, [F

    .line 1083
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1084
    aget v0, v2, v4

    aput v0, v7, v4

    .line 1085
    aget v0, v2, v9

    aput v0, v7, v5

    .line 1086
    aget v0, v2, v5

    aput v0, v7, v8

    .line 1087
    aget v0, v2, v10

    aput v0, v7, v9

    .line 1088
    aget v0, v2, v8

    aput v0, v7, v10

    .line 1089
    const/4 v0, 0x5

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v7, v0

    .line 1091
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1092
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1093
    mul-int v1, v0, v9

    new-array v8, v1, [I

    .line 1094
    iget-wide v2, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->b:J

    iget-wide v4, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/vudroid/pdfdroid/codec/PdfPage;->nativeCreateView(JJ[I[F[I)V

    .line 1095
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->d()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final declared-synchronized c()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 63
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->a:J

    invoke-static {v0, v1}, Lorg/vudroid/pdfdroid/codec/PdfPage;->free(J)V

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfPage;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/vudroid/pdfdroid/codec/PdfPage;->c()V

    .line 58
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    return-void
.end method
