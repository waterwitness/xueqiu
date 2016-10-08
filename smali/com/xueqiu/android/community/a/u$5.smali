.class final Lcom/xueqiu/android/community/a/u$5;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/u;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/PublicTimelineStatus;

.field final synthetic b:Lcom/xueqiu/android/community/model/PublicTimeline;

.field final synthetic c:Lcom/xueqiu/android/community/a/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/u;Lcom/xueqiu/android/community/model/PublicTimelineStatus;Lcom/xueqiu/android/community/model/PublicTimeline;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/xueqiu/android/community/a/u$5;->c:Lcom/xueqiu/android/community/a/u;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/u$5;->a:Lcom/xueqiu/android/community/model/PublicTimelineStatus;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/u$5;->b:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 382
    iget-object v0, p0, Lcom/xueqiu/android/community/a/u$5;->a:Lcom/xueqiu/android/community/model/PublicTimelineStatus;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->isPromotion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/xueqiu/android/community/a/u$5;->a:Lcom/xueqiu/android/community/model/PublicTimelineStatus;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/u$5;->c:Lcom/xueqiu/android/community/a/u;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 393
    :goto_0
    return-void

    .line 386
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/u$5;->c:Lcom/xueqiu/android/community/a/u;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/u$5;->a:Lcom/xueqiu/android/community/model/PublicTimelineStatus;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 389
    iget-object v1, p0, Lcom/xueqiu/android/community/a/u$5;->c:Lcom/xueqiu/android/community/a/u;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/u;->m:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->c(Lcom/xueqiu/android/community/a/o;)Lcom/xueqiu/android/common/c;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/xueqiu/android/common/c;->a(Landroid/content/Intent;I)V

    .line 390
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    iget-object v2, p0, Lcom/xueqiu/android/community/a/u$5;->b:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    invoke-static {v2, v4}, Lcom/xueqiu/android/community/a/o;->a(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 391
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/u$5;->a:Lcom/xueqiu/android/community/model/PublicTimelineStatus;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/PublicTimelineStatus;->getStatusId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
