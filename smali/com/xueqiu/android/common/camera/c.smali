.class final Lcom/xueqiu/android/common/camera/c;
.super Ljava/lang/Thread;
.source "CameraFragment.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/camera/a;

.field private b:[B


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/camera/a;[B)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/xueqiu/android/common/camera/c;->b:[B

    .line 339
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lcom/xueqiu/android/common/camera/c;->b:[B

    iget-object v2, p0, Lcom/xueqiu/android/common/camera/c;->b:[B

    array-length v2, v2

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 346
    const/4 v2, 0x0

    .line 348
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v1}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v1

    .line 1030
    iget-object v1, v1, Lcom/xueqiu/android/common/camera/g;->a:Ljava/lang/String;

    .line 348
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 350
    new-instance v1, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 351
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :try_start_1
    iget-object v2, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v2}, Lcom/xueqiu/android/common/camera/a;->b(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/CameraPreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/common/camera/CameraPreview;->getCameraRotate()I

    move-result v2

    .line 355
    iget-object v5, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v5}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v5

    .line 1062
    iget v5, v5, Lcom/xueqiu/android/common/camera/g;->c:I

    .line 355
    if-ne v5, v4, :cond_4

    .line 356
    :goto_0
    if-eqz v4, :cond_0

    .line 357
    neg-int v2, v2

    .line 359
    :cond_0
    const-string v5, "CameraFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==========degree:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-eqz v2, :cond_9

    .line 361
    invoke-static {v3, v2, v4}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 365
    :goto_1
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xueqiu/android/common/camera/a;->a(Lcom/xueqiu/android/common/camera/a;Landroid/graphics/Bitmap;)V

    .line 367
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v3}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v3

    .line 1070
    iget-object v3, v3, Lcom/xueqiu/android/common/camera/g;->d:Ljava/lang/String;

    .line 367
    const-string v5, "idCard"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    const/16 v3, -0x5a

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v3}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v3

    .line 2038
    iget v3, v3, Lcom/xueqiu/android/common/camera/g;->b:I

    .line 372
    if-eqz v3, :cond_8

    .line 374
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v4}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v4

    .line 3038
    iget v4, v4, Lcom/xueqiu/android/common/camera/g;->b:I

    .line 374
    if-le v3, v4, :cond_5

    .line 375
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v0

    .line 4038
    iget v3, v0, Lcom/xueqiu/android/common/camera/g;->b:I

    .line 376
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v4}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v4

    .line 5038
    iget v4, v4, Lcom/xueqiu/android/common/camera/g;->b:I

    .line 376
    mul-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 381
    :goto_2
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    :goto_3
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 386
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 387
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/camera/a;->a(Lcom/xueqiu/android/common/camera/a;Z)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 393
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 399
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/a;->e(Lcom/xueqiu/android/common/camera/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/a;->f(Lcom/xueqiu/android/common/camera/a;)V

    .line 402
    :cond_3
    return-void

    :cond_4
    move v4, v0

    .line 355
    goto/16 :goto_0

    .line 377
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v4}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v4

    .line 6038
    iget v4, v4, Lcom/xueqiu/android/common/camera/g;->b:I

    .line 377
    if-le v3, v4, :cond_7

    .line 378
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v0

    .line 7038
    iget v0, v0, Lcom/xueqiu/android/common/camera/g;->b:I

    .line 379
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/xueqiu/android/common/camera/c;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v4}, Lcom/xueqiu/android/common/camera/a;->d(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;

    move-result-object v4

    .line 8038
    iget v4, v4, Lcom/xueqiu/android/common/camera/g;->b:I

    .line 379
    mul-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_2

    .line 388
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 389
    :goto_5
    :try_start_4
    const-string v2, "CameraFragment"

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 391
    if-eqz v1, :cond_2

    .line 393
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 395
    :catch_1
    move-exception v0

    goto :goto_4

    .line 391
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_6

    .line 393
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 395
    :cond_6
    :goto_7
    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_7

    .line 391
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 388
    :catch_4
    move-exception v0

    goto :goto_5

    :cond_7
    move v3, v0

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_3

    :cond_9
    move-object v2, v3

    goto/16 :goto_1
.end method
