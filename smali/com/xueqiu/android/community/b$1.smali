.class final Lcom/xueqiu/android/community/b$1;
.super Ljava/lang/Object;
.source "CommentReceiveFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/b;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/community/b$1;->a:Lcom/xueqiu/android/community/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/community/b$1;->a:Lcom/xueqiu/android/community/b;

    invoke-static {v0}, Lcom/xueqiu/android/community/b;->a(Lcom/xueqiu/android/community/b;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/b$1;->a:Lcom/xueqiu/android/community/b;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/b;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string v2, "status_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/community/b$1;->a:Lcom/xueqiu/android/community/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/b;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
