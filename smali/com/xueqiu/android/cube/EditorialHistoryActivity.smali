.class public Lcom/xueqiu/android/cube/EditorialHistoryActivity;
.super Lcom/xueqiu/android/common/b;
.source "EditorialHistoryActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private k:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/xueqiu/android/cube/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/EditorialHistoryActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->refresh(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->k:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)Lcom/xueqiu/android/cube/m;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->p:Lcom/xueqiu/android/cube/m;

    return-object v0
.end method

.method private refresh(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/Editorial;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/xueqiu/android/base/b/ai;->d(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f07012f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->setTitle(I)V

    .line 47
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->j:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 48
    new-instance v0, Lcom/xueqiu/android/cube/m;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->p:Lcom/xueqiu/android/cube/m;

    .line 49
    new-instance v0, Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->j:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v2, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/EditorialHistoryActivity$1;-><init>(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->k:Lcom/xueqiu/android/common/r;

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->k:Lcom/xueqiu/android/common/r;

    .line 1409
    const/4 v1, 0x6

    iput v1, v0, Lcom/xueqiu/android/common/r;->f:I

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->k:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->p:Lcom/xueqiu/android/cube/m;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->k:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/cube/EditorialHistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/EditorialHistoryActivity$2;-><init>(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->k:Lcom/xueqiu/android/common/r;

    .line 2225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 87
    return-void
.end method
