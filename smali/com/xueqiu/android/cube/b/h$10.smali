.class final Lcom/xueqiu/android/cube/b/h$10;
.super Ljava/lang/Object;
.source "RebalanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$10;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 297
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$10;->a:Lcom/xueqiu/android/cube/b/h;

    .line 1504
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1505
    const-string v0, "extra_market"

    .line 1564
    iget-object v3, v1, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 1505
    const-string v4, "arg_market"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    iget-object v0, v1, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 2227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 1506
    if-eqz v0, :cond_1

    .line 1507
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1508
    iget-object v0, v1, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 3227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 1508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 1509
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1511
    :cond_0
    const-string v0, "extra_exclude_list"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1513
    :cond_1
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/cube/b/h;->a(Landroid/content/Intent;)V

    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$10;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->f(Lcom/xueqiu/android/cube/b/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x581

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 306
    :goto_1
    return-void

    .line 5053
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x57f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1
.end method
