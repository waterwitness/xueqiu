.class public Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "StockSearchKeywordParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/stock/model/StockSearchKeyword;",
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
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/StockSearchKeyword;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockSearchKeyword;-><init>()V

    .line 24
    const-string v1, "symbol"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const-string v1, "symbol"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->setSymbol(Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string v1, "code"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->setCode(Ljava/lang/String;)V

    .line 30
    :cond_1
    const-string v1, "exchange"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    const-string v1, "exchange"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->setExchange(Ljava/lang/String;)V

    .line 33
    :cond_2
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->setName(Ljava/lang/String;)V

    .line 36
    :cond_3
    const-string v1, "enName"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    const-string v1, "enName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->setEnName(Ljava/lang/String;)V

    .line 39
    :cond_4
    const-string v1, "searchName"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 40
    const-string v1, "searchName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "|"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->setSearchName(Ljava/lang/String;)V

    .line 42
    :cond_5
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/StockSearchKeywordParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/StockSearchKeyword;

    move-result-object v0

    return-object v0
.end method
