.class public final Lcom/xueqiu/android/base/b/ae;
.super Lcom/android/volley/p;
.source "SNBRequestQueue.java"


# instance fields
.field e:Lcom/xueqiu/android/base/util/y;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/b;Lcom/android/volley/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/volley/p;-><init>(Lcom/android/volley/b;Lcom/android/volley/h;B)V

    .line 26
    iput-object v1, p0, Lcom/xueqiu/android/base/b/ae;->f:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/xueqiu/android/base/b/ae;->e:Lcom/xueqiu/android/base/util/y;

    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ae;->f:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/b;Lcom/android/volley/h;Lcom/xueqiu/android/base/util/y;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/base/b/ae;-><init>(Ljava/lang/String;Lcom/android/volley/b;Lcom/android/volley/h;)V

    .line 36
    iput-object p4, p0, Lcom/xueqiu/android/base/b/ae;->e:Lcom/xueqiu/android/base/util/y;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/x;)Lcom/xueqiu/android/base/b/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/x",
            "<*>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1}, Lcom/xueqiu/android/base/b/x;->a()Ljava/lang/String;

    move-result-object v2

    .line 44
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 1113
    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "(\\w+\\.)*xueqiu\\.com"

    .line 1114
    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xueqiu.yun.pingan.com"

    .line 1115
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 48
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/xueqiu/android/base/util/ac;->a:Ljava/util/regex/Pattern;

    .line 49
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/xueqiu/android/base/b/x;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/xueqiu/android/base/b/x;->c()Ljava/util/Map;

    move-result-object v0

    .line 2080
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2081
    const-string v2, "User-Agent"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2082
    const-string v2, "User-Agent"

    const-string v5, "Xueqiu Android %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/xueqiu/android/base/b/ae;->f:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    :cond_3
    const-string v2, "Accept-Encoding"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2085
    const-string v2, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    :cond_4
    const-string v2, "Accept-Language"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2088
    const-string v2, "Accept-Language"

    const-string v5, "en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    :cond_5
    const-string v2, "Cookie"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 3182
    iget-object v2, v2, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 2092
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2093
    const-string v2, "Cookie"

    const-string v5, "xq_a_token=%s;u=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v8

    .line 4182
    iget-object v8, v8, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 2095
    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 5077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v8

    .line 2096
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2094
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2093
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 57
    sget-object v1, Lcom/xueqiu/android/base/util/ac;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    const-string v1, "host"

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5102
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/base/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_7
    invoke-virtual {p1, v0}, Lcom/xueqiu/android/base/b/x;->a(Ljava/util/Map;)V

    .line 64
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ae;->e:Lcom/xueqiu/android/base/util/y;

    if-eqz v0, :cond_9

    .line 65
    new-instance v0, Lcom/xueqiu/android/base/b/ae$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/ae$1;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    .line 5429
    iput-object v0, p1, Lcom/xueqiu/android/base/b/x;->m:Lcom/xueqiu/android/base/b/aa;

    .line 72
    :cond_9
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/base/b/ae;->a(Lcom/android/volley/n;)Lcom/android/volley/n;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    return-object p1

    :cond_a
    move v0, v1

    .line 1115
    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method
