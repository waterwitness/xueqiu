.class public Lcom/xueqiu/android/cube/CubeRbHistoryActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeRbHistoryActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

.field private k:Lcom/xueqiu/android/cube/a/n;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/xueqiu/android/common/model/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;Lcom/xueqiu/android/common/model/PagedList;)Lcom/xueqiu/android/common/model/PagedList;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->r:Lcom/xueqiu/android/common/model/PagedList;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/cube/a/n;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->k:Lcom/xueqiu/android/cube/a/n;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;I)Lrx/a;
    .locals 2

    .prologue
    .line 36
    .line 3175
    iget v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3176
    new-instance v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;I)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3195
    :cond_0
    new-instance v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;I)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->r:Lcom/xueqiu/android/common/model/PagedList;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V
    .locals 2

    .prologue
    .line 36
    .line 3167
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->r:Lcom/xueqiu/android/common/model/PagedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->r:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 3168
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 3170
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->s:J

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->s:J

    .line 68
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->t:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_page_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->u:I

    .line 70
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    .line 72
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03021c

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->p:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->p:Landroid/view/View;

    const v1, 0x7f0e076c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->q:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 77
    new-instance v0, Lcom/xueqiu/android/cube/a/n;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/a/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->k:Lcom/xueqiu/android/cube/a/n;

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->k:Lcom/xueqiu/android/cube/a/n;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_sell_flag"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1057
    iput-boolean v1, v0, Lcom/xueqiu/android/cube/a/n;->b:Z

    .line 79
    iget v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->k:Lcom/xueqiu/android/cube/a/n;

    .line 2049
    iput-boolean v5, v0, Lcom/xueqiu/android/cube/a/n;->c:Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->k:Lcom/xueqiu/android/cube/a/n;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->setOnLastItemVisibleListener(Lcom/xueqiu/android/common/widget/ptr/f;)V

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    .line 2233
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/widget/ptr/d;->setRefreshing(Z)V

    .line 163
    const v0, 0x7f070500

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 164
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/high16 v4, 0x422c0000    # 43.0f

    const/4 v3, 0x0

    .line 219
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onWindowFocusChanged(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-static {p0, v4}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v1, v2

    invoke-static {p0, v3}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-static {p0, v4}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    sub-int v2, v1, v2

    invoke-static {p0, v3}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/widget/ExpandableListView;->setIndicatorBoundsRelative(II)V

    goto :goto_0
.end method
