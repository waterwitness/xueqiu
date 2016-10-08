.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StockGainAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;Lcom/xueqiu/android/base/b/q;Lrx/i;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;->b:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;

    iput-object p3, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;->a:Lrx/i;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 215
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1223
    if-eqz p1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;->b:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->c:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;Lcom/google/gson/JsonObject;)V

    .line 1226
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "stock_list"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "stock_list"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;->a:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 215
    return-void
.end method
