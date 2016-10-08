.class final Lcom/xueqiu/android/cube/a/k$1;
.super Ljava/lang/Object;
.source "CubeSearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic b:Lcom/xueqiu/android/cube/a/l;

.field final synthetic c:Lcom/xueqiu/android/cube/a/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/k;Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/l;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/k$1;->c:Lcom/xueqiu/android/cube/a/k;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    iput-object p3, p0, Lcom/xueqiu/android/cube/a/k$1;->b:Lcom/xueqiu/android/cube/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 103
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/k$1;->c:Lcom/xueqiu/android/cube/a/k;

    invoke-static {v1}, Lcom/xueqiu/android/cube/a/k;->a(Lcom/xueqiu/android/cube/a/k;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    new-instance v1, Lcom/xueqiu/android/cube/a/k$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/a/k$1$1;-><init>(Lcom/xueqiu/android/cube/a/k$1;)V

    .line 135
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1;->c:Lcom/xueqiu/android/cube/a/k;

    .line 1169
    iget-object v1, v0, Lcom/xueqiu/android/cube/a/k;->e:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xueqiu/android/cube/a/k;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1170
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 1172
    :cond_2
    iget-object v1, v0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 1173
    iget-object v1, v0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1175
    :cond_3
    new-instance v1, Lcom/xueqiu/android/common/widget/ae;

    iget-object v2, v0, Lcom/xueqiu/android/cube/a/k;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    .line 1177
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/k;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1;->c:Lcom/xueqiu/android/cube/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/k;->notifyDataSetChanged()V

    goto :goto_1

    .line 143
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method
