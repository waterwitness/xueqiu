.class public final Lcom/xueqiu/android/base/h5/k;
.super Ljava/lang/Object;
.source "H5Routes.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/h5/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/k;->b:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/k;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/k;->refresh()V

    .line 31
    return-void
.end method


# virtual methods
.method public final find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    const-string v2, "https://xueqiu.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http://xueqiu.com"

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    const-string v2, "xueqiu.com"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 58
    const-string v3, "/"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_1
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_2
    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    aget-object v3, v2, v0

    .line 2041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v4

    .line 2119
    iget-boolean v4, v4, Lcom/xueqiu/android/base/f;->b:Z

    .line 1104
    if-eqz v4, :cond_3

    .line 1106
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1107
    const v5, 0x7f0701dc

    invoke-static {v5}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    :cond_3
    if-eqz v0, :cond_5

    .line 70
    new-instance v0, Lcom/xueqiu/android/base/h5/i;

    invoke-direct {v0, v3}, Lcom/xueqiu/android/base/h5/i;-><init>(Ljava/lang/String;)V

    .line 91
    :cond_4
    :goto_0
    return-object v0

    .line 73
    :cond_5
    array-length v0, v2

    const/4 v4, 0x2

    if-le v0, v4, :cond_6

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_6
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v2, v0

    .line 3100
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 79
    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/xueqiu/android/base/h5/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    new-instance v0, Lcom/xueqiu/android/base/h5/h;

    invoke-direct {v0, v3}, Lcom/xueqiu/android/base/h5/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/k;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/k;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/g;

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "index.html"

    invoke-interface {v0, v3}, Lcom/xueqiu/android/base/h5/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xueqiu/android/base/h5/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_9
    move-object v0, v1

    .line 91
    goto :goto_0
.end method

.method public final refresh()V
    .locals 6

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 35
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 38
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 39
    aget-object v1, v2, v0

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/xueqiu/android/base/h5/k;->b:Ljava/util/Map;

    new-instance v5, Lcom/xueqiu/android/base/h5/j;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v3}, Lcom/xueqiu/android/base/h5/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 50
    :cond_1
    return-void
.end method
