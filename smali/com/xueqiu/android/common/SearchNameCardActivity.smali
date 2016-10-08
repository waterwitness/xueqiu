.class public Lcom/xueqiu/android/common/SearchNameCardActivity;
.super Lcom/xueqiu/android/common/b;
.source "SearchNameCardActivity.java"


# instance fields
.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/ListView;

.field private p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private q:Lcom/xueqiu/android/message/a/a;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/android/volley/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->r:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->s:Lcom/android/volley/n;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/SearchNameCardActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 2

    .prologue
    .line 5146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5147
    const-string v1, "extra_name_card"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5148
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 5149
    invoke-virtual {p0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->finish()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/SearchNameCardActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 40
    .line 3153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->s:Lcom/android/volley/n;

    .line 3154
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->s:Lcom/android/volley/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->s:Lcom/android/volley/n;

    .line 3336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 3154
    if-nez v0, :cond_0

    .line 3155
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->s:Lcom/android/volley/n;

    .line 4329
    iput-boolean v3, v0, Lcom/android/volley/n;->h:Z

    .line 3158
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/SearchNameCardActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/common/SearchNameCardActivity$5;-><init>(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 3171
    invoke-virtual {p0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->getApplication()Landroid/app/Application;

    .line 3172
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 3173
    const/16 v2, 0xa

    invoke-virtual {v1, p1, v3, v2, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->s:Lcom/android/volley/n;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/SearchNameCardActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 5178
    if-nez p1, :cond_1

    .line 5179
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 5180
    :cond_0
    :goto_0
    return-void

    .line 5182
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5183
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5184
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5185
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/a/ba;

    .line 5186
    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ba;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/SearchNameCardActivity;)Lcom/xueqiu/android/message/a/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->q:Lcom/xueqiu/android/message/a/a;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f0300de

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->setContentView(I)V

    .line 1087
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getFollowEachOtherUsers()Ljava/util/List;

    move-result-object v2

    .line 1089
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 1090
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->j:Landroid/widget/EditText;

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->j:Landroid/widget/EditText;

    const-string v3, "\u8f93\u5165\u7528\u6237\u540d"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1092
    const v0, 0x7f0e036a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->k:Landroid/widget/ListView;

    .line 1093
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 1094
    new-instance v3, Lcom/xueqiu/android/message/a/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4, v2}, Lcom/xueqiu/android/message/a/a;-><init>(Landroid/content/Context;Lcom/d/a/b/f;[JLjava/util/List;)V

    iput-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->q:Lcom/xueqiu/android/message/a/a;

    .line 1095
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->q:Lcom/xueqiu/android/message/a/a;

    .line 1507
    iput-boolean v1, v3, Lcom/xueqiu/android/message/a/a;->d:Z

    .line 1096
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v3, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setDrawingListUnderStickyHeader(Z)V

    .line 1097
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v3, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 1098
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v3, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setIndexScrollEnabled(Z)V

    .line 1099
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v4, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->q:Lcom/xueqiu/android/message/a/a;

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 1100
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v4, Lcom/d/a/b/f/c;

    invoke-direct {v4, v0, v1, v5}, Lcom/d/a/b/f/c;-><init>(Lcom/d/a/b/f;ZZ)V

    invoke-virtual {v3, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->p:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v3, Lcom/xueqiu/android/common/SearchNameCardActivity$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/SearchNameCardActivity$2;-><init>(Lcom/xueqiu/android/common/SearchNameCardActivity;)V

    invoke-virtual {v0, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1110
    new-instance v0, Lcom/xueqiu/android/community/a/ba;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;)V

    .line 1111
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/a/ba;->a(Ljava/util/ArrayList;)V

    .line 1112
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1113
    iget-object v3, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->k:Landroid/widget/ListView;

    new-instance v4, Lcom/xueqiu/android/common/SearchNameCardActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/common/SearchNameCardActivity$3;-><init>(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/community/a/ba;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2124
    if-eqz v2, :cond_1

    .line 2125
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Long;

    .line 2126
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2127
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v1

    .line 2126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 2129
    new-instance v1, Lcom/xueqiu/android/common/SearchNameCardActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/common/SearchNameCardActivity$4;-><init>(Lcom/xueqiu/android/common/SearchNameCardActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 2946
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v3, v1}, Lcom/xueqiu/android/base/b/an;->b([Ljava/lang/Long;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/SearchNameCardActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/SearchNameCardActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/SearchNameCardActivity$1;-><init>(Lcom/xueqiu/android/common/SearchNameCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    return-void
.end method
