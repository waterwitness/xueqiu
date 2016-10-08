.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;
.super Ljava/lang/Object;
.source "StockGainAnalysisActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/f;


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
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->e(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->f(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->e(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->g(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 156
    const-string v0, "pageID"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->e(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->g(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)I

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->e(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$2;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2$1;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;)V

    .line 166
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 188
    :cond_0
    return-void
.end method
