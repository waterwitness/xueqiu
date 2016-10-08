.class public Lcom/xueqiu/android/trade/c/w;
.super Lcom/xueqiu/android/base/k;
.source "TradeNotificationsFragment.java"

# interfaces
.implements Lcom/xueqiu/android/trade/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/k",
        "<",
        "Lcom/xueqiu/android/trade/b/n;",
        ">;",
        "Lcom/xueqiu/android/trade/b/o;"
    }
.end annotation


# instance fields
.field private b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

.field private c:Lcom/xueqiu/android/trade/a/k;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xueqiu/android/base/k;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/w;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/w;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/w;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/w;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/w;)Lcom/xueqiu/android/trade/a/k;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->c:Lcom/xueqiu/android/trade/a/k;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 57
    const v0, 0x7f03015b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 136
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/k;->a(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f070467

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/w;->d(I)V

    .line 53
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/base/k;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f0e053e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullLabel(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setReleaseLabel(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/trade/c/w$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/w$1;-><init>(Lcom/xueqiu/android/trade/c/w;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 78
    new-instance v0, Lcom/xueqiu/android/trade/a/k;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/trade/a/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/w;->c:Lcom/xueqiu/android/trade/a/k;

    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 80
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/w;->c:Lcom/xueqiu/android/trade/a/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v1, Lcom/xueqiu/android/trade/c/w$2;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/trade/c/w$2;-><init>(Lcom/xueqiu/android/trade/c/w;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2103
    new-instance v0, Lcom/xueqiu/android/trade/c/w$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/w$3;-><init>(Lcom/xueqiu/android/trade/c/w;)V

    .line 2240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2115
    const v2, 0x7f0e053f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2116
    const v2, 0x7f0e0540

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2117
    const v2, 0x7f0e0541

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/n;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/n;->c()V

    .line 94
    sget-object v0, Lcom/xueqiu/android/message/client/c;->l:Lrx/i/c;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeNotification;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeNotification;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/c/w;->d:J

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->c:Lcom/xueqiu/android/trade/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->c:Lcom/xueqiu/android/trade/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/k;->notifyDataSetChanged()V

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/w;->f()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 131
    return-void
.end method

.method public final synthetic b()Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 32
    .line 5099
    new-instance v0, Lcom/xueqiu/android/trade/d/h;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/d/h;-><init>(Lcom/xueqiu/android/trade/b/o;)V

    .line 32
    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/w;->b:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 141
    return-void
.end method
