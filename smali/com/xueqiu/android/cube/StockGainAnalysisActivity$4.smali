.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;
.super Ljava/lang/Object;
.source "StockGainAnalysisActivity.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/StockGainAnalysisActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->c:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    iput p2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->a:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 211
    check-cast p1, Lrx/i;

    .line 3214
    invoke-static {}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->c:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->i(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->a:I

    iget v3, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->b:I

    new-instance v4, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;

    iget-object v5, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;->c:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-direct {v4, p0, v5, p1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4$1;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;Lcom/xueqiu/android/base/b/q;Lrx/i;)V

    .line 3559
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 211
    return-void
.end method
