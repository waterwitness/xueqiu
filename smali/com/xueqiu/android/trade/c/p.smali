.class final Lcom/xueqiu/android/trade/c/p;
.super Landroid/support/v4/a/v;
.source "TradeFragment.java"


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/c/o;Landroid/support/v4/a/q;)V
    .locals 1

    .prologue
    .line 399
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/p;->c:Lcom/xueqiu/android/trade/c/o;

    .line 400
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/p;->b:Ljava/util/List;

    .line 401
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/p;->c:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/model/TradeAccount;Z)Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 410
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/v;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/s;

    .line 411
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/p;->c:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v1

    aput-object v0, v1, p2

    .line 412
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 425
    const/4 v0, -0x2

    return v0
.end method
