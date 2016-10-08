.class public Lcom/xueqiu/android/common/model/parser/StockParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "StockParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/Stock;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/Stock;-><init>()V

    .line 25
    const-string v1, "stock_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "stock_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/stock/model/Stock;->setStockId(J)V

    .line 28
    :cond_0
    const-string v1, "ind_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string v1, "ind_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/stock/model/Stock;->setIndId(J)V

    .line 31
    :cond_1
    const-string v1, "ind_name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "ind_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setIndName(Ljava/lang/String;)V

    .line 34
    :cond_2
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setName(Ljava/lang/String;)V

    .line 37
    :cond_3
    const-string v1, "code"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setCode(Ljava/lang/String;)V

    .line 40
    :cond_4
    const-string v1, "symbol"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setCode(Ljava/lang/String;)V

    .line 43
    :cond_5
    const-string v1, "enName"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 44
    const-string v1, "enName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setEnName(Ljava/lang/String;)V

    .line 46
    :cond_6
    const-string v1, "hasexist"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 47
    const-string v1, "hasexist"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setHasExist(Z)V

    .line 49
    :cond_7
    const-string v1, "type"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 50
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setType(Ljava/lang/String;)V

    .line 52
    :cond_8
    const-string v1, "flag"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 53
    const-string v1, "flag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/stock/model/StockStatus;->fromInt(I)Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setFlag(Lcom/xueqiu/android/stock/model/StockStatus;)V

    .line 55
    :cond_9
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/StockParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/Stock;

    move-result-object v0

    return-object v0
.end method
