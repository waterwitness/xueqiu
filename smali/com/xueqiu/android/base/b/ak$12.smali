.class final Lcom/xueqiu/android/base/b/ak$12;
.super Ljava/lang/Object;
.source "StockClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ak;->a([IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/xueqiu/android/base/b/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ak;[I)V
    .locals 0

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ak$12;->b:Lcom/xueqiu/android/base/b/ak;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/ak$12;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1557
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1559
    new-instance v2, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;

    new-instance v0, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    const-string v3, "stocks"

    invoke-direct {v2, v0, v3}, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;Ljava/lang/String;)V

    .line 1560
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/xueqiu/android/base/b/ak$12;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1561
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1562
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/model/parser/PagedGroupParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v3

    .line 1563
    iget-object v4, p0, Lcom/xueqiu/android/base/b/ak$12;->a:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1565
    :cond_0
    return-object v1
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1570
    const/4 v0, 0x0

    return-object v0
.end method
