.class final Lcom/xueqiu/android/trade/c/o$6;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$6;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 112
    .line 1115
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$6;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$6;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$6;->a:Lcom/xueqiu/android/trade/c/o;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$6;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/o;->a(Lcom/xueqiu/android/trade/c/o;I)V

    .line 112
    :cond_0
    return-void
.end method
