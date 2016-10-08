.class public Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;
.super Ljava/lang/Object;
.source "PublicTimelineParser.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/PublicTimeline;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/PublicTimeline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v7, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-direct {v7}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;-><init>()V

    .line 27
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 28
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 29
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 31
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v6, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    new-instance v4, Lcom/xueqiu/android/common/model/parser/PublicTimelineParser$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/common/model/parser/PublicTimelineParser$1;-><init>(Lcom/xueqiu/android/common/model/parser/PublicTimelineParser;)V

    .line 32
    invoke-virtual {v4}, Lcom/xueqiu/android/common/model/parser/PublicTimelineParser$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 31
    invoke-virtual {v1, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 33
    const-string v2, "column"

    invoke-virtual {v6, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    move-object v4, v2

    .line 34
    :goto_1
    const-string v2, "icon"

    invoke-virtual {v6, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    move-object v5, v2

    .line 35
    :goto_2
    const-string v2, "target"

    invoke-virtual {v6, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object v6, v2

    .line 36
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/community/model/PublicTimeline;

    .line 37
    invoke-virtual {v2, v4}, Lcom/xueqiu/android/community/model/PublicTimeline;->setHeaderText(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v5}, Lcom/xueqiu/android/community/model/PublicTimeline;->setHeaderIcon(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v6}, Lcom/xueqiu/android/community/model/PublicTimeline;->setTarget(Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :cond_0
    const-string v2, "column"

    invoke-virtual {v6, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 34
    :cond_1
    const-string v2, "icon"

    invoke-virtual {v6, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    .line 35
    :cond_2
    const-string v2, "target"

    invoke-virtual {v6, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    .line 41
    :cond_3
    invoke-virtual {v7, v1}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->addAll(Ljava/util/Collection;)Z

    .line 29
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 45
    :cond_4
    const-string v0, "next_max_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    const-string v0, "next_max_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->setNextMaxId(J)V

    .line 48
    :cond_5
    const-string v0, "next_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    const-string v0, "next_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->setNextId(J)V

    .line 52
    :cond_6
    const-string v0, "addition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "addition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 53
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "addition"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    invoke-virtual {v7, v0}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->setAddition(Lcom/google/gson/JsonArray;)V

    .line 55
    :cond_7
    return-object v7
.end method
