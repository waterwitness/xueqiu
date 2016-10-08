.class final Lcom/xueqiu/android/stock/c/p$16;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 919
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    .line 1538
    const/4 v1, 0x0

    iput v1, v0, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 1539
    iget v1, v0, Lcom/xueqiu/android/stock/a/q;->h:I

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/q;->a(I)I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 921
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->i(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/c/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->i(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/c/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v1

    .line 1595
    iget v1, v1, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 922
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v2

    .line 1603
    iget v2, v2, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 922
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v3

    .line 1611
    iget v3, v3, Lcom/xueqiu/android/stock/a/q;->f:I

    .line 922
    invoke-interface {v0, v1, v2, v3}, Lcom/xueqiu/android/stock/c/r;->a(III)V

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$16;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->f(Lcom/xueqiu/android/stock/c/p;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 925
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x4b0

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 931
    :goto_0
    return-void

    .line 3053
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 928
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x578

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
