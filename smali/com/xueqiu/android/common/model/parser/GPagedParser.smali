.class public Lcom/xueqiu/android/common/model/parser/GPagedParser;
.super Ljava/lang/Object;
.source "GPagedParser.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# instance fields
.field private objectKey:Ljava/lang/String;

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;->objectKey:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;->type:Ljava/lang/reflect/Type;

    .line 34
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/xueqiu/android/common/model/PagedGroup;
    .locals 5

    .prologue
    .line 37
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 38
    new-instance v2, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;->objectKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v3, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;->objectKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_0
    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xueqiu/android/common/model/PagedGroup;->mContent:Ljava/lang/String;

    .line 52
    :cond_1
    const-string v1, "maxPage"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const-string v1, "maxPage"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 56
    :cond_2
    const-string v1, "max_page"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    const-string v1, "max_page"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 60
    :cond_3
    const-string v1, "page"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    const-string v1, "page"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setCurrentPage(I)V

    .line 64
    :cond_4
    const-string v1, "count"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 65
    const-string v1, "count"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 68
    :cond_5
    const-string v1, "total"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    const-string v1, "total"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 72
    :cond_6
    const-string v1, "totalCount"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    const-string v1, "totalCount"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 76
    :cond_7
    return-object v2
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method
