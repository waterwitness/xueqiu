.class final Lcom/xueqiu/android/trade/c/o$4;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$4;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 676
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$4;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/o;->m(Lcom/xueqiu/android/trade/c/o;)Lcom/xueqiu/android/common/widget/m;

    move-result-object v1

    .line 1101
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/m;->c:Landroid/support/v7/internal/view/menu/ab;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ab;->c()V

    .line 678
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e0788

    if-ne v1, v2, :cond_0

    .line 679
    const-string v1, "/broker/config"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o$4;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 691
    :goto_0
    return v0

    .line 681
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e078a

    if-ne v1, v2, :cond_1

    .line 682
    const-string v1, "/broker/coupon/coupon-list"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o$4;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e0789

    if-ne v1, v2, :cond_2

    .line 685
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$4;->a:Lcom/xueqiu/android/trade/c/o;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/o$4;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/trade/c/o;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 687
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e000a

    if-ne v1, v2, :cond_3

    .line 688
    const-string v1, "/broker/trade/qa"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o$4;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 691
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
