.class final Lcom/xueqiu/android/community/c/e;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/d;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/community/c/d;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/xueqiu/android/community/c/e;->a:Lcom/xueqiu/android/community/c/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/community/c/d;B)V
    .locals 0

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/c/e;-><init>(Lcom/xueqiu/android/community/c/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 879
    const-string v0, "delete_status_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 880
    iget-object v0, p0, Lcom/xueqiu/android/community/c/e;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/xueqiu/android/community/c/e;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 881
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 882
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 883
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    .line 884
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/e;->a:Lcom/xueqiu/android/community/c/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/d;->c(Lcom/xueqiu/android/community/c/d;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 888
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 890
    :cond_2
    return-void
.end method
