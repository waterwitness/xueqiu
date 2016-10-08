.class final Lcom/xueqiu/android/base/util/av$11;
.super Lcom/xueqiu/android/base/b/p;
.source "SyncLaunchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/av;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$11;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 502
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1509
    if-eqz p1, :cond_0

    .line 1512
    const-string v0, "has_update"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "has_update"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    .line 1514
    const-string v2, "content"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1515
    const-string v3, "android_apk_version_config"

    iget-object v4, p0, Lcom/xueqiu/android/base/util/av$11;->a:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v4, v4, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1515
    invoke-static {v3, v2, v4}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1516
    const-string v3, "android_apk_version_config_update"

    iget-object v4, p0, Lcom/xueqiu/android/base/util/av$11;->a:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v4, v4, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1516
    invoke-static {v3, v0, v1, v4}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putLong(Ljava/lang/String;JLandroid/content/Context;)V

    .line 1518
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 1519
    const-string v1, "image_url"

    .line 3106
    invoke-static {v0, v1, v5}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1520
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 502
    :cond_0
    return-void
.end method
