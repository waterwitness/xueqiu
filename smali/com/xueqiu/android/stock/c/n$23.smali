.class final Lcom/xueqiu/android/stock/c/n$23;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$23;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$23;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->h(Lcom/xueqiu/android/stock/c/n;)Lcom/viewpagerindicator/TabPageIndicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->canScrollHorizontally(I)Z

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n$23;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/n;->i(Lcom/xueqiu/android/stock/c/n;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$23;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->i(Lcom/xueqiu/android/stock/c/n;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n$23;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/n;->i(Lcom/xueqiu/android/stock/c/n;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$23;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->i(Lcom/xueqiu/android/stock/c/n;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
