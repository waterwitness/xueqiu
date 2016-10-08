.class public Lcom/xueqiu/android/base/n;
.super Ljava/lang/Object;
.source "SNBAndFixManager.java"


# static fields
.field private static final f:Ljava/lang/String;

.field private static i:Lcom/xueqiu/android/base/n;

.field private static j:J


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/alipay/euler/andfix/patch/PatchManager;

.field c:Z

.field public d:Z

.field public e:Landroid/content/SharedPreferences;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-class v0, Lcom/xueqiu/android/base/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/n;->i:Lcom/xueqiu/android/base/n;

    .line 125
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xueqiu/android/base/n;->j:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    .line 111
    iput-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 113
    iput-object v0, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/xueqiu/android/base/n;->h:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lcom/xueqiu/android/base/n;->c:Z

    .line 119
    iput-boolean v1, p0, Lcom/xueqiu/android/base/n;->d:Z

    .line 121
    iput-object v0, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    .line 144
    iput-object p1, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    .line 145
    const-string v0, "_snb_andfix_"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    .line 146
    new-instance v0, Lcom/alipay/euler/andfix/patch/PatchManager;

    iget-object v1, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/base/n;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 129
    sget-wide v0, Lcom/xueqiu/android/base/n;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xueqiu/android/base/n;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xueqiu/android/base/n;->j:J

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/base/DownloadPatchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/n;Lcom/google/gson/JsonObject;)V
    .locals 3

    .prologue
    .line 3198
    new-instance v0, Lcom/xueqiu/android/base/n$3;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/base/n$3;-><init>(Lcom/xueqiu/android/base/n;Lcom/google/gson/JsonObject;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    .line 3239
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 3240
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/n$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/n$4;-><init>(Lcom/xueqiu/android/base/n;)V

    new-instance v2, Lcom/xueqiu/android/base/n$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/n$5;-><init>(Lcom/xueqiu/android/base/n;)V

    .line 3241
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 75
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/xueqiu/android/base/n;->c:Z

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->removeAllPatch()V

    .line 337
    new-instance v0, Lcom/alipay/euler/andfix/patch/PatchManager;

    iget-object v1, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    iget-object v1, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->init(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v0, p1}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->loadPatch()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/n;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/xueqiu/android/base/n;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/xueqiu/android/base/n;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/xueqiu/android/base/n;->i:Lcom/xueqiu/android/base/n;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/xueqiu/android/base/n;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xueqiu/android/base/n;->i:Lcom/xueqiu/android/base/n;

    .line 140
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/n;->i:Lcom/xueqiu/android/base/n;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/base/n;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/n;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 453
    .line 456
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 460
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v4, "andfix"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    sget-object v1, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    const-string v2, "make base directory failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 492
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 497
    :cond_0
    :goto_0
    return-object v0

    .line 2506
    :cond_1
    :try_start_3
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 468
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 470
    const/16 v4, 0x400

    :try_start_4
    new-array v4, v4, [B

    .line 472
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 473
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 478
    :catch_0
    move-exception v1

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 480
    if-eqz v2, :cond_2

    .line 482
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 486
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 490
    :cond_2
    :goto_4
    if-eqz v3, :cond_0

    .line 492
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 494
    :catch_1
    move-exception v1

    goto :goto_0

    .line 482
    :cond_3
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 486
    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 492
    :goto_6
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_7
    move-object v0, v1

    .line 494
    goto :goto_0

    .line 480
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_8
    if-eqz v2, :cond_4

    .line 482
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 486
    :goto_9
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 490
    :cond_4
    :goto_a
    if-eqz v3, :cond_5

    .line 492
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 494
    :cond_5
    :goto_b
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_b

    .line 480
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 478
    :catch_b
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2

    :catch_c
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/xueqiu/android/base/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/base/n;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    .line 3290
    if-eqz p1, :cond_0

    const-string v0, "url"

    .line 3291
    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checksum"

    .line 3292
    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3293
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    const-string v1, "request patch config failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    :cond_1
    :goto_0
    return-void

    .line 3297
    :cond_2
    const-string v0, "checksum"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    .line 3298
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3300
    iget-object v1, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    const-string v2, "andfix_last_load"

    const-string v3, "andfix_last_load_default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3301
    iget-object v2, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3302
    sget-object v0, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    const-string v1, "onRequestCompleteForNextLaunch -> last had add "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3306
    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3307
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->removeAllPatch()V

    .line 3308
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3309
    const-string v1, "andfix_last_load"

    iget-object v2, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3310
    const-string v1, "patch_file_launch_to_load"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3312
    sget-object v0, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    const-string v1, "onRequestCompleteForNextLaunch -> success to clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3316
    :cond_4
    invoke-direct {p0, v0}, Lcom/xueqiu/android/base/n;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3317
    if-eqz v0, :cond_1

    .line 3318
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    .line 3319
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/n;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3320
    iget-object v1, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->removeAllPatch()V

    .line 3321
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/n;->h:Ljava/lang/String;

    .line 3322
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3323
    const-string v1, "andfix_last_load"

    iget-object v2, p0, Lcom/xueqiu/android/base/n;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3324
    const-string v1, "patch_file_launch_to_load"

    iget-object v2, p0, Lcom/xueqiu/android/base/n;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/n;->d:Z

    .line 3327
    sget-object v0, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestCompleteForNextLaunch -> ready for next launch to load patch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/base/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/16 v2, 0x100

    const/4 v0, 0x0

    .line 418
    :try_start_0
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArbvR4JQ4i7DzFHuWGzdI\n/vEWGayCjNMnltyGdDDuq901KUmvgivbAiO8ZZG/mZ2cDG1OEv4Onedlcz4ftI7q\n9jSGAWyfxxaQY57jrOpUa8svVCvWM2w123aWmD3s2Tcoylg7hynTwSyz6rh8yf0b\nhkpgoXOVaXHNHJW9kF2LyCxS1wuLlk7gQVqpPWRlB8cYsuTiV99C/m+KK3sdhYAY\nuriMBewtpB5LUuGq3iZDctdoDWzH/BM1kvST9nzchXUesxH9PXbyRCy1/dqNb1I+\nglmf+vO+nO53vQ6Z9D+dZjCssgskovsH/yxF5MweQABmf86vR/KkgXuKyAcotFXA\ntwIDAQAB"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/snowballfinance/message/a/b;->a([B)Ljava/security/Key;

    move-result-object v1

    .line 419
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 2436
    const-string v3, "RSA/NONE/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 2437
    const/4 v3, 0x2

    invoke-virtual {v6, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2438
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v3, v0

    move v4, v0

    .line 2442
    :goto_0
    array-length v1, v5

    sub-int/2addr v1, v3

    if-lez v1, :cond_1

    .line 2443
    array-length v1, v5

    sub-int/2addr v1, v3

    .line 2444
    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v6, v5, v3, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 2445
    const/4 v3, 0x0

    array-length v8, v1

    invoke-virtual {v7, v1, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2446
    add-int/lit8 v3, v4, 0x1

    .line 2442
    mul-int/lit16 v1, v3, 0x100

    move v4, v3

    move v3, v1

    goto :goto_0

    .line 2449
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 420
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 422
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 423
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 424
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 432
    :goto_1
    return v0

    .line 428
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    sget-object v1, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    const-string v2, "check patch security failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-object v0

    .line 513
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 515
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/base/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/base/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/base/n;->h:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->removeAllPatch()V

    .line 502
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 503
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/base/n;)V
    .locals 1

    .prologue
    .line 75
    .line 3345
    iget-boolean v0, p0, Lcom/xueqiu/android/base/n;->c:Z

    if-nez v0, :cond_0

    .line 3348
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->loadPatch()V

    .line 3349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/n;->c:Z

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/base/n;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/base/n;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/xueqiu/android/base/n;->d()V

    return-void
.end method

.method static synthetic f(Lcom/xueqiu/android/base/n;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/base/n;)Lcom/alipay/euler/andfix/patch/PatchManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->b:Lcom/alipay/euler/andfix/patch/PatchManager;

    iget-object v1, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->init(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->e:Landroid/content/SharedPreferences;

    const-string v1, "patch_file_launch_to_load"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, v0}, Lcom/xueqiu/android/base/n;->a(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success add patch while launch , path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-direct {p0}, Lcom/xueqiu/android/base/n;->d()V

    .line 160
    sget-object v1, Lcom/xueqiu/android/base/n;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "andfix init failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    const-string v1, "andfix_init_failed"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Lcom/xueqiu/android/base/o;)V
    .locals 5

    .prologue
    .line 353
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 355
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 356
    const-string v1, "user_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 357
    const-string v1, "device"

    invoke-static {}, Lcom/xueqiu/android/base/util/i;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "system_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "channel_id"

    .line 2041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v4

    .line 359
    invoke-virtual {v4}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/common/model/ClientInfo;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 363
    const-string v2, "user_verify_type"

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserVerifyType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://api.xueqiu.com/jspatch/config.json"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?app_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "02dfc0390c04c8e8464e0b2d13c5cfcb"

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&app_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xueqiu/android/base/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&user_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/xueqiu/android/base/n$6;

    invoke-direct {v1, p0, v0, p2}, Lcom/xueqiu/android/base/n$6;-><init>(Lcom/xueqiu/android/base/n;Ljava/lang/String;Lcom/xueqiu/android/base/o;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 399
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/n$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void

    .line 375
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    new-instance v1, Lcom/xueqiu/android/base/n$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/n$2;-><init>(Lcom/xueqiu/android/base/n;)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/base/n;->a(Landroid/content/Context;Lcom/xueqiu/android/base/o;)V

    .line 195
    return-void
.end method
