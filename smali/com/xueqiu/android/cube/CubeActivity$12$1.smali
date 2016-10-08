.class final Lcom/xueqiu/android/cube/CubeActivity$12$1;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity$12;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity$12;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity$12;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$12$1;->a:Lcom/xueqiu/android/cube/CubeActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$12$1;->a:Lcom/xueqiu/android/cube/CubeActivity$12;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->d(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1393
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 379
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$12$1;->a:Lcom/xueqiu/android/cube/CubeActivity$12;

    iget-object v2, v2, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeActivity;->g(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$12$1;->a:Lcom/xueqiu/android/cube/CubeActivity$12;

    iget-object v3, v3, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->h(Lcom/xueqiu/android/cube/CubeActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$12$1;->a:Lcom/xueqiu/android/cube/CubeActivity$12;

    iget-object v3, v3, Lcom/xueqiu/android/cube/CubeActivity$12;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 2066
    iget-object v3, v3, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v3}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Landroid/support/v7/a/a;->c()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 380
    return-void
.end method
