.class final Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->a(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;)Lcom/xueqiu/android/common/widget/ptr/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->a(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;)Lcom/xueqiu/android/common/widget/ptr/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->a()V

    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->b(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;)Z

    .line 309
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 310
    return-void
.end method
