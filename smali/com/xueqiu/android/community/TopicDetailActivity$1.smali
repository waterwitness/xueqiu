.class final Lcom/xueqiu/android/community/TopicDetailActivity$1;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

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
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->getHeaderViewsCount()I

    move-result v0

    .line 110
    sub-int v1, p3, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/TopicDetailActivity;->a(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p3, v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->b(Lcom/xueqiu/android/community/TopicDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->c(Lcom/xueqiu/android/community/TopicDetailActivity;)Lcom/xueqiu/android/community/a/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/ao;->a()Ljava/util/ArrayList;

    move-result-object v1

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 113
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/TopicDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v2, "status_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$1;->a:Lcom/xueqiu/android/community/TopicDetailActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/xueqiu/android/community/TopicDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x7d1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 118
    const-string v2, "special_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 123
    :cond_0
    return-void
.end method
