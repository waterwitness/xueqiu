.class public final Lcom/xueqiu/android/base/h5/l;
.super Ljava/lang/Object;
.source "JSBridge.java"


# instance fields
.field a:Lcom/xueqiu/android/base/h5/c;

.field b:Lcom/xueqiu/android/common/widget/SNBWebView;

.field c:Z

.field d:Lcom/xueqiu/android/base/b/ao;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/common/widget/SNBWebView;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/l;->c:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 103
    iput-object p2, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 104
    return-void
.end method

.method private static a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 287
    invoke-static {p0, p1}, Lcom/xueqiu/android/base/h5/l;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    :cond_0
    return p2
.end method

.method private static a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    invoke-static {p0, p1}, Lcom/xueqiu/android/base/h5/l;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 800
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    if-nez p2, :cond_2

    :try_start_0
    const-string v0, ""

    .line 307
    :goto_1
    const-string v1, "javascript:setTimeout(function(){%s(%s)}, 0)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 310
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string v1, "JSBridge"

    const-string v2, "evaluate:%s(%s)"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 305
    :cond_2
    :try_start_1
    const-string v0, "\'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/xueqiu/android/base/util/az;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 312
    :cond_3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 528
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_3

    .line 529
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 530
    invoke-virtual {p4}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 531
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 534
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v6, v2

    .line 540
    :goto_1
    if-eqz p8, :cond_2

    .line 541
    const-string v0, "aid"

    invoke-static {p4, v0}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v0}, Lcom/xueqiu/android/base/h5/l;->b(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_2

    .line 544
    const-string v1, "write_access_token"

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_2
    new-instance v0, Lcom/xueqiu/android/base/h5/l$2;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    move-object v1, p0

    move-object v3, p7

    move-object v4, p6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/h5/l$2;-><init>(Lcom/xueqiu/android/base/h5/l;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v1, "/tc/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 577
    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "XQTC_SINCE_2015"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 578
    invoke-static {v1}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {v1}, Lcom/xueqiu/android/base/util/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    const-string v2, "signature"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const/16 v1, 0x3e8

    if-le p3, v1, :cond_4

    .line 581
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    move v5, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 588
    :goto_2
    return-void

    .line 538
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    goto :goto_1

    .line 583
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v6, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_2

    .line 586
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v6, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonArray;)V
    .locals 7

    .prologue
    .line 766
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 767
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 771
    :try_start_0
    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    .line 773
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 774
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 775
    const-string v5, "key"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 776
    const-string v6, "value"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_1
    return-void

    .line 782
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;
    .locals 1

    .prologue
    .line 45069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 787
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 291
    invoke-static {p0, p1}, Lcom/xueqiu/android/base/h5/l;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 107
    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/l;->c:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v9, v1

    .line 270
    :cond_1
    :goto_0
    return v9

    .line 1959
    :cond_2
    const-string v0, "js://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1963
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1965
    invoke-static {p1}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1966
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1967
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 111
    :cond_3
    :goto_1
    const-string v0, "js:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "js://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 112
    :cond_4
    const-string v0, ""

    .line 113
    const-string v2, "js://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 114
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_5
    :goto_2
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_3
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 124
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 125
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 126
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v3, "alert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 128
    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    .line 129
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    .line 130
    invoke-static {v0, v3}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "button_title"

    .line 131
    invoke-static {v0, v4}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2349
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v5}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2350
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2351
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2353
    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Lcom/xueqiu/android/base/h5/l$1;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/base/h5/l$1;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2360
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1968
    :cond_7
    invoke-static {p1}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1969
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1970
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto/16 :goto_1

    .line 115
    :cond_8
    const-string v2, "js:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 116
    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 121
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_3

    .line 132
    :cond_9
    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 133
    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "message"

    .line 134
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "success"

    .line 135
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "cancel"

    .line 136
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "success_button"

    .line 137
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel_button"

    .line 138
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2364
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2365
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2366
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2367
    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v1, Lcom/xueqiu/android/base/h5/l$9;

    invoke-direct {v1, p0, v5}, Lcom/xueqiu/android/base/h5/l$9;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2373
    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    const v2, 0x7f070070

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-instance v2, Lcom/xueqiu/android/base/h5/l$8;

    invoke-direct {v2, p0, v6}, Lcom/xueqiu/android/base/h5/l$8;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2380
    new-instance v0, Lcom/xueqiu/android/base/h5/l$10;

    invoke-direct {v0, p0, v6}, Lcom/xueqiu/android/base/h5/l$10;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2386
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    .line 2367
    goto :goto_4

    :cond_b
    move-object v0, v2

    .line 2373
    goto :goto_5

    .line 139
    :cond_c
    const-string v3, "request"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 140
    const-string v1, "need_write_token"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v8

    .line 141
    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 142
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timeout"

    const/16 v4, 0x3e8

    .line 143
    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "data"

    .line 144
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "data"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    :goto_6
    const-string v5, "success"

    .line 145
    invoke-static {v0, v5}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "complete"

    .line 146
    invoke-static {v0, v6}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "error"

    .line 147
    invoke-static {v0, v7}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 141
    invoke-direct/range {v0 .. v8}, Lcom/xueqiu/android/base/h5/l;->a(Ljava/lang/String;Ljava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    move-object v4, v7

    .line 144
    goto :goto_6

    .line 149
    :cond_e
    const-string v3, "wxBind"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 150
    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2409
    new-instance v2, Lcom/xueqiu/android/base/b/ao;

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/base/h5/l$11;

    invoke-direct {v4, p0, v1, v0}, Lcom/xueqiu/android/base/h5/l$11;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/base/b/ao;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V

    iput-object v2, p0, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    .line 2421
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ao;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2422
    const-string v0, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2424
    :cond_f
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->d:Lcom/xueqiu/android/base/b/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ao;->a()V

    goto/16 :goto_0

    .line 151
    :cond_10
    const-string v3, "switchToSNBIconReward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 152
    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 3390
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v4}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/community/RewardActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3391
    const-string v4, "extra_donate_to_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3392
    const-string v2, "extra_donate_to_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3393
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/k;->startActivity(Landroid/content/Intent;)V

    .line 3395
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/community/CashierActivity;

    if-eqz v0, :cond_1

    .line 3396
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/CashierActivity;

    .line 4067
    iput-boolean v9, v0, Lcom/xueqiu/android/community/CashierActivity;->j:Z

    .line 3398
    invoke-virtual {v0}, Lcom/xueqiu/android/community/CashierActivity;->finish()V

    goto/16 :goto_0

    .line 153
    :cond_11
    const-string v3, "mergeRequests"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 154
    const-string v2, "urls"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    :goto_7
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    .line 157
    invoke-virtual {v2, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 159
    :cond_12
    const-string v1, "success"

    .line 160
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "complete"

    .line 161
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "error"

    .line 162
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4591
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v7

    new-instance v0, Lcom/xueqiu/android/base/h5/l$3;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/base/h5/l$3;-><init>(Lcom/xueqiu/android/base/h5/l;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v7, v5, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 163
    :cond_13
    const-string v3, "redirect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 164
    const-string v2, "url"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "backward_count"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v4

    .line 4613
    const-string v5, "^/?cube/contract-result\\?(.*)"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 4614
    const-string v0, "^/?cube/contract-result\\?(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4615
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4616
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4617
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 4618
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4619
    const-string v5, "extra_cube_symbol"

    const-string v0, "symbol"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4620
    const/high16 v0, 0x4000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4621
    new-instance v5, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    const-class v6, Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4622
    const-string v6, "extra_cube_symbol"

    const-string v0, "symbol"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4623
    const-string v0, "extra_readonly"

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4624
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v3

    const-class v6, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4625
    const-string v3, "extra_url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4626
    new-array v2, v11, [Landroid/content/Intent;

    aput-object v4, v2, v1

    aput-object v5, v2, v9

    aput-object v0, v2, v10

    .line 4627
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/a/k;->startActivities([Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4631
    :cond_14
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 5084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v5

    .line 5134
    iget-object v5, v5, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 4632
    invoke-virtual {v5, v2}, Lcom/xueqiu/android/base/h5/k;->find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 4633
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    if-eqz v1, :cond_1

    .line 4651
    :cond_15
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 6060
    const-string v5, "PUSH"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "MODAL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 6061
    :cond_16
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v5

    const-class v6, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6062
    const-string v5, "extra_url"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6063
    new-instance v2, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v2}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 6064
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7066
    iput-object v0, v2, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 6065
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6066
    const-string v5, "extra_event"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6067
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6068
    const-string v0, "MODAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8046
    iget v0, v2, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 6069
    const v3, 0x7f040012

    const v5, 0x7f040008

    invoke-virtual {v1, v4, v0, v3, v5}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;III)V

    .line 6073
    :goto_8
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    goto/16 :goto_0

    .line 4637
    :cond_17
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 4638
    const-string v0, "%s%s"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "https://xueqiu.com"

    aput-object v4, v3, v1

    aput-object v2, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4640
    :goto_9
    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4641
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 4643
    :cond_18
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4644
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4645
    const-string v3, "extra_url_path"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4647
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 9046
    :cond_19
    iget v0, v2, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 6071
    invoke-virtual {v1, v4, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;I)V

    goto :goto_8

    .line 6074
    :cond_1a
    const-string v2, "POP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "CLOSE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "POP_CANCEL"

    .line 6075
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "CLOSE_CANCEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6076
    :cond_1b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6077
    iget-object v5, v1, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    if-eqz v5, :cond_1c

    .line 6078
    iget-object v5, v1, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    const-string v6, "successData"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "successData"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 9066
    :goto_a
    iput-object v0, v5, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 6079
    iget-object v0, v1, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    add-int/lit8 v4, v4, -0x1

    .line 9074
    iput v4, v0, Lcom/xueqiu/android/base/h5/b;->c:I

    .line 6080
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6081
    const-string v4, "extra_event"

    iget-object v5, v1, Lcom/xueqiu/android/base/h5/c;->d:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6082
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6084
    :cond_1c
    const-string v0, "POP_CANCEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "CLOSE_CANCEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6085
    :cond_1d
    const-string v0, "extra_event_result"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6087
    :cond_1e
    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/a/k;->setResult(ILandroid/content/Intent;)V

    .line 6088
    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 6089
    const-string v0, "CLOSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "CLOSE_CANCEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6090
    :cond_1f
    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f040007

    const v2, 0x7f040013

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 6078
    :cond_20
    const-string v0, ""

    goto :goto_a

    .line 165
    :cond_21
    const-string v3, "setToolbar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 166
    const-string v1, "buttons"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 9662
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, p0, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/l;Lcom/google/gson/JsonArray;)V

    goto/16 :goto_0

    .line 167
    :cond_22
    const-string v3, "setRightNavigationButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 168
    const-string v2, "title"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon"

    .line 169
    invoke-static {v0, v3}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "action"

    .line 170
    invoke-static {v0, v4}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9666
    iget-object v4, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 10096
    new-instance v5, Lcom/xueqiu/android/base/h5/d;

    invoke-direct {v5, v4, v1}, Lcom/xueqiu/android/base/h5/d;-><init>(Lcom/xueqiu/android/base/h5/c;B)V

    .line 10324
    iput-object v2, v5, Lcom/xueqiu/android/base/h5/d;->a:Ljava/lang/String;

    .line 10340
    iput-object v0, v5, Lcom/xueqiu/android/base/h5/d;->c:Ljava/lang/String;

    .line 10099
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 10100
    const-string v0, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 10103
    const-string v2, "%s%s%s"

    new-array v6, v11, [Ljava/lang/Object;

    .line 11084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 11134
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 10103
    iget-object v7, v4, Lcom/xueqiu/android/base/h5/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/base/h5/k;->find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/base/h5/g;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "/"

    .line 10104
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, ""

    :goto_b
    aput-object v0, v6, v9

    aput-object v3, v6, v10

    .line 10103
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11332
    iput-object v0, v5, Lcom/xueqiu/android/base/h5/d;->b:Ljava/lang/String;

    .line 10108
    :cond_23
    iput-object v5, v4, Lcom/xueqiu/android/base/h5/c;->c:Lcom/xueqiu/android/base/h5/d;

    .line 10109
    invoke-virtual {v4}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 10104
    :cond_24
    const-string v0, "/"

    goto :goto_b

    .line 171
    :cond_25
    const-string v3, "updateBroker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 172
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    .line 12069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 11791
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/trade/model/BrokerAccountToken;)V

    .line 11795
    invoke-direct {p0}, Lcom/xueqiu/android/base/h5/l;->a()V

    goto/16 :goto_0

    .line 173
    :cond_26
    const-string v3, "getAccessToken"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 174
    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12735
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 13069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 13182
    iget-object v2, v2, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 12735
    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_27
    const-string v3, "getWriteToken"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 176
    const-string v1, "aid"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13739
    invoke-static {v1}, Lcom/xueqiu/android/base/h5/l;->b(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v0

    .line 13740
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v0

    .line 13741
    :goto_c
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13740
    :cond_28
    const-string v0, ""

    goto :goto_c

    .line 177
    :cond_29
    const-string v3, "verifyTelephone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 14675
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 16069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v3

    .line 16186
    iget-boolean v3, v3, Lcom/xueqiu/android/base/t;->d:Z

    .line 15603
    if-eqz v3, :cond_2a

    .line 15604
    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 17152
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    goto/16 :goto_0

    .line 15608
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15609
    const-string v3, "extra_verify_phone_intent"

    invoke-virtual {v1, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15610
    new-instance v3, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v3}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 15611
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18066
    iput-object v0, v3, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 15612
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15613
    const-string v4, "extra_event"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15614
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19046
    iget v0, v3, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 15615
    invoke-virtual {v2, v1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;I)V

    .line 15616
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    goto/16 :goto_0

    .line 179
    :cond_2b
    const-string v3, "getUserInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 180
    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19809
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 19810
    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/c;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19809
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 19811
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 19812
    const-string v3, "stColor"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19813
    const-string v0, "uid"

    .line 20069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 20077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 19813
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 19814
    const-string v3, "theme"

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "night"

    :goto_d
    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19815
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19814
    :cond_2c
    const-string v0, "day"

    goto :goto_d

    .line 181
    :cond_2d
    const-string v3, "floatNotification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 182
    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    .line 183
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    .line 184
    invoke-static {v0, v3}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20803
    iget-object v3, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x270d

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;I)V

    .line 20804
    iget-object v3, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20805
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 185
    :cond_2e
    const-string v3, "datePicker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 186
    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "cancel"

    .line 187
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "date"

    .line 188
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20836
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 20837
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20838
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 20839
    invoke-virtual {v0, v9}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 20840
    invoke-virtual {v0, v9}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 20841
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/base/h5/l$5;

    invoke-direct {v3, p0, v0, v6}, Lcom/xueqiu/android/base/h5/l$5;-><init>(Lcom/xueqiu/android/base/h5/l;Landroid/app/DatePickerDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 20851
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    const v3, 0x7f070070

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/base/h5/l$6;

    invoke-direct {v3, p0, v8}, Lcom/xueqiu/android/base/h5/l$6;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 20860
    new-instance v1, Lcom/xueqiu/android/base/h5/l$7;

    invoke-direct {v1, p0, v8}, Lcom/xueqiu/android/base/h5/l$7;-><init>(Lcom/xueqiu/android/base/h5/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 20866
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_0

    .line 189
    :cond_2f
    const-string v3, "searchTCStock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 21671
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 22113
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22114
    new-instance v3, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v3}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 22115
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23066
    iput-object v4, v3, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 22116
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22117
    const-string v5, "extra_event"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22119
    const-string v5, "etype"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 22120
    const-string v5, "market_type"

    const-string v6, "etype"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22123
    :cond_30
    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24046
    iget v0, v3, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 22124
    const v4, 0x7f040010

    const v5, 0x7f040008

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;III)V

    .line 22125
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    goto/16 :goto_0

    .line 191
    :cond_31
    const-string v3, "pickPhoto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 24679
    iget-object v3, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 25493
    const-string v2, "maxWidth"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "maxWidth"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    :goto_e
    iput v2, v3, Lcom/xueqiu/android/base/h5/c;->h:I

    .line 25495
    new-instance v2, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v2}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 25496
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 26066
    iput-object v4, v2, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 27050
    const/16 v4, 0x2713

    iput v4, v2, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 25498
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    .line 25500
    new-array v4, v10, [Ljava/lang/String;

    const v5, 0x7f070211

    invoke-virtual {v3, v5}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v1, 0x7f0703f6

    invoke-virtual {v3, v1}, Lcom/xueqiu/android/base/h5/c;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    .line 25501
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070562

    .line 25502
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/xueqiu/android/base/h5/c$7;

    invoke-direct {v5, v3, v0, v2}, Lcom/xueqiu/android/base/h5/c$7;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/google/gson/JsonObject;Lcom/xueqiu/android/base/h5/b;)V

    .line 25503
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/h5/c$6;

    invoke-direct {v1, v3, v2}, Lcom/xueqiu/android/base/h5/c$6;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;)V

    .line 25528
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 25534
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 25493
    :cond_32
    const/16 v2, 0x44c

    goto :goto_e

    .line 193
    :cond_33
    const-string v3, "SNBTrackEvent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 195
    const-string v2, "info"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "info"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 196
    const-string v2, "info"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 198
    :cond_34
    const-string v2, "page"

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "event"

    invoke-static {v0, v3, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v0

    .line 27724
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 27725
    if-eqz v7, :cond_35

    .line 27726
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/base/h5/l$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/h5/l$4;-><init>(Lcom/xueqiu/android/base/h5/l;)V

    .line 27728
    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/l$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 27726
    invoke-virtual {v0, v7, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 27729
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->setAttach(Ljava/util/Map;)V

    .line 28053
    :cond_35
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 27731
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 199
    :cond_36
    const-string v3, "share"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 28683
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 29680
    invoke-virtual {v1, v0, v7}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/google/gson/JsonObject;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 201
    :cond_37
    const-string v3, "screenshotAndShare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 29687
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 29756
    const-string v2, "screenshot"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "share"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29759
    const-string v2, "screenshot"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/google/gson/JsonObject;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 29760
    const-string v3, "share"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/google/gson/JsonObject;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 203
    :cond_38
    const-string v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 30691
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 30733
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/google/gson/JsonObject;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 30734
    const/16 v1, 0x64

    .line 30735
    const-string v4, "compressRate"

    invoke-static {v0, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "compressRate"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_39

    .line 30736
    const-string v1, "compressRate"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 30738
    :cond_39
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30739
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v5, v1, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30740
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 30741
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 30742
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 30743
    :goto_f
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 30744
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 30745
    const-string v6, "imageBase64"

    invoke-virtual {v5, v6, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30746
    iget-object v3, v2, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v5}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 30747
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 30750
    :catch_1
    move-exception v1

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 30751
    :goto_10
    iget-object v1, v2, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v1, v0, v7}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30742
    :cond_3a
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    .line 30750
    :cond_3b
    const-string v0, ""

    goto :goto_10

    .line 205
    :cond_3c
    const-string v3, "wakeApp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 206
    const-string v1, "notifyType"

    invoke-static {v0, v1, v9}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "notifyUrl"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadUrl"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "openType"

    invoke-static {v0, v4, v9}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v0

    .line 31703
    if-ne v1, v10, :cond_3d

    .line 31704
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31705
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31706
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 31708
    :cond_3d
    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/bd;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31710
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31711
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    .line 31713
    const v0, 0x7f070425

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 207
    :cond_3e
    const-string v3, "pay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 32695
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->b(Lcom/google/gson/JsonObject;)V

    goto/16 :goto_0

    .line 209
    :cond_3f
    const-string v3, "purchaseSnowCoin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 32699
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 33049
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/community/RechargeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33050
    new-instance v3, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v3}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 33051
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33066
    iput-object v0, v3, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 33052
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33053
    const-string v4, "extra_event"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33054
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34046
    iget v0, v3, Lcom/xueqiu/android/base/h5/b;->a:I

    .line 33055
    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;I)V

    .line 33056
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    goto/16 :goto_0

    .line 211
    :cond_40
    const-string v3, "newRetweet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 212
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    :goto_11
    const-string v2, "success"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "cancel"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "erro"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "complete"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34875
    if-nez v1, :cond_42

    .line 34876
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v0, v4, v7}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_41
    move-object v1, v7

    .line 212
    goto :goto_11

    .line 34880
    :cond_42
    const-string v0, "content"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34881
    const-string v2, "statusId"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34882
    const-string v7, "username"

    invoke-static {v1, v7}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 34885
    new-instance v7, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v8, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v7, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34886
    const-string v1, "extra_write_type"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34887
    const-string v1, "extra_status_id"

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34889
    const-string v1, "extra_retweet_text"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34890
    const-string v0, "JSBridge"

    const-string v1, "newRetweet"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34892
    new-instance v0, Lcom/xueqiu/android/base/h5/m;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/base/h5/m;-><init>(Lcom/xueqiu/android/base/h5/l;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34894
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/b;

    .line 35067
    iput-object v0, v1, Lcom/xueqiu/android/common/b;->o:Landroid/content/BroadcastReceiver;

    .line 34896
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "newRetweet"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 34898
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 213
    :cond_43
    const-string v3, "replyComment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 214
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    :goto_12
    const-string v2, "success"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "cancel"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "erro"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "complete"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35903
    if-nez v1, :cond_45

    .line 35904
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v0, v4, v7}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_44
    move-object v1, v7

    .line 214
    goto :goto_12

    .line 35908
    :cond_45
    const-string v0, "content"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35909
    const-string v2, "statusId"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35910
    const-string v7, "commentId"

    invoke-static {v1, v7}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35911
    const-string v8, "username"

    invoke-static {v1, v8}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 35912
    const-string v10, "isRetweet"

    invoke-static {v1, v10}, Lcom/xueqiu/android/base/h5/l;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v1

    .line 35915
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v11}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35917
    new-instance v11, Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {v11}, Lcom/xueqiu/android/community/model/Comment;-><init>()V

    .line 35918
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/xueqiu/android/community/model/Comment;->setId(J)V

    .line 35919
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/xueqiu/android/community/model/Comment;->setStatusId(J)V

    .line 35920
    invoke-virtual {v11, v0}, Lcom/xueqiu/android/community/model/Comment;->setText(Ljava/lang/String;)V

    .line 35921
    invoke-virtual {v11, v8}, Lcom/xueqiu/android/community/model/Comment;->setScreenName(Ljava/lang/String;)V

    .line 35923
    const-string v7, "extra_write_type"

    invoke-virtual {v10, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35924
    const-string v7, "extra_comment"

    invoke-virtual {v10, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35925
    const-string v7, "extra_status_id"

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35926
    const-string v2, "extra_isretweet"

    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35927
    const-string v1, "extra_reply_somebody"

    invoke-virtual {v10, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35929
    const-string v1, "extra_retweet_text"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35930
    const-string v0, "JSBridge"

    const-string v1, "replyComment"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35932
    new-instance v0, Lcom/xueqiu/android/base/h5/m;

    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xueqiu/android/base/h5/m;-><init>(Lcom/xueqiu/android/base/h5/l;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35934
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/b;

    .line 36067
    iput-object v0, v1, Lcom/xueqiu/android/common/b;->o:Landroid/content/BroadcastReceiver;

    .line 35936
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "replyComment"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 35938
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0, v10}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 215
    :cond_46
    const-string v3, "bindBroker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 36947
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 37665
    const-string v2, "broker"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "broker"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 37668
    const-string v2, "broker"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    .line 37669
    invoke-virtual {v1, v0, v2, v9}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/google/gson/JsonObject;Lcom/xueqiu/android/trade/model/TradeAccount;I)V

    goto/16 :goto_0

    .line 217
    :cond_47
    const-string v3, "refreshBrokerToken"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 37943
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 38620
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38623
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 38624
    const-string v4, "result_data"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "result_data"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 38628
    const-string v4, "result_data"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v4

    .line 38656
    const-string v5, "result_code"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    const-string v5, "70006"

    const-string v6, "result_code"

    .line 38657
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    move v1, v9

    .line 38630
    :cond_48
    if-eqz v1, :cond_49

    .line 38631
    invoke-virtual {v2, v0, v4, v10}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/google/gson/JsonObject;Lcom/xueqiu/android/trade/model/TradeAccount;I)V

    goto/16 :goto_0

    .line 38635
    :cond_49
    new-instance v5, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v5}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 38636
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39066
    iput-object v0, v5, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 38637
    invoke-virtual {v2, v5}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    .line 38639
    const-string v0, "result_code"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "result_code"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 38640
    :goto_13
    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v3, Lcom/xueqiu/android/base/h5/c$8;

    invoke-direct {v3, v2, v5}, Lcom/xueqiu/android/base/h5/c$8;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;)V

    invoke-static {v1, v4, v0, v3}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    .line 38651
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c;->a()V

    goto/16 :goto_0

    .line 38639
    :cond_4a
    const-string v0, "70005"

    move-object v1, v0

    goto :goto_13

    .line 219
    :cond_4b
    const-string v3, "encryptWithRSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 220
    const-string v1, "origin"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    .line 221
    invoke-static {v0, v3}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39746
    :try_start_3
    iget-object v3, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-static {v1}, Lcom/xueqiu/android/trade/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 39748
    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_4c
    const-string v3, "isAppInstalled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 223
    const-string v2, "package"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39753
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 39754
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 39757
    const/4 v4, 0x1

    :try_start_4
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v9

    .line 39762
    :goto_14
    iget-object v4, p0, Lcom/xueqiu/android/base/h5/l;->b:Lcom/xueqiu/android/common/widget/SNBWebView;

    .line 40321
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 40325
    if-eqz v0, :cond_4d

    :try_start_5
    const-string v2, "true"

    .line 40327
    :goto_15
    const-string v5, "javascript:setTimeout(function(){%s(%s)}, 0)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40329
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_4e

    .line 40330
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 40334
    :catch_3
    move-exception v2

    .line 40335
    const-string v4, "JSBridge"

    const-string v5, "evaluate:%s(%s)"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 39760
    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_14

    .line 40325
    :cond_4d
    :try_start_6
    const-string v2, "false"

    goto :goto_15

    .line 40332
    :cond_4e
    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 224
    :cond_4f
    const-string v3, "openApp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 225
    const-string v1, "package"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/h5/l;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "params"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/h5/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonArray;)V

    goto/16 :goto_0

    .line 226
    :cond_50
    const-string v3, "startPAOpenAccountVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 40720
    iget-object v7, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 40764
    new-instance v8, Lcom/xueqiu/android/base/h5/b;

    invoke-direct {v8}, Lcom/xueqiu/android/base/h5/b;-><init>()V

    .line 40765
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41066
    iput-object v2, v8, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 40766
    invoke-virtual {v7, v8}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;)V

    .line 40768
    const-string v2, "channel_id"

    .line 41110
    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40769
    const-string v2, "uid"

    .line 42110
    const-string v4, ""

    invoke-static {v0, v2, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40771
    invoke-static {v11}, Lcom/pingan/main/PAVideoManage;->setEnvironment(I)V

    .line 40772
    new-array v4, v9, [Ljava/lang/String;

    aput-object v3, v4, v1

    .line 40774
    invoke-virtual {v7}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WOPgRx"

    const-string v5, "com.xueqiu.android"

    new-instance v6, Lcom/xueqiu/android/base/h5/c$9;

    invoke-direct {v6, v7, v8, v3, v2}, Lcom/xueqiu/android/base/h5/c$9;-><init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v0 .. v6}, Lcom/pingan/main/PAVideoManage;->checkChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/pingan/main/CheckChannelCallback;)V

    goto/16 :goto_0

    .line 228
    :cond_51
    const-string v1, "notifyPayState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "state"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/h5/l;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    .line 42403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.paySuccess"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42404
    const-string v2, "extra_pay_state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42405
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_52
    move v9, v1

    .line 232
    goto/16 :goto_0

    .line 234
    :cond_53
    const-string v2, "hideloading"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 43341
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->z()V

    goto/16 :goto_0

    .line 236
    :cond_54
    const-string v2, "showloading"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 43345
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->y()Landroid/app/Dialog;

    goto/16 :goto_0

    .line 238
    :cond_55
    const-string v2, "walletDonateSucced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    const-string v2, "walletDeposit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 43823
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/RechargeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43824
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 242
    :cond_56
    const-string v2, "goToTradeHome"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 43951
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43952
    const-string v1, "extra_notification"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43953
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43954
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V

    .line 43955
    invoke-direct {p0}, Lcom/xueqiu/android/base/h5/l;->a()V

    goto/16 :goto_0

    .line 244
    :cond_57
    const-string v2, "updateBrokerList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 245
    invoke-direct {p0}, Lcom/xueqiu/android/base/h5/l;->a()V

    goto/16 :goto_0

    :cond_58
    move v9, v1

    .line 247
    goto/16 :goto_0

    .line 250
    :cond_59
    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 252
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 258
    :cond_5a
    const-string v0, "close://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 259
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    goto/16 :goto_0

    .line 262
    :cond_5b
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 263
    if-eqz v1, :cond_5c

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 264
    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/base/h5/H5Activity;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    .line 265
    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/H5Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/H5Activity;

    .line 44102
    iput-boolean v9, v0, Lcom/xueqiu/android/base/h5/H5Activity;->k:Z

    goto/16 :goto_0

    :cond_5c
    move v9, v1

    .line 270
    goto/16 :goto_0

    :cond_5d
    move-object v0, v2

    goto/16 :goto_9
.end method
