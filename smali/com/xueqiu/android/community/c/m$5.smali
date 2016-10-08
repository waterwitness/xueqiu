.class final Lcom/xueqiu/android/community/c/m$5;
.super Ljava/lang/Object;
.source "PaidMentionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/m;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/m;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

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
    const/16 v4, 0x3e8

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/m;->f(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 162
    iget-object v1, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/m;->g(Lcom/xueqiu/android/community/c/m;)I

    move-result v1

    if-nez v1, :cond_1

    .line 163
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/m;->h(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/community/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/k;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/m;->h(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/community/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/k;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 165
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/m;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v0, v1, v4}, Lcom/xueqiu/android/community/c/m;->a(Landroid/content/Intent;I)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/m;->i(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/community/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/i;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/m;->i(Lcom/xueqiu/android/community/c/m;)Lcom/xueqiu/android/community/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/i;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/m;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/community/c/m$5;->a:Lcom/xueqiu/android/community/c/m;

    invoke-virtual {v0, v1, v4}, Lcom/xueqiu/android/community/c/m;->a(Landroid/content/Intent;I)V

    goto :goto_0
.end method
