.class final Lcom/xueqiu/android/stock/c/x$8;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x;->D()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x640

    .line 357
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->h(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 357
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->h(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 358
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    const-string v2, "extra_be_from_stock"

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/content/Intent;I)V

    .line 365
    :cond_0
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xb

    invoke-direct {v1, v4, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 366
    const-string v2, "symbol"

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "status_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v2, "type"

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$8;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 369
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 372
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getMark()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 374
    :try_start_0
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x640

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 376
    const-string v2, "ad_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPromotionId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
