.class final Lcom/xueqiu/android/community/c/o$11;
.super Lcom/xueqiu/android/base/b/p;
.source "PublicTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/o;->a(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/PublicTimeline;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/o;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    iput-boolean p3, p0, Lcom/xueqiu/android/community/c/o$11;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 6

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 565
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->f(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 566
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->n(Lcom/xueqiu/android/community/c/o;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->l(Lcom/xueqiu/android/community/c/o;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/c/o;->b(Lcom/xueqiu/android/community/c/o;I)I

    .line 569
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->k(Lcom/xueqiu/android/community/c/o;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;I)I

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->o(Lcom/xueqiu/android/community/c/o;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/c/o;->c(Lcom/xueqiu/android/community/c/o;J)J

    .line 571
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 561
    check-cast p1, Ljava/util/ArrayList;

    .line 1575
    instance-of v0, p1, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, p1

    .line 1577
    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->getAddition()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 1579
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/o$11;->a:Z

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1581
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->getNextMaxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/community/c/o;->d(Lcom/xueqiu/android/community/c/o;J)J

    .line 1604
    :goto_0
    check-cast p1, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->getNextMaxId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 1605
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->n(Lcom/xueqiu/android/community/c/o;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1610
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->notifyDataSetChanged()V

    .line 1619
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->f(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 561
    return-void

    :cond_0
    move-object v0, p1

    .line 1583
    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->getNextId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->p(Lcom/xueqiu/android/community/c/o;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 1585
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1586
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1587
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->getNextMaxId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xueqiu/android/community/c/o;->d(Lcom/xueqiu/android/community/c/o;J)J

    .line 1591
    :goto_3
    iget-object v2, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTimelineId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xueqiu/android/community/c/o;->e(Lcom/xueqiu/android/community/c/o;J)J

    .line 1592
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cached_since_id"

    iget-object v3, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v3}, Lcom/xueqiu/android/community/c/o;->p(Lcom/xueqiu/android/community/c/o;)J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1594
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    .line 1595
    if-eqz v0, :cond_1

    .line 1647
    iget-object v2, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Remind;->getNotices()Lcom/xueqiu/android/community/model/RemindItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1648
    iget-object v2, v0, Lcom/xueqiu/android/common/MainActivity;->j:Lcom/xueqiu/android/community/model/Remind;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/community/model/Remind;)V

    .line 1600
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;Lcom/google/gson/JsonArray;)V

    goto/16 :goto_0

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_3

    .line 1607
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->n(Lcom/xueqiu/android/community/c/o;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1612
    :cond_4
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/o$11;->a:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->getAddition()Lcom/google/gson/JsonArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1613
    check-cast p1, Lcom/xueqiu/android/community/model/PublicTimelineGroup;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/PublicTimelineGroup;->getAddition()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1614
    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1, v0}, Lcom/xueqiu/android/community/c/o;->a(Lcom/xueqiu/android/community/c/o;Lcom/google/gson/JsonArray;)V

    .line 1615
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/o;->j(Lcom/xueqiu/android/community/c/o;)Lcom/xueqiu/android/community/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/o;->notifyDataSetChanged()V

    .line 1617
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/o$11;->b:Lcom/xueqiu/android/community/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/o;->o(Lcom/xueqiu/android/community/c/o;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/community/c/o;->c(Lcom/xueqiu/android/community/c/o;J)J

    goto/16 :goto_2
.end method
