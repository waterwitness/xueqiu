.class final Lcom/xueqiu/android/trade/c/i$4;
.super Ljava/lang/Object;
.source "PerformanceItemFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/i;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/xueqiu/android/trade/c/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/i;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$4;->b:Lcom/xueqiu/android/trade/c/i;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/i$4;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$4;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$4;->b:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->b(Lcom/xueqiu/android/trade/c/i;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$4;->b:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->b(Lcom/xueqiu/android/trade/c/i;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method
