.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2;
.super Ljava/lang/Object;
.source "StockGainAnalysisActivity.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/google/gson/JsonObject;",
        "Lrx/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/StockGain;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 158
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1161
    const-string v0, "stock_list"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1162
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2$1;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2;)V

    .line 1163
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1162
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1164
    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    .line 158
    return-object v0
.end method
