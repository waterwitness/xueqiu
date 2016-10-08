.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;
.super Lrx/i;
.source "StockGainAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a()V
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
.field final synthetic a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 134
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    check-cast p1, Ljava/util/List;

    .line 1144
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->c(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1145
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->c(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1146
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->d(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/cube/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/q;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 139
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 140
    return-void
.end method
