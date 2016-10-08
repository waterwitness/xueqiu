.class public Lcom/xueqiu/android/community/c/p;
.super Lcom/xueqiu/android/common/c;
.source "RewardListFragment.java"


# instance fields
.field private a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

.field private ak:Z

.field private b:Lcom/xueqiu/android/community/a/ad;

.field private c:Landroid/view/View;

.field private d:J

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/p;->f:I

    .line 46
    iput v1, p0, Lcom/xueqiu/android/community/c/p;->g:I

    .line 48
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/p;->h:Z

    .line 50
    iput-boolean v1, p0, Lcom/xueqiu/android/community/c/p;->ak:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/p;)I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/p;->g:I

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/p;Z)V
    .locals 5

    .prologue
    .line 28
    .line 3110
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->ak:Z

    if-nez v0, :cond_1

    .line 3111
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 3112
    :goto_0
    return-void

    .line 3115
    :cond_1
    if-eqz p1, :cond_2

    .line 3116
    iget v0, p0, Lcom/xueqiu/android/community/c/p;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/p;->g:I

    .line 3119
    :cond_2
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->e:Z

    if-eqz v0, :cond_3

    .line 3120
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/community/c/p;->d:J

    iget v1, p0, Lcom/xueqiu/android/community/c/p;->g:I

    new-instance v4, Lcom/xueqiu/android/community/c/p$4;

    invoke-direct {v4, p0, p0, p1}, Lcom/xueqiu/android/community/c/p$4;-><init>(Lcom/xueqiu/android/community/c/p;Lcom/xueqiu/android/base/b/q;Z)V

    .line 3708
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/aj;->c(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 3144
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->h:Z

    goto :goto_0

    .line 3132
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/community/c/p;->d:J

    iget v1, p0, Lcom/xueqiu/android/community/c/p;->g:I

    new-instance v4, Lcom/xueqiu/android/community/c/p$5;

    invoke-direct {v4, p0, p1}, Lcom/xueqiu/android/community/c/p$5;-><init>(Lcom/xueqiu/android/community/c/p;Z)V

    .line 3716
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/aj;->d(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/p;ZLcom/xueqiu/android/common/model/PagedList;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    .line 4154
    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->h:Z

    .line 4155
    iget-object v2, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 4156
    invoke-virtual {p2}, Lcom/xueqiu/android/common/model/PagedList;->getPage()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/c/p;->g:I

    .line 4157
    invoke-virtual {p2}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v2

    iput v2, p0, Lcom/xueqiu/android/community/c/p;->f:I

    .line 4158
    iget v2, p0, Lcom/xueqiu/android/community/c/p;->g:I

    iget v3, p0, Lcom/xueqiu/android/community/c/p;->f:I

    if-eq v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->ak:Z

    .line 4159
    invoke-virtual {p2}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 4160
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4164
    :goto_1
    if-eqz p1, :cond_2

    .line 4165
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->b:Lcom/xueqiu/android/community/a/ad;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ad;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4170
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->b:Lcom/xueqiu/android/community/a/ad;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ad;->notifyDataSetChanged()V

    .line 28
    return-void

    :cond_0
    move v0, v1

    .line 4158
    goto :goto_0

    .line 4162
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 4167
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->b:Lcom/xueqiu/android/community/a/ad;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ad;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4168
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->b:Lcom/xueqiu/android/community/a/ad;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ad;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/p;)Lcom/xueqiu/android/community/a/ad;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->b:Lcom/xueqiu/android/community/a/ad;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/p;)V
    .locals 1

    .prologue
    .line 28
    .line 4148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->h:Z

    .line 4149
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 4150
    iget v0, p0, Lcom/xueqiu/android/community/c/p;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/c/p;->g:I

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 55
    const-string v1, "extra_is_status_reward"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/p;->e:Z

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 56
    const-string v1, "extra_status_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/community/c/p;->d:J

    .line 57
    iget-wide v0, p0, Lcom/xueqiu/android/community/c/p;->d:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "\u6253\u8d4f\u8bb0\u5f55"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/p;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3076
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/p;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 3077
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/p;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03021c

    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/p;->c:Landroid/view/View;

    .line 3078
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3079
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/p;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 3080
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/c/p$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/p$1;-><init>(Lcom/xueqiu/android/community/c/p;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 3087
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/c/p$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/p$2;-><init>(Lcom/xueqiu/android/community/c/p;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/xueqiu/android/common/widget/ptr/f;)V

    .line 3093
    new-instance v0, Lcom/xueqiu/android/community/a/ad;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/p;->b:Lcom/xueqiu/android/community/a/ad;

    .line 3094
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/p;->b:Lcom/xueqiu/android/community/a/ad;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3095
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/c/p$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/p$3;-><init>(Lcom/xueqiu/android/community/c/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3106
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->k()V

    .line 73
    return-void
.end method
