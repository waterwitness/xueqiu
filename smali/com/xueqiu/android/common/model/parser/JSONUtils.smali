.class public Lcom/xueqiu/android/common/model/parser/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JSONUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(Lcom/xueqiu/android/common/model/parser/Parser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 51
    :cond_0
    :try_start_0
    instance-of v1, p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    if-eqz v1, :cond_1

    .line 52
    check-cast p0, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/GPagedParser;->parse(Ljava/lang/String;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_1
    instance-of v1, p0, Lcom/xueqiu/android/common/model/parser/InTradeParser;

    if-eqz v1, :cond_2

    .line 54
    check-cast p0, Lcom/xueqiu/android/common/model/parser/InTradeParser;

    invoke-static {p0, p1}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->parseInTrade(Lcom/xueqiu/android/common/model/parser/GParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_2
    instance-of v1, p0, Lcom/xueqiu/android/common/model/parser/GParser;

    if-eqz v1, :cond_4

    .line 56
    move-object v0, p0

    check-cast v0, Lcom/xueqiu/android/common/model/parser/GParser;

    move-object v1, v0

    .line 57
    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/parser/GParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/parser/GParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 58
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonObject;

    .line 59
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/parser/GParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/parser/GParser;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    check-cast p0, Lcom/xueqiu/android/common/model/parser/GParser;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/parser/GParser;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 63
    :cond_4
    instance-of v1, p0, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;

    if-eqz v1, :cond_5

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_5
    instance-of v1, p0, Lcom/xueqiu/android/common/model/parser/GroupParser;

    if-eqz v1, :cond_6

    .line 66
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_6
    instance-of v1, p0, Lcom/xueqiu/android/common/model/parser/SNBJsonObjectPaser;

    if-eqz v1, :cond_7

    .line 68
    new-instance v1, Lcom/xueqiu/android/common/model/SNBJSONObject;

    invoke-direct {v1, p1}, Lcom/xueqiu/android/common/model/SNBJSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 69
    :cond_7
    :try_start_1
    instance-of v1, p0, Lcom/xueqiu/android/common/model/parser/SNBJsonArrayPaser;

    if-eqz v1, :cond_8

    .line 70
    new-instance v1, Lcom/xueqiu/android/common/model/SNBJsonArray;

    invoke-direct {v1, p1}, Lcom/xueqiu/android/common/model/SNBJsonArray;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :goto_0
    return-wide v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    const-string v0, ""

    goto :goto_0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    const-string v0, ""

    goto :goto_0
.end method

.method private static parseInTrade(Lcom/xueqiu/android/common/model/parser/GParser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 109
    const-string v1, "60000"

    const-string v2, "result_code"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/parser/GParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/parser/GParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    const-string v1, "result_data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/parser/GParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/parser/GParser;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-string v2, "result_data"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/parser/GParser;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    new-instance v1, Lcom/xueqiu/android/base/a/a;

    invoke-direct {v1}, Lcom/xueqiu/android/base/a/a;-><init>()V

    .line 119
    const-string v2, "result_code"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    iput-object v2, v1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 120
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    iput-object v2, v1, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    .line 121
    const-string v2, "result_data"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "result_data"

    .line 122
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    const-string v2, "result_data"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1096
    iput-object v0, v1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 125
    :cond_2
    throw v1

    .line 128
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
