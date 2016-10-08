.class final Lcom/xueqiu/android/stock/c/k$4;
.super Ljava/lang/Object;
.source "PortfolioCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/k;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xueqiu/android/stock/c/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/k;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/k$4;->c:Lcom/xueqiu/android/stock/c/k;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/k$4;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/xueqiu/android/stock/c/k$4;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k$4;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k$4;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k$4;->c:Lcom/xueqiu/android/stock/c/k;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/k;->c(Lcom/xueqiu/android/stock/c/k;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    .line 132
    return-void
.end method
