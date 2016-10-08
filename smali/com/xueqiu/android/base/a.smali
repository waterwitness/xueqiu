.class public Lcom/xueqiu/android/base/a;
.super Ljava/lang/Object;
.source "AdvertisingManager.java"


# static fields
.field static final a:Ljava/lang/String;

.field private static c:Lcom/xueqiu/android/base/a;


# instance fields
.field public b:Lcom/google/gson/JsonObject;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/xueqiu/android/base/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/xueqiu/android/base/a;->g()Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/a;->b:Lcom/google/gson/JsonObject;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x09"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x14"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x11"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x15"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x16"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x17"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x18"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    const-string v1, "0x19"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;
    .locals 14

    .prologue
    .line 484
    .line 2197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 484
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 485
    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    .line 490
    :cond_1
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 492
    if-nez v4, :cond_2

    .line 493
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030223

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 499
    const v1, 0x7f0e0774

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/GifImageView;

    .line 501
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 502
    const/4 v2, 0x1

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 510
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x4

    int-to-long v6, v2

    .line 512
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    .line 513
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    .line 514
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 515
    sub-long/2addr v10, v12

    sub-long/2addr v8, v10

    .line 517
    long-to-float v2, v8

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v2, v5

    float-to-long v8, v2

    .line 518
    const/4 v2, 0x0

    .line 519
    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 520
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 521
    const/4 v2, 0x2

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 522
    const/4 v2, 0x1

    .line 524
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 526
    if-nez v2, :cond_5

    const-string v2, ".gif"

    .line 527
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".GIF"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 528
    :cond_4
    const/4 v3, 0x0

    .line 530
    :try_start_0
    new-instance v2, Lpl/droidsonroids/gif/b;

    invoke-direct {v2, v4}, Lpl/droidsonroids/gif/b;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_1
    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto :goto_1

    .line 536
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 537
    invoke-virtual {v1, v2}, Lpl/droidsonroids/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/a;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/base/a;->b:Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/xueqiu/android/base/a;
    .locals 2

    .prologue
    .line 99
    const-class v1, Lcom/xueqiu/android/base/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xueqiu/android/base/a;->c:Lcom/xueqiu/android/base/a;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/xueqiu/android/base/a;

    invoke-direct {v0}, Lcom/xueqiu/android/base/a;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/a;->c:Lcom/xueqiu/android/base/a;

    .line 102
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/a;->c:Lcom/xueqiu/android/base/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 574
    .line 2599
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2600
    const-string v0, "index"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2601
    const-string v0, "0x14"

    move-object v1, v0

    .line 577
    :goto_0
    const-string v0, "ad_pull_down"

    const-string v3, "{}"

    .line 578
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v4

    .line 577
    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 581
    if-nez v0, :cond_8

    .line 594
    :cond_0
    :goto_1
    return-object v2

    .line 2602
    :cond_1
    const-string v0, "portfolio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2603
    const-string v0, "0x17"

    move-object v1, v0

    goto :goto_0

    .line 2604
    :cond_2
    const-string v0, "timeline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2605
    const-string v0, "0x15"

    move-object v1, v0

    goto :goto_0

    .line 2606
    :cond_3
    const-string v0, "quote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2607
    const-string v0, "0x19"

    move-object v1, v0

    goto :goto_0

    .line 2610
    :cond_4
    const-string v0, "index"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2611
    const-string v0, "0x09"

    move-object v1, v0

    goto :goto_0

    .line 2612
    :cond_5
    const-string v0, "portfolio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2613
    const-string v0, "0x16"

    move-object v1, v0

    goto :goto_0

    .line 2614
    :cond_6
    const-string v0, "timeline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2615
    const-string v0, "0x11"

    move-object v1, v0

    goto :goto_0

    .line 2616
    :cond_7
    const-string v0, "quote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2617
    const-string v0, "0x18"

    move-object v1, v0

    goto :goto_0

    .line 585
    :cond_8
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 587
    const-string v1, "ads"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    .line 589
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 591
    :goto_2
    const-string v1, "image"

    .line 3106
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    move-object v0, v2

    .line 589
    goto :goto_2

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/gson/JsonObject;)V
    .locals 3

    .prologue
    .line 6569
    const-string v0, "ad_pull_down"

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6570
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 6569
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/a;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/xueqiu/android/base/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/a;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7438
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7439
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 7440
    const-string v2, "code"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/r;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)I

    move-result v2

    .line 7441
    const-string v3, "ads"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 7442
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x0

    .line 7443
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 7444
    :cond_0
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 7447
    const-string v1, "image"

    .line 8106
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7448
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 7449
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7450
    :cond_1
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    .line 7451
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/base/a$7;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/base/a$7;-><init>(Lcom/xueqiu/android/base/a;Ljava/lang/String;)V

    .line 7450
    invoke-virtual {v1, v0, v2, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 7479
    :cond_2
    :goto_0
    return-void

    .line 7474
    :cond_3
    invoke-static {p1}, Lcom/xueqiu/android/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/a;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7478
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/SharedPreferences;Lcom/google/gson/JsonArray;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    .line 5202
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 5228
    :cond_0
    :goto_0
    return v0

    .line 5205
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5206
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 5207
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v4, "ad_launch_json"

    const-string v5, "{}"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 5211
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 5212
    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 5213
    invoke-virtual {v0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 5214
    const-string v4, "updated_at"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "updated_at"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "updated_at"

    .line 5215
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    const-string v0, "updated_at"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    move v0, v2

    .line 5220
    :goto_1
    if-eqz v3, :cond_0

    .line 5221
    const-string v1, "image"

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 5222
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 5223
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5224
    :cond_2
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    .line 5225
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v3

    const/4 v4, 0x0

    .line 5224
    invoke-virtual {v2, v1, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 48
    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lcom/xueqiu/android/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/base/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/base/a;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/gson/JsonObject;)V
    .locals 3

    .prologue
    .line 8692
    const-string v0, "general_notice_json"

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8693
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 8692
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static c()Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 239
    const-string v0, "ad_launch_json"

    const-string v1, "{}"

    .line 240
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 239
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 242
    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0}, Lcom/xueqiu/android/base/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_pull_down_ad_synced"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    const-string v1, "extra_page_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 564
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    .line 565
    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 566
    return-void
.end method

.method public static d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 251
    const-string v0, "ad_launch_json"

    const-string v2, "{}"

    .line 252
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    .line 251
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/h;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 256
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 259
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 261
    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 265
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->j()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 625
    const-string v1, "0x09"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0x14"

    .line 626
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 627
    :cond_0
    const-string v0, "index"

    .line 638
    :cond_1
    :goto_0
    return-object v0

    .line 628
    :cond_2
    const-string v1, "0x16"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0x17"

    .line 629
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    :cond_3
    const-string v0, "portfolio"

    goto :goto_0

    .line 631
    :cond_4
    const-string v1, "0x11"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "0x15"

    .line 632
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 633
    :cond_5
    const-string v0, "timeline"

    goto :goto_0

    .line 634
    :cond_6
    const-string v1, "0x18"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "0x19"

    .line 635
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    :cond_7
    const-string v0, "quote"

    goto :goto_0
.end method

.method public static g()Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 773
    const-string v0, "general_notice_json"

    const-string v1, "{}"

    .line 774
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 773
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 777
    return-object v0
.end method

.method public static h()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 792
    const-string v0, "ad_search_banner_json"

    const-string v2, "{}"

    .line 793
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    .line 792
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 796
    if-nez v0, :cond_0

    move v0, v1

    .line 808
    :goto_0
    return v0

    .line 800
    :cond_0
    const-string v2, "image"

    .line 4106
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 803
    goto :goto_0

    .line 806
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->j()Lcom/d/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v2

    .line 807
    invoke-interface {v2, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static i()Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 812
    const-string v0, "ad_search_banner_json"

    const-string v1, "{}"

    .line 813
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 812
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 816
    return-object v0
.end method

.method public static j()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 825
    const-string v0, "ad_search_text_json"

    const-string v2, "{}"

    .line 826
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    .line 825
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 828
    if-nez v0, :cond_0

    move v0, v1

    .line 832
    :goto_0
    return v0

    :cond_0
    const-string v2, "title"

    .line 5106
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static k()Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 836
    const-string v0, "ad_search_text_json"

    const-string v1, "{}"

    .line 837
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 836
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 839
    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/xueqiu/android/base/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()V
    .locals 3

    .prologue
    .line 5820
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 5821
    const-string v1, "ad_search_banner_json"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method final b()V
    .locals 8

    .prologue
    .line 152
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "0x05"

    .line 155
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 156
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const-string v2, "0x01"

    .line 158
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->j()I

    move-result v6

    new-instance v7, Lcom/xueqiu/android/base/a$2;

    invoke-direct {v7, p0, v0, v4, v5}, Lcom/xueqiu/android/base/a$2;-><init>(Lcom/xueqiu/android/base/a;Landroid/content/Context;J)V

    .line 156
    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 199
    return-void

    .line 153
    :cond_0
    const-string v3, "0x04"

    goto :goto_0
.end method

.method public final e()V
    .locals 7

    .prologue
    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1545
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    const-string v1, "0x14,0x17,0x15,0x19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :goto_0
    sget-object v1, Lcom/xueqiu/android/base/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generateAdIds adIds.toString = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "0x05"

    .line 411
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 412
    new-instance v6, Lcom/xueqiu/android/base/a$6;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/base/a$6;-><init>(Lcom/xueqiu/android/base/a;)V

    .line 411
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->b(JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 434
    return-void

    .line 1551
    :cond_0
    const-string v1, "0x09,0x16,0x11,0x18"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 409
    :cond_1
    const-string v4, "0x04"

    goto :goto_1
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/a;->b:Lcom/google/gson/JsonObject;

    .line 699
    const-string v0, "general_notice_json"

    const-string v1, ""

    .line 700
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 699
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 701
    return-void
.end method
