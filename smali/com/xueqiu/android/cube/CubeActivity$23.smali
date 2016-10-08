.class final Lcom/xueqiu/android/cube/CubeActivity$23;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$23;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$23;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$23;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->d(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1367
    iget-object v1, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 392
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$23;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 393
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$23;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 395
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$23;->b:Lcom/xueqiu/android/cube/CubeActivity;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/cube/CubeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 396
    return-void
.end method
