.class final Lcom/xueqiu/android/cube/CubeTopListActivity$5;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeTopListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$5;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$5;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->g(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v1, p3, v0

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$5;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->h(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/cube/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/u;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 235
    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$5;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/CubeTopListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v3, "extra_cube_symbol"

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$5;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x582

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 242
    const-string v3, "symbol"

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "rank"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
