.class final Lcom/xueqiu/android/trade/c/g$4;
.super Lcom/xueqiu/android/base/b/p;
.source "PerformanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/g;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/g;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 276
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->z()V

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cachePerformanceGroups"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 281
    if-nez v1, :cond_0

    .line 282
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/g$4$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/g$4$1;-><init>(Lcom/xueqiu/android/trade/c/g$4;)V

    .line 283
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/g$4$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 285
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/g;->a(Lcom/xueqiu/android/trade/c/g;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 286
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/g;->c(Lcom/xueqiu/android/trade/c/g;)V

    .line 288
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 273
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 1292
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->z()V

    .line 1297
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1298
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 1299
    new-instance v2, Lcom/xueqiu/android/trade/model/PerformanceGroup;

    invoke-direct {v2}, Lcom/xueqiu/android/trade/model/PerformanceGroup;-><init>()V

    .line 1301
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->setName(Ljava/lang/String;)V

    .line 1302
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->setId(J)V

    .line 1304
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/g;->d(Lcom/xueqiu/android/trade/c/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/g;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cachePerformanceGroups"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/g;->d(Lcom/xueqiu/android/trade/c/g;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$4;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/g;->c(Lcom/xueqiu/android/trade/c/g;)V

    goto :goto_0
.end method
