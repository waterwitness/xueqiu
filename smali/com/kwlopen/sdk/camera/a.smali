.class public final Lcom/kwlopen/sdk/camera/a;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field static c:Lcom/kwlopen/sdk/camera/a;


# instance fields
.field a:Landroid/media/ToneGenerator;

.field b:Z

.field public d:Landroid/hardware/Camera;

.field e:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

.field f:F

.field g:F

.field h:I

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "CameraHelper"

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/a;->i:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static a(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 531
    move/from16 v0, p1

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    div-double v6, v2, v4

    .line 532
    if-nez p0, :cond_1

    .line 533
    const/4 v3, 0x0

    .line 561
    :cond_0
    return-object v3

    .line 535
    :cond_1
    const/4 v3, 0x0

    .line 536
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 541
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 542
    iget v9, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v9

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v9

    div-double/2addr v10, v12

    .line 543
    sub-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v10, v12

    if-gtz v9, :cond_2

    .line 545
    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v9, v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v10, v9

    cmpg-double v9, v10, v4

    if-gez v9, :cond_5

    .line 547
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-wide v14, v4

    move-object v4, v2

    move-wide v2, v14

    :goto_1
    move-wide v14, v2

    move-object v3, v4

    move-wide v4, v14

    .line 549
    goto :goto_0

    .line 552
    :cond_3
    if-nez v3, :cond_0

    .line 553
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 554
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 555
    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v7, v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v8, v7

    cmpg-double v7, v8, v4

    if-gez v7, :cond_4

    .line 557
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-wide v14, v4

    move-object v4, v2

    move-wide v2, v14

    :goto_3
    move-wide v14, v2

    move-object v3, v4

    move-wide v4, v14

    .line 559
    goto :goto_2

    :cond_4
    move-wide v14, v4

    move-object v4, v3

    move-wide v2, v14

    goto :goto_3

    :cond_5
    move-wide v14, v4

    move-object v4, v3

    move-wide v2, v14

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/kwlopen/sdk/camera/a;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lcom/kwlopen/sdk/camera/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kwlopen/sdk/camera/a;->c:Lcom/kwlopen/sdk/camera/a;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/kwlopen/sdk/camera/a;

    invoke-direct {v0}, Lcom/kwlopen/sdk/camera/a;-><init>()V

    sput-object v0, Lcom/kwlopen/sdk/camera/a;->c:Lcom/kwlopen/sdk/camera/a;

    .line 74
    :cond_0
    sget-object v0, Lcom/kwlopen/sdk/camera/a;->c:Lcom/kwlopen/sdk/camera/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static b()I
    .locals 5

    .prologue
    .line 156
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 157
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 159
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 160
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 161
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 166
    :goto_1
    return v0

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/b/a/a/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/openAccount/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v7

    .line 295
    :goto_0
    return-object v0

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1304
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddhhmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1305
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "img_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1469
    array-length v0, p2

    invoke-static {p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1470
    iget-object v2, p0, Lcom/kwlopen/sdk/camera/a;->e:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-virtual {v2}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/kwlopen/sdk/camera/a;->e:Lcom/kwlopen/sdk/camera/MaskSurfaceView;

    invoke-virtual {v3}, Lcom/kwlopen/sdk/camera/MaskSurfaceView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1472
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1473
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1474
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1475
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1478
    :cond_1
    iget v2, p0, Lcom/kwlopen/sdk/camera/a;->h:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/kwlopen/sdk/camera/a;->f:F

    div-float/2addr v2, v3

    .line 1479
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1480
    int-to-float v3, v2

    const v4, 0x3f2147ae    # 0.63f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x1

    .line 1484
    invoke-static {v0, v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 279
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 285
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 286
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 289
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 290
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_1
    move-object v0, v8

    .line 295
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    move-object v1, v7

    .line 284
    :goto_2
    if-eqz v1, :cond_2

    .line 285
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 286
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 288
    :cond_2
    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 290
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    move-object v0, v7

    .line 293
    goto/16 :goto_0

    .line 283
    :catchall_0
    move-exception v0

    move-object v1, v7

    .line 284
    :goto_4
    if-eqz v1, :cond_4

    .line 285
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 286
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 288
    :cond_4
    if-eqz v7, :cond_5

    .line 289
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 290
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 293
    :cond_5
    :goto_5
    throw v0

    :catch_1
    move-exception v1

    goto :goto_5

    .line 283
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v7

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    .line 294
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method final c()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kwlopen/sdk/camera/a;->b:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/camera/a;->b:Z

    .line 444
    :cond_0
    return-void
.end method
