.class final Lcom/xueqiu/android/stock/c/x$7;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Lcom/xueqiu/android/trade/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x;->D()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->g(Lcom/xueqiu/android/stock/c/x;)V

    .line 308
    :cond_1
    if-eqz p2, :cond_2

    .line 309
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$7;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
