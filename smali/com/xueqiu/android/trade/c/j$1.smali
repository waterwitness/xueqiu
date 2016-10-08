.class final Lcom/xueqiu/android/trade/c/j$1;
.super Ljava/lang/Object;
.source "PositionCardFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/j;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/j;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 49
    .line 1052
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;)Lcom/xueqiu/android/trade/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1054
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->b(Lcom/xueqiu/android/trade/c/j;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->a(Ljava/util/List;)V

    .line 1055
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;)Lcom/xueqiu/android/trade/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/j;->b(Lcom/xueqiu/android/trade/c/j;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1219
    iput-object v1, v0, Lcom/xueqiu/android/trade/c/k;->b:Ljava/util/List;

    .line 1056
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->c(Lcom/xueqiu/android/trade/c/j;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->c(Lcom/xueqiu/android/trade/c/j;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j$1;->a:Lcom/xueqiu/android/trade/c/j;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/j;->a(Lcom/xueqiu/android/trade/c/j;)Lcom/xueqiu/android/trade/c/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 49
    :cond_0
    return-void
.end method
