.class final Lcom/xueqiu/android/trade/c/o$11;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Lcom/xueqiu/android/trade/patternlock/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->F()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$11;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1361
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/base/t;->g:Z

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$11;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->j(Lcom/xueqiu/android/trade/c/o;)V

    .line 454
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$11;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$11;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$11;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$11;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 456
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->C_()V

    .line 461
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 465
    if-nez p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$11;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->k(Lcom/xueqiu/android/trade/c/o;)V

    .line 468
    :cond_0
    return-void
.end method
