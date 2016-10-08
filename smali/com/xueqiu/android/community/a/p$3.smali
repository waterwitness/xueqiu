.class final Lcom/xueqiu/android/community/a/p$3;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/model/PublicTimeline;

.field final synthetic c:Lcom/xueqiu/android/community/a/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/p;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/community/model/PublicTimeline;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/xueqiu/android/community/a/p$3;->c:Lcom/xueqiu/android/community/a/p;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/p$3;->a:Lcom/xueqiu/android/community/model/Status;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/p$3;->b:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 849
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/p$3;->c:Lcom/xueqiu/android/community/a/p;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 850
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/p$3;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 852
    iget-object v1, p0, Lcom/xueqiu/android/community/a/p$3;->c:Lcom/xueqiu/android/community/a/p;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->c(Lcom/xueqiu/android/community/a/o;)Lcom/xueqiu/android/common/c;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/xueqiu/android/common/c;->a(Landroid/content/Intent;I)V

    .line 853
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    iget-object v2, p0, Lcom/xueqiu/android/community/a/p$3;->b:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    invoke-static {v2, v4}, Lcom/xueqiu/android/community/a/o;->a(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 854
    const-string v1, "status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/p$3;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 855
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 856
    return-void
.end method
