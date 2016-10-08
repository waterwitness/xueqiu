.class final Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;
.super Ljava/lang/Object;
.source "SNBPullToRefreshListView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Ljava/lang/CharSequence;I)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;->c:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;->a:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;->c:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Ljava/lang/CharSequence;I)V

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;->c:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 225
    return-void
.end method
