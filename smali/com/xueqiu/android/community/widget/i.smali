.class public final Lcom/xueqiu/android/community/widget/i;
.super Lcom/xueqiu/android/common/r;
.source "StatusSBListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/r",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;",
            "Lcom/xueqiu/android/common/t",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 39
    if-nez p3, :cond_0

    .line 40
    instance-of v0, p1, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->getNextId()J

    move-result-wide v2

    .line 1367
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 42
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v0

    .line 45
    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/i;->c()V

    .line 56
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 60
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 49
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/community/widget/i;->f:I

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xueqiu/android/community/widget/i;->c()V

    goto :goto_0

    .line 65
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/r;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V

    .line 66
    return-void
.end method
