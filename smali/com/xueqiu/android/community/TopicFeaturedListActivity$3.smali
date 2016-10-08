.class final Lcom/xueqiu/android/community/TopicFeaturedListActivity$3;
.super Ljava/lang/Object;
.source "TopicFeaturedListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicFeaturedListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$3;->a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

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
    .line 87
    if-lez p3, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$3;->a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->c(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)Lcom/xueqiu/android/community/a/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/TopicInfo;

    .line 89
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$3;->a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    const-class v3, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string v2, "topic_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    iget-object v2, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$3;->a:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x7d0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 93
    const-string v2, "special_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 96
    :cond_0
    return-void
.end method
