.class public Lcom/xueqiu/android/common/model/parser/StockGroupParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "StockGroupParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/stock/model/StockGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/StockGroup;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/xueqiu/android/stock/model/StockGroup;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockGroup;-><init>()V

    .line 26
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setName(Ljava/lang/String;)V

    .line 29
    :cond_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setGrouId(I)V

    .line 32
    :cond_1
    const-string v1, "stocks"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    const-string v2, "stocks"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33
    const-string v1, "stocks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setStockCodes([Ljava/lang/String;)V

    .line 35
    :cond_2
    const-string v1, "createAt"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    new-instance v1, Ljava/util/Date;

    const-string v2, "createAt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setCreateAt(Ljava/util/Date;)V

    .line 38
    :cond_3
    const-string v1, "orderId"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/StockGroupParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    const-string v1, "orderId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockGroup;->setOrderId(I)V

    .line 41
    :cond_4
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/StockGroupParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/StockGroup;

    move-result-object v0

    return-object v0
.end method
