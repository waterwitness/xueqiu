.class public Lcom/xueqiu/android/cube/NVHistoryActivity;
.super Lcom/xueqiu/android/common/b;
.source "NVHistoryActivity.java"


# instance fields
.field private j:J

.field private k:Ljava/lang/String;

.field private p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Lcom/xueqiu/android/cube/o;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/HistoryValue;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/xueqiu/android/common/model/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/cube/model/HistoryValue;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->t:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->v:I

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->x:D

    .line 203
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->y:D

    .line 217
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/NVHistoryActivity;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->v:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/NVHistoryActivity;Lcom/xueqiu/android/common/model/PagedList;)Lcom/xueqiu/android/common/model/PagedList;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->u:Lcom/xueqiu/android/common/model/PagedList;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/NVHistoryActivity;)V
    .locals 2

    .prologue
    .line 35
    .line 2194
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->u:Lcom/xueqiu/android/common/model/PagedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->u:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->u:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedList;->getPage()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 2197
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/NVHistoryActivity;I)Lrx/a;
    .locals 2

    .prologue
    .line 35
    .line 3152
    iget v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3153
    new-instance v0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/cube/NVHistoryActivity$3;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity;I)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3172
    :cond_0
    new-instance v0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/cube/NVHistoryActivity$4;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity;I)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/NVHistoryActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/NVHistoryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->u:Lcom/xueqiu/android/common/model/PagedList;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/NVHistoryActivity;)V
    .locals 6

    .prologue
    .line 35
    .line 2206
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 2207
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->x:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 2208
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->x:D

    .line 2210
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->y:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 2211
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->y:D

    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/cube/o;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->s:Lcom/xueqiu/android/cube/o;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/NVHistoryActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->v:I

    return v0
.end method

.method static synthetic i(Lcom/xueqiu/android/cube/NVHistoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/cube/NVHistoryActivity;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->j:J

    return-wide v0
.end method

.method static synthetic k(Lcom/xueqiu/android/cube/NVHistoryActivity;)D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->x:D

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->j:J

    .line 67
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->k:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_page_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->w:I

    .line 69
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->setContentView(I)V

    .line 70
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03021c

    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->r:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->r:Landroid/view/View;

    const v1, 0x7f0e076c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 75
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->q:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/xueqiu/android/cube/o;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/o;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->s:Lcom/xueqiu/android/cube/o;

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1144
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1145
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 1146
    invoke-virtual {v0, v4, v1, v4, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1147
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 1148
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->s:Lcom/xueqiu/android/cube/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/NVHistoryActivity$1;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/NVHistoryActivity$2;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/xueqiu/android/common/widget/ptr/f;)V

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity;->p:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 1233
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/widget/ptr/d;->setRefreshing(Z)V

    .line 140
    const v0, 0x7f0704f4

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 141
    return-void
.end method
