.class public Lcom/xueqiu/android/common/search/SearchActivity;
.super Lcom/xueqiu/android/common/b;
.source "SearchActivity.java"


# instance fields
.field private A:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
            "<",
            "Lcom/xueqiu/android/message/model/IMGroup;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/xueqiu/android/common/r;

.field private k:Lcom/xueqiu/android/community/a/ak;

.field private p:Lcom/xueqiu/android/community/a/ba;

.field private q:Lcom/xueqiu/android/stock/a/ad;

.field private r:Lcom/xueqiu/android/message/a/p;

.field private s:Lcom/xueqiu/android/cube/a/k;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Landroid/widget/EditText;

.field private y:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    .line 77
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->k:Lcom/xueqiu/android/community/a/ak;

    .line 78
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->p:Lcom/xueqiu/android/community/a/ba;

    .line 79
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->q:Lcom/xueqiu/android/stock/a/ad;

    .line 80
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->r:Lcom/xueqiu/android/message/a/p;

    .line 81
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->s:Lcom/xueqiu/android/cube/a/k;

    .line 84
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->u:I

    .line 88
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->x:Landroid/widget/EditText;

    .line 267
    new-instance v0, Lcom/xueqiu/android/common/search/SearchActivity$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/search/SearchActivity$8;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->y:Lcom/xueqiu/android/common/t;

    .line 309
    new-instance v0, Lcom/xueqiu/android/common/search/SearchActivity$9;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/search/SearchActivity$9;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->z:Lcom/xueqiu/android/common/t;

    .line 346
    new-instance v0, Lcom/xueqiu/android/common/search/SearchActivity$10;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/search/SearchActivity$10;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->A:Lcom/xueqiu/android/common/t;

    .line 380
    new-instance v0, Lcom/xueqiu/android/common/search/SearchActivity$11;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/search/SearchActivity$11;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->B:Lcom/xueqiu/android/common/t;

    .line 437
    new-instance v0, Lcom/xueqiu/android/common/search/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/search/SearchActivity$2;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->C:Lcom/xueqiu/android/common/t;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/SearchActivity;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/SearchActivity;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 6303
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 6305
    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    const/16 v5, 0x14

    const-string v6, "time"

    move-object v3, v2

    move v4, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/SearchActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/search/SearchActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->u:I

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/search/SearchActivity;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 3

    .prologue
    .line 6428
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 6429
    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/search/SearchActivity;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 2

    .prologue
    .line 7180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 6434
    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    .line 7324
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v1, p1, p2}, Lcom/xueqiu/android/base/b/d;->b(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/search/SearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 414
    const/16 v0, 0x42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v2, 0x7f0e016d

    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/SearchActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_type"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->v:I

    .line 98
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "search_word"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    .line 101
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3161
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 3163
    new-instance v1, Lcom/xueqiu/android/common/r;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/SearchActivity;->A:Lcom/xueqiu/android/common/t;

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    .line 3164
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->p:Lcom/xueqiu/android/community/a/ba;

    if-nez v0, :cond_1

    .line 3165
    new-instance v0, Lcom/xueqiu/android/community/a/ba;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ba;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->p:Lcom/xueqiu/android/community/a/ba;

    .line 3169
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->p:Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 3171
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/common/search/SearchActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/SearchActivity$4;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    const v0, 0x7f070356

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    .line 5405
    iput-boolean v4, v0, Lcom/xueqiu/android/common/r;->d:Z

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->c(Z)V

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 3167
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->p:Lcom/xueqiu/android/community/a/ba;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ba;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 104
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->v:I

    if-ne v0, v4, :cond_4

    .line 4128
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 4130
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 4131
    const v1, 0x7f0e00b5

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4132
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 4133
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setBackgroundColor(I)V

    .line 4135
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 4137
    new-instance v1, Lcom/xueqiu/android/community/widget/i;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/SearchActivity;->y:Lcom/xueqiu/android/common/t;

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    .line 4138
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->k:Lcom/xueqiu/android/community/a/ak;

    if-nez v0, :cond_3

    .line 4139
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->k:Lcom/xueqiu/android/community/a/ak;

    .line 4143
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->k:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 4145
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/common/search/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/SearchActivity$1;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    const v0, 0x7f070463

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    goto :goto_1

    .line 4141
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->k:Lcom/xueqiu/android/community/a/ak;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 107
    :cond_4
    iget v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 4219
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 4220
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 4222
    new-instance v1, Lcom/xueqiu/android/common/r;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/SearchActivity;->C:Lcom/xueqiu/android/common/t;

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    .line 4223
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 4224
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->q:Lcom/xueqiu/android/stock/a/ad;

    if-nez v0, :cond_5

    .line 4225
    new-instance v0, Lcom/xueqiu/android/stock/a/ad;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/a/ad;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->q:Lcom/xueqiu/android/stock/a/ad;

    .line 4229
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->q:Lcom/xueqiu/android/stock/a/ad;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 4231
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/common/search/SearchActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/SearchActivity$6;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    const v0, 0x7f070464

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    goto/16 :goto_1

    .line 4227
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->q:Lcom/xueqiu/android/stock/a/ad;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/a/ad;->a(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 110
    :cond_6
    iget v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 4243
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 4245
    new-instance v1, Lcom/xueqiu/android/common/r;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/SearchActivity;->B:Lcom/xueqiu/android/common/t;

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    .line 4246
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->r:Lcom/xueqiu/android/message/a/p;

    if-nez v0, :cond_7

    .line 4247
    new-instance v0, Lcom/xueqiu/android/message/a/p;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/a/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->r:Lcom/xueqiu/android/message/a/p;

    .line 4251
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->r:Lcom/xueqiu/android/message/a/p;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 4253
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/common/search/SearchActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/SearchActivity$7;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    const v0, 0x7f070462

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    goto/16 :goto_1

    .line 4249
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->r:Lcom/xueqiu/android/message/a/p;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/p;->a(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 113
    :cond_8
    iget v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 5191
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 5192
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 5194
    new-instance v1, Lcom/xueqiu/android/common/r;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/SearchActivity;->z:Lcom/xueqiu/android/common/t;

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    .line 5195
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 5196
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->s:Lcom/xueqiu/android/cube/a/k;

    if-nez v0, :cond_9

    .line 5197
    new-instance v0, Lcom/xueqiu/android/cube/a/k;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/a/k;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->s:Lcom/xueqiu/android/cube/a/k;

    .line 5201
    :goto_5
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->s:Lcom/xueqiu/android/cube/a/k;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 5203
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/common/search/SearchActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/SearchActivity$5;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    const v0, 0x7f070461

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    goto/16 :goto_1

    .line 5199
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->s:Lcom/xueqiu/android/cube/a/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/a/k;->a(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 117
    :cond_a
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/SearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x7f0100ac

    aput v2, v1, v3

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 483
    const v1, 0x7f070356

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 486
    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 488
    const v2, 0x7f0300cb

    invoke-static {v1, v2}, Landroid/support/v4/view/ak;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 489
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 491
    invoke-static {v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e013c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->x:Landroid/widget/EditText;

    .line 492
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->x:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/SearchActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->x:Landroid/widget/EditText;

    new-instance v2, Lcom/xueqiu/android/common/search/SearchActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/search/SearchActivity$3;-><init>(Lcom/xueqiu/android/common/search/SearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 523
    invoke-static {v1}, Landroid/support/v4/view/ak;->b(Landroid/view/MenuItem;)Z

    .line 524
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/xueqiu/android/common/search/SearchActivity;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/SearchActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 528
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
