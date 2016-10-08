.class public Lcom/xueqiu/android/common/model/parser/StockQuoteParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "StockQuoteParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 26
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/model/StockQuote;->setOriginalJson(Lorg/json/JSONObject;)V

    .line 27
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/StockQuoteParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    return-object v0
.end method
