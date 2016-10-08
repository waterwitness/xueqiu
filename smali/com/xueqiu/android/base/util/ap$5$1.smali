.class final Lcom/xueqiu/android/base/util/ap$5$1;
.super Ljava/lang/Object;
.source "StatusUtil.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/ap$5;
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/base/util/ap$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/ap$5;Lrx/i;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ap$5$1;->b:Lcom/xueqiu/android/base/util/ap$5;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ap$5$1;->a:Lrx/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 459
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$5$1;->b:Lcom/xueqiu/android/base/util/ap$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$5;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ad;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 461
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/xueqiu/android/base/util/ap$5$1;->b:Lcom/xueqiu/android/base/util/ap$5;

    iget-object v3, v3, Lcom/xueqiu/android/base/util/ap$5;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 462
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 463
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ap$5$1;->b:Lcom/xueqiu/android/base/util/ap$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/ap$5;->c:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "upload_status_image.jpeg"

    new-instance v4, Lcom/xueqiu/android/base/util/ap$5$1$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/base/util/ap$5$1$1;-><init>(Lcom/xueqiu/android/base/util/ap$5$1;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/base/b/ai;->a([BLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 476
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    const-string v1, "StatusUtil"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
