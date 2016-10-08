.class final Lcom/xueqiu/android/trade/c/o$2;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$2;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$2;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$2;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 564
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentTradeAccountTid()Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentJumpAccountTid()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 566
    :goto_0
    iget-object v4, p0, Lcom/xueqiu/android/trade/c/o$2;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v4}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 567
    iget-object v4, p0, Lcom/xueqiu/android/trade/c/o$2;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v4}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v4

    aget-object v4, v4, v0

    .line 568
    if-eqz v4, :cond_0

    .line 569
    invoke-virtual {v4}, Lcom/xueqiu/android/trade/c/s;->u()Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v4

    .line 570
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 571
    iget-object v4, p0, Lcom/xueqiu/android/trade/c/o$2;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v4}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    .line 572
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->clearCurrentJumpAccountTid()V

    .line 566
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    iget-object v4, p0, Lcom/xueqiu/android/trade/c/o$2;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v4}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    goto :goto_1

    .line 579
    :cond_2
    return-void
.end method
