.class public Lcom/xueqiu/android/community/TopicFeaturedListActivity;
.super Lcom/xueqiu/android/base/j;
.source "TopicFeaturedListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/community/d/d;",
        ">;",
        "Lcom/xueqiu/android/community/b/l;"
    }
.end annotation


# instance fields
.field private p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/view/View;

.field private s:Lcom/xueqiu/android/community/a/ar;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Lcom/d/a/b/f;

.field private w:Lcom/xueqiu/android/base/util/o;

.field private x:Lcom/d/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7f020177

    .line 35
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 43
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->v:Lcom/d/a/b/f;

    .line 44
    new-instance v0, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->w:Lcom/xueqiu/android/base/util/o;

    .line 45
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 48
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->x:Lcom/d/a/b/d;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->j:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)Lcom/xueqiu/android/community/a/ar;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->s:Lcom/xueqiu/android/community/a/ar;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 107
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 108
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 4130
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006c

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/TopicInfo;

    .line 4134
    const v1, 0x7f0e01df

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4135
    const v1, 0x7f0e01de

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4136
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicPicHeader()Ljava/lang/String;

    move-result-object v5

    .line 4137
    iget-object v6, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->v:Lcom/d/a/b/f;

    iget-object v7, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->x:Lcom/d/a/b/d;

    iget-object v8, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->w:Lcom/xueqiu/android/base/util/o;

    invoke-virtual {v6, v5, v1, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 4138
    new-instance v1, Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity$4;-><init>(Lcom/xueqiu/android/community/TopicFeaturedListActivity;Lcom/xueqiu/android/community/model/TopicInfo;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public final a(ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/TopicInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->s:Lcom/xueqiu/android/community/a/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->s:Lcom/xueqiu/android/community/a/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ar;->notifyDataSetChanged()V

    .line 127
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->s:Lcom/xueqiu/android/community/a/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->s:Lcom/xueqiu/android/community/a/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ar;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->t:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 35
    .line 5066
    new-instance v0, Lcom/xueqiu/android/community/d/d;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/d/d;-><init>(Lcom/xueqiu/android/community/b/l;)V

    .line 35
    return-object v0
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->setTheme(I)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->e()V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->u:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    return-void
.end method

.method public final k()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->i()V

    .line 165
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0300bb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->setContentView(I)V

    .line 4066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 54
    const-string v1, "\u4e13\u9898"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f03006b

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->r:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->r:Landroid/view/View;

    const v1, 0x7f0e01e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->q:Landroid/widget/LinearLayout;

    .line 57
    new-instance v0, Lcom/xueqiu/android/community/a/ar;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/a/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->s:Lcom/xueqiu/android/community/a/ar;

    .line 58
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 59
    const v0, 0x7f030217

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->t:Landroid/view/View;

    .line 60
    const v0, 0x7f03021c

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->u:Landroid/view/View;

    .line 4070
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 4071
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/TopicFeaturedListActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity$1;-><init>(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 4077
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/community/TopicFeaturedListActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity$2;-><init>(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnMoreClickListener(Landroid/view/View$OnClickListener;)V

    .line 4084
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/TopicFeaturedListActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity$3;-><init>(Lcom/xueqiu/android/community/TopicFeaturedListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4098
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->s:Lcom/xueqiu/android/community/a/ar;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4099
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->p:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 4100
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->t:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->b(Z)V

    .line 4102
    invoke-virtual {p0}, Lcom/xueqiu/android/community/TopicFeaturedListActivity;->h()Landroid/app/Dialog;

    .line 62
    return-void
.end method
