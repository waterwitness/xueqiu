.class final Lcom/xueqiu/android/cube/CubeTopListActivity$6;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 329
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 330
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->e(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v2

    .line 1367
    iget-object v2, v2, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 334
    invoke-virtual {v2}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Ljava/util/ArrayList;)V

    .line 335
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;I)I

    .line 336
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->i(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    .line 337
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v0, 0x582

    invoke-direct {v1, v0, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 338
    const-string v2, "period"

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->c(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$6;->b:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeTopListActivity;->b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v0, v0, Lcom/xueqiu/android/cube/l;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
