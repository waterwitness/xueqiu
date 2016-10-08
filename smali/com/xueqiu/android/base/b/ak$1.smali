.class final Lcom/xueqiu/android/base/b/ak$1;
.super Ljava/lang/Object;
.source "StockClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;Ljava/util/List;ZZLcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ak;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ak$1;->a:Lcom/xueqiu/android/base/b/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1257
    :goto_0
    return-object v0

    .line 1260
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1262
    new-instance v3, Lcom/xueqiu/android/common/model/parser/StockQuoteParser;

    invoke-direct {v3}, Lcom/xueqiu/android/common/model/parser/StockQuoteParser;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/model/parser/StockQuoteParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    .line 1263
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 251
    goto :goto_0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method
