.class public final Lcom/d/a/b/b/a;
.super Ljava/lang/Object;
.source "BaseImageDecoder.java"

# interfaces
.implements Lcom/d/a/b/b/d;


# instance fields
.field protected final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean p1, p0, Lcom/d/a/b/b/a;->a:Z

    .line 57
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/d/a/b/b/b;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 117
    .line 120
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    sget-object v3, Lcom/d/a/b/d/c;->c:Lcom/d/a/b/d/c;

    invoke-virtual {v3, p0}, Lcom/d/a/b/d/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 122
    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    .line 147
    :goto_1
    :pswitch_1
    new-instance v2, Lcom/d/a/b/b/b;

    invoke-direct {v2, v1, v0}, Lcom/d/a/b/b/b;-><init>(IZ)V

    return-object v2

    :pswitch_2
    move v0, v1

    .line 131
    :pswitch_3
    const/16 v1, 0x5a

    .line 132
    goto :goto_1

    :pswitch_4
    move v0, v1

    .line 136
    :pswitch_5
    const/16 v1, 0xb4

    .line 137
    goto :goto_1

    :pswitch_6
    move v0, v1

    .line 141
    :pswitch_7
    const/16 v1, 0x10e

    goto :goto_1

    .line 145
    :catch_0
    move-exception v2

    const-string v2, "Can\'t read EXIF tags from file [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v2, v0}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Ljava/io/InputStream;Lcom/d/a/b/b/e;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object p0

    .line 175
    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/d/a/c/b;->a(Ljava/io/Closeable;)V

    .line 176
    invoke-static {p1}, Lcom/d/a/b/b/a;->b(Lcom/d/a/b/b/e;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0
.end method

.method private static b(Lcom/d/a/b/b/e;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 93
    .line 12133
    iget-object v0, p0, Lcom/d/a/b/b/e;->f:Lcom/d/a/b/d/b;

    .line 13102
    iget-object v1, p0, Lcom/d/a/b/b/e;->b:Ljava/lang/String;

    .line 13138
    iget-object v2, p0, Lcom/d/a/b/b/e;->g:Ljava/lang/Object;

    .line 93
    invoke-interface {v0, v1, v2}, Lcom/d/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/d/a/b/b/e;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    .line 73
    invoke-static {p1}, Lcom/d/a/b/b/a;->b(Lcom/d/a/b/b/e;)Ljava/io/InputStream;

    move-result-object v1

    .line 1098
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1100
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2102
    iget-object v3, p1, Lcom/d/a/b/b/e;->b:Ljava/lang/String;

    .line 2143
    iget-boolean v0, p1, Lcom/d/a/b/b/e;->h:Z

    .line 1104
    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 3113
    const-string v4, "image/jpeg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/d/a/b/d/c;->a(Ljava/lang/String;)Lcom/d/a/b/d/c;

    move-result-object v0

    sget-object v4, Lcom/d/a/b/d/c;->c:Lcom/d/a/b/d/c;

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    .line 1104
    :goto_0
    if-eqz v0, :cond_2

    .line 1105
    invoke-static {v3}, Lcom/d/a/b/b/a;->a(Ljava/lang/String;)Lcom/d/a/b/b/b;

    move-result-object v0

    .line 1109
    :goto_1
    new-instance v3, Lcom/d/a/b/b/c;

    new-instance v4, Lcom/d/a/b/a/f;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v0, Lcom/d/a/b/b/b;->a:I

    invoke-direct {v4, v5, v2, v6}, Lcom/d/a/b/a/f;-><init>(III)V

    invoke-direct {v3, v4, v0}, Lcom/d/a/b/b/c;-><init>(Lcom/d/a/b/a/f;Lcom/d/a/b/b/b;)V

    .line 76
    invoke-static {v1, p1}, Lcom/d/a/b/b/a;->a(Ljava/io/InputStream;Lcom/d/a/b/b/e;)Ljava/io/InputStream;

    move-result-object v1

    .line 77
    iget-object v2, v3, Lcom/d/a/b/b/c;->a:Lcom/d/a/b/a/f;

    .line 4123
    iget v0, p1, Lcom/d/a/b/b/e;->d:I

    .line 3153
    sget v4, Lcom/d/a/b/a/e;->a:I

    if-ne v0, v4, :cond_3

    .line 3154
    const/4 v0, 0x1

    .line 3162
    :goto_2
    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    iget-boolean v4, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v4, :cond_0

    .line 3163
    const-string v4, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    .line 6057
    new-instance v7, Lcom/d/a/b/a/f;

    iget v8, v2, Lcom/d/a/b/a/f;->a:I

    div-int/2addr v8, v0

    iget v2, v2, Lcom/d/a/b/a/f;->b:I

    div-int/2addr v2, v0

    invoke-direct {v7, v8, v2}, Lcom/d/a/b/a/f;-><init>(II)V

    .line 3163
    aput-object v7, v5, v6

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 6097
    iget-object v6, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    .line 3163
    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6148
    :cond_0
    iget-object v2, p1, Lcom/d/a/b/b/e;->i:Landroid/graphics/BitmapFactory$Options;

    .line 3167
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 78
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    invoke-static {v1}, Lcom/d/a/c/b;->a(Ljava/io/Closeable;)V

    .line 83
    if-nez v0, :cond_6

    .line 84
    const-string v1, "Image can\'t be decoded [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7097
    iget-object v4, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    .line 84
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_3
    return-object v0

    .line 3113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1107
    :cond_2
    :try_start_1
    new-instance v0, Lcom/d/a/b/b/b;

    invoke-direct {v0}, Lcom/d/a/b/b/b;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/d/a/c/b;->a(Ljava/io/Closeable;)V

    throw v0

    .line 3155
    :cond_3
    :try_start_2
    sget v4, Lcom/d/a/b/a/e;->b:I

    if-ne v0, v4, :cond_4

    .line 3156
    invoke-static {v2}, Lcom/d/a/c/a;->a(Lcom/d/a/b/a/f;)I

    move-result v0

    goto :goto_2

    .line 5115
    :cond_4
    iget-object v4, p1, Lcom/d/a/b/b/e;->c:Lcom/d/a/b/a/f;

    .line 3159
    sget v5, Lcom/d/a/b/a/e;->c:I

    if-ne v0, v5, :cond_5

    const/4 v0, 0x1

    .line 5128
    :goto_4
    iget v5, p1, Lcom/d/a/b/b/e;->e:I

    .line 3160
    invoke-static {v2, v4, v5, v0}, Lcom/d/a/c/a;->a(Lcom/d/a/b/a/f;Lcom/d/a/b/a/f;IZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_2

    .line 3159
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 86
    :cond_6
    iget-object v1, v3, Lcom/d/a/b/b/c;->b:Lcom/d/a/b/b/b;

    iget v2, v1, Lcom/d/a/b/b/b;->a:I

    iget-object v1, v3, Lcom/d/a/b/b/c;->b:Lcom/d/a/b/b/b;

    iget-boolean v3, v1, Lcom/d/a/b/b/b;->b:Z

    .line 7183
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 8123
    iget v1, p1, Lcom/d/a/b/b/e;->d:I

    .line 7186
    sget v4, Lcom/d/a/b/a/e;->e:I

    if-eq v1, v4, :cond_7

    sget v4, Lcom/d/a/b/a/e;->f:I

    if-ne v1, v4, :cond_8

    .line 7187
    :cond_7
    new-instance v4, Lcom/d/a/b/a/f;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v6, v7, v2}, Lcom/d/a/b/a/f;-><init>(III)V

    .line 9115
    iget-object v6, p1, Lcom/d/a/b/b/e;->c:Lcom/d/a/b/a/f;

    .line 9128
    iget v7, p1, Lcom/d/a/b/b/e;->e:I

    .line 7188
    sget v8, Lcom/d/a/b/a/e;->f:I

    if-ne v1, v8, :cond_c

    const/4 v1, 0x1

    :goto_5
    invoke-static {v4, v6, v7, v1}, Lcom/d/a/c/a;->b(Lcom/d/a/b/a/f;Lcom/d/a/b/a/f;IZ)F

    move-result v1

    .line 7190
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_8

    .line 7191
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7193
    iget-boolean v6, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v6, :cond_8

    .line 7194
    const-string v6, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    .line 10062
    new-instance v9, Lcom/d/a/b/a/f;

    iget v10, v4, Lcom/d/a/b/a/f;->a:I

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    iget v4, v4, Lcom/d/a/b/a/f;->b:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v9, v10, v4}, Lcom/d/a/b/a/f;-><init>(II)V

    .line 7194
    aput-object v9, v7, v8

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v4

    const/4 v1, 0x3

    .line 10097
    iget-object v4, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    .line 7194
    aput-object v4, v7, v1

    invoke-static {v6, v7}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7199
    :cond_8
    if-eqz v3, :cond_9

    .line 7200
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 7202
    iget-boolean v1, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "Flip image horizontally [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 11097
    iget-object v6, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    .line 7202
    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7205
    :cond_9
    if-eqz v2, :cond_a

    .line 7206
    int-to-float v1, v2

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7208
    iget-boolean v1, p0, Lcom/d/a/b/b/a;->a:Z

    if-eqz v1, :cond_a

    const-string v1, "Rotate image on %1$d\u00b0 [%2$s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    .line 12097
    iget-object v4, p1, Lcom/d/a/b/b/e;->a:Ljava/lang/String;

    .line 7208
    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7211
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7213
    if-eq v1, v0, :cond_b

    .line 7214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    move-object v0, v1

    .line 86
    goto/16 :goto_3

    .line 7188
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_5
.end method
