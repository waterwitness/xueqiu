.class final Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;
.super Ljava/lang/Object;
.source "TopicFeaturedListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicFeaturedListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/TopicInfo;

.field final synthetic b:Lcom/xueqiu/android/community/TopicFeaturedListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicFeaturedListActivity;Lcom/xueqiu/android/community/model/TopicInfo;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;->b:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;->a:Lcom/xueqiu/android/community/model/TopicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;->a:Lcom/xueqiu/android/community/model/TopicInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicId()J

    move-result-wide v0

    .line 142
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;->b:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    const-class v4, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v3, "topic_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    iget-object v3, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;->b:Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-virtual {v3, v2}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x7d0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 146
    const-string v3, "special_id"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 148
    return-void
.end method
