.class final Lcom/xueqiu/android/community/TopicDetailActivity$9;
.super Ljava/lang/Object;
.source "TopicDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/TopicDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/TopicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicDetailActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$9;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$9;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicDetailActivity$9;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/TopicDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x7d1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 392
    const-string v1, "special_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$9;->b:Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/TopicDetailActivity;->f(Lcom/xueqiu/android/community/TopicDetailActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/TopicDetailActivity$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 394
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 395
    return-void
.end method
