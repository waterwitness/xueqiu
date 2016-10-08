.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;
.super Ljava/lang/Object;
.source "StockGainAnalysisActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/StockGainAnalysisActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)I

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->e(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$2;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;)V

    .line 129
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 149
    return-void
.end method
