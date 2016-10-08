.class final Lcom/xueqiu/android/stock/c/n$2;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 485
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x578

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    move-object v1, v0

    .line 490
    :goto_0
    if-nez p2, :cond_3

    .line 491
    const-string v0, "action"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->e(Lcom/xueqiu/android/stock/c/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/n;->n(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/model/Portfolio;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->o(Lcom/xueqiu/android/stock/c/n;)V

    .line 1053
    :cond_0
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 507
    return-void

    .line 487
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x4b0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    move-object v1, v0

    goto :goto_0

    .line 496
    :cond_2
    const v0, 0x7f070187

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_1

    .line 500
    :cond_3
    const-string v0, "action"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    const-string v2, "extra_group_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v2, "extra_portfolio_category"

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/n$2;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/stock/c/n;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method
