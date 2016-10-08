.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeFlyOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 729
    instance-of v0, p1, Lcom/android/volley/j;

    if-eqz v0, :cond_0

    .line 730
    const v0, 0x7f070448

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 734
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->c(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z

    .line 735
    return-void

    .line 732
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const v5, 0x7f0700d9

    const/4 v4, 0x0

    .line 726
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 1739
    const-string v0, "place log"

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1742
    invoke-static {p1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1744
    :goto_0
    return-void

    .line 1747
    :cond_0
    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1749
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/g;

    iget-object v0, v0, Lcom/xueqiu/android/cube/g;->resultCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->s(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->c(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z

    goto :goto_0

    .line 1751
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->finish()V

    .line 1753
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    const-class v3, Lcom/xueqiu/android/cube/CubeFlyOrderResultActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1754
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1755
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1756
    const-string v3, "cube_fly_order_result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v0, "cube_fly_order_tid"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->s(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string v0, "cube_fly_order_cube"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->t(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1759
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1760
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 1762
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->u(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->v(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1763
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x57a

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1767
    :goto_2
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->l(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1768
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1774
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1765
    :cond_2
    :try_start_2
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x57a

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto :goto_2

    .line 1771
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
