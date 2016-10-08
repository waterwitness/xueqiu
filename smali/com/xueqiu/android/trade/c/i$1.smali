.class final Lcom/xueqiu/android/trade/c/i$1;
.super Ljava/lang/Object;
.source "PerformanceItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/i;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/i;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$1;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$1;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/SearchStockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$1;->a:Lcom/xueqiu/android/trade/c/i;

    .line 1719
    iget-object v1, v1, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 2719
    iget-object v1, v1, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 154
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i$1;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/a/i;->a(Landroid/content/Intent;I)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5e9

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 156
    return-void
.end method
