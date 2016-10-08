.class final Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;
.super Ljava/lang/Object;
.source "CommentsPostedByMeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/CommentsPostedByMeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/a;

.field final synthetic b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;Lcom/xueqiu/android/community/a/a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;->a:Lcom/xueqiu/android/community/a/a;

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
    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;->a:Lcom/xueqiu/android/community/a/a;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 66
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const-string v2, "status_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$1;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
