.class final Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$1;
.super Ljava/lang/Object;
.source "SNBPullToRefreshListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnMoreClickListener(Landroid/view/View$OnClickListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$1;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$1;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 96
    return-void
.end method
