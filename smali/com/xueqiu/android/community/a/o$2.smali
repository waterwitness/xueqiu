.class final Lcom/xueqiu/android/community/a/o$2;
.super Lcom/xueqiu/android/base/b/p;
.source "PublicTimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/o;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/gson/JsonObject;

.field final synthetic c:Lcom/xueqiu/android/community/model/PublicTimeline;

.field final synthetic d:Lcom/xueqiu/android/community/a/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/o;Ljava/util/List;Lcom/google/gson/JsonObject;Lcom/xueqiu/android/community/model/PublicTimeline;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/xueqiu/android/community/a/o$2;->d:Lcom/xueqiu/android/community/a/o;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/o$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/o$2;->b:Lcom/google/gson/JsonObject;

    iput-object p4, p0, Lcom/xueqiu/android/community/a/o$2;->c:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 973
    const-string v0, "lulei"

    invoke-virtual {p1}, Lcom/android/volley/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 970
    check-cast p1, Ljava/util/Map;

    .line 1978
    iget-object v0, p0, Lcom/xueqiu/android/community/a/o$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 1979
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 1980
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonArray;

    .line 1981
    if-eqz v1, :cond_0

    .line 1982
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/community/model/RecommendStock;->setCurrent(D)V

    .line 1983
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/community/model/RecommendStock;->setChange(D)V

    .line 1984
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/community/model/RecommendStock;->setPercentage(D)V

    goto :goto_0

    .line 1988
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/a/o$2;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 1989
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o$2;->b:Lcom/google/gson/JsonObject;

    const-string v2, "elements"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1990
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o$2;->b:Lcom/google/gson/JsonObject;

    const-string v2, "elements"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 1991
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o$2;->c:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/a/o$2;->b:Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/PublicTimeline;->setData(Ljava/lang/String;)V

    .line 1992
    iget-object v1, p0, Lcom/xueqiu/android/community/a/o$2;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->d(Lcom/xueqiu/android/community/a/o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/a/y;

    .line 2457
    iget-wide v4, v1, Lcom/xueqiu/android/community/a/y;->d:J

    .line 1993
    iget-object v3, p0, Lcom/xueqiu/android/community/a/o$2;->c:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1994
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/a/y;->a(Lcom/google/gson/JsonArray;)V

    .line 1995
    :cond_3
    return-void
.end method
