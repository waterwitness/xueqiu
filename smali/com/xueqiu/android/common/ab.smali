.class final Lcom/xueqiu/android/common/ab;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WebViewActivity;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/xueqiu/android/common/ab;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final share(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 498
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 499
    new-instance v2, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v2}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 500
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 2121
    iput-object v1, v2, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 503
    :cond_0
    const-string v1, "img"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 504
    const-string v1, "img"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 2137
    iput-object v1, v2, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 509
    :goto_0
    const-string v1, ""

    .line 510
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 3129
    iput-object v1, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 514
    :cond_1
    const-string v3, "description"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "description"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4113
    iput-object v1, v2, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 518
    :cond_2
    const-string v1, ""

    .line 519
    const-string v3, "target"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 520
    const-string v1, "target"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_1
    const-string v1, "SinaWeibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 523
    iget-object v0, p0, Lcom/xueqiu/android/common/ab;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->e(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 534
    :cond_3
    :goto_2
    return-void

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/common/ab;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02006e

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3101
    iput-object v1, v2, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 524
    :cond_5
    :try_start_1
    const-string v1, "FriendCircle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 525
    iget-object v0, p0, Lcom/xueqiu/android/common/ab;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->c(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    goto :goto_2

    .line 526
    :cond_6
    const-string v1, "Wechat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 527
    iget-object v0, p0, Lcom/xueqiu/android/common/ab;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->b(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    goto :goto_2

    .line 528
    :cond_7
    const-string v1, "QQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/xueqiu/android/common/ab;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/aj;->d(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method
