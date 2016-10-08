.class public Lcom/xueqiu/android/common/model/parser/TakingPositionParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "TakingPositionParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/trade/model/TakingPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/trade/model/TakingPosition;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/xueqiu/android/trade/model/TakingPosition;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TakingPosition;-><init>()V

    .line 24
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TakingPosition;->setName(Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string v1, "symbol"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TakingPosition;->setSymbol(Ljava/lang/String;)V

    .line 30
    :cond_1
    const-string v1, "avgPrice"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    const-string v1, "avgPrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setAvgPrice(D)V

    .line 33
    :cond_2
    const-string v1, "shares"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    const-string v1, "shares"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setShares(D)V

    .line 36
    :cond_3
    const-string v1, "floatAmount"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    const-string v1, "floatAmount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setFloatAmount(D)V

    .line 39
    :cond_4
    const-string v1, "dayfloatAmount"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    const-string v1, "dayfloatAmount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setFloatAmount(D)V

    .line 42
    :cond_5
    const-string v1, "floatRate"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    const-string v1, "floatRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setFloatRate(D)V

    .line 45
    :cond_6
    const-string v1, "accumRate"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    const-string v1, "accumRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setAccumRate(D)V

    .line 48
    :cond_7
    const-string v1, "accumAmount"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 49
    const-string v1, "accumAmount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setAccumAmount(D)V

    .line 51
    :cond_8
    const-string v1, "marketValue"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 52
    const-string v1, "marketValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setMarketValue(D)V

    .line 54
    :cond_9
    const-string v1, "cost"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 55
    const-string v1, "cost"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setCost(D)V

    .line 57
    :cond_a
    const-string v1, "quotePrice"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 58
    const-string v1, "quotePrice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/trade/model/TakingPosition;->setQuotePrice(D)V

    .line 60
    :cond_b
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/TakingPositionParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/trade/model/TakingPosition;

    move-result-object v0

    return-object v0
.end method
