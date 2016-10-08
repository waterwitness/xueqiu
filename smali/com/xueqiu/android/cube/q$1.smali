.class final Lcom/xueqiu/android/cube/q$1;
.super Ljava/lang/Object;
.source "StockGainAnalysisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/cube/r;

.field final synthetic c:Lcom/xueqiu/android/cube/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/q;ILcom/xueqiu/android/cube/r;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/xueqiu/android/cube/q$1;->c:Lcom/xueqiu/android/cube/q;

    iput p2, p0, Lcom/xueqiu/android/cube/q$1;->a:I

    iput-object p3, p0, Lcom/xueqiu/android/cube/q$1;->b:Lcom/xueqiu/android/cube/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/cube/q$1;->c:Lcom/xueqiu/android/cube/q;

    invoke-static {v0}, Lcom/xueqiu/android/cube/q;->a(Lcom/xueqiu/android/cube/q;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/q$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/xueqiu/android/cube/q$1;->c:Lcom/xueqiu/android/cube/q;

    invoke-static {v0}, Lcom/xueqiu/android/cube/q;->a(Lcom/xueqiu/android/cube/q;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/q$1;->a:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/q$1;->b:Lcom/xueqiu/android/cube/r;

    iget-object v0, p0, Lcom/xueqiu/android/cube/q$1;->c:Lcom/xueqiu/android/cube/q;

    invoke-static {v0}, Lcom/xueqiu/android/cube/q;->a(Lcom/xueqiu/android/cube/q;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/xueqiu/android/cube/q$1;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/q;->a(Lcom/xueqiu/android/cube/r;Z)V

    .line 383
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x580

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 384
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/q$1;->c:Lcom/xueqiu/android/cube/q;

    iget-object v2, v2, Lcom/xueqiu/android/cube/q;->d:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->i(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 385
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 386
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/q$1;->c:Lcom/xueqiu/android/cube/q;

    invoke-static {v0}, Lcom/xueqiu/android/cube/q;->a(Lcom/xueqiu/android/cube/q;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/q$1;->a:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
