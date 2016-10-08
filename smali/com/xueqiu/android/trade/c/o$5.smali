.class final Lcom/xueqiu/android/trade/c/o$5;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->J()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$5;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 709
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$5;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$5;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$5;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$5;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 714
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Landroid/support/v4/a/i;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/xueqiu/android/trade/c/s;

    if-eqz v1, :cond_0

    .line 717
    check-cast v0, Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->u()Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 719
    const-string v1, "%s/broker/share/trade-share?tid=%s&aid=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://xueqiu.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 720
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 719
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$5;->a:Lcom/xueqiu/android/trade/c/o;

    .line 720
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v1

    .line 719
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
