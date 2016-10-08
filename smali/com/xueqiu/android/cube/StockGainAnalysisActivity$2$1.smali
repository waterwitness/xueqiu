.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;
.super Lrx/i;
.source "StockGainAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/StockGain;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V

    .line 170
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 166
    check-cast p1, Ljava/util/List;

    .line 1180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->h(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->c(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1184
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->d(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/cube/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/q;->notifyDataSetChanged()V

    .line 166
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 175
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method
