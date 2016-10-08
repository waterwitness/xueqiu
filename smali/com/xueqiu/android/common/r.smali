.class public Lcom/xueqiu/android/common/r;
.super Ljava/lang/Object;
.source "SNBListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field b:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
            "<TT;>;"
        }
    .end annotation
.end field

.field public c:Lcom/xueqiu/android/common/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field e:I

.field public f:I

.field private g:Landroid/content/Context;

.field private h:Lcom/android/volley/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/xueqiu/android/common/widget/ptr/h;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;",
            "Lcom/xueqiu/android/common/t",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/xueqiu/android/common/r;->g:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 53
    iput-object v0, p0, Lcom/xueqiu/android/common/r;->b:Lcom/xueqiu/android/common/t;

    .line 55
    iput-object v0, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    .line 57
    iput-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 59
    iput-boolean v1, p0, Lcom/xueqiu/android/common/r;->d:Z

    .line 61
    iput-boolean v1, p0, Lcom/xueqiu/android/common/r;->i:Z

    .line 64
    iput v2, p0, Lcom/xueqiu/android/common/r;->e:I

    .line 65
    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/common/r;->f:I

    .line 79
    new-instance v0, Lcom/xueqiu/android/common/r$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/r$1;-><init>(Lcom/xueqiu/android/common/r;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/r;->j:Lcom/xueqiu/android/common/widget/ptr/h;

    .line 87
    new-instance v0, Lcom/xueqiu/android/common/r$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/r$2;-><init>(Lcom/xueqiu/android/common/r;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/r;->k:Landroid/view/View$OnClickListener;

    .line 68
    iput-object p2, p0, Lcom/xueqiu/android/common/r;->b:Lcom/xueqiu/android/common/t;

    .line 69
    invoke-virtual {p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/r;->g:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 72
    const v0, 0x7f0701da

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 1381
    iget-object v1, p0, Lcom/xueqiu/android/common/r;->g:Landroid/content/Context;

    .line 72
    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v1

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/common/r;->j:Lcom/xueqiu/android/common/widget/ptr/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/common/r;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnMoreClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/r;Z)V
    .locals 2

    .prologue
    .line 9096
    new-instance v0, Lcom/xueqiu/android/common/r$3;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/r$3;-><init>(Lcom/xueqiu/android/common/r;Z)V

    .line 9115
    :try_start_0
    iget-object v1, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    .line 9538
    iget-boolean v1, v1, Lcom/android/volley/n;->i:Z

    .line 9116
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    .line 10336
    iget-boolean v1, v1, Lcom/android/volley/n;->h:Z

    .line 9117
    if-eqz v1, :cond_1

    .line 9118
    :cond_0
    if-eqz p1, :cond_2

    .line 11252
    iget-object v1, p0, Lcom/xueqiu/android/common/r;->b:Lcom/xueqiu/android/common/t;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/t;->b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    .line 9119
    iput-object v0, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    .line 9126
    :cond_1
    :goto_0
    return-void

    .line 11262
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/common/r;->b:Lcom/xueqiu/android/common/t;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/t;->a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    .line 9121
    iput-object v0, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9124
    :catch_0
    move-exception v0

    .line 9125
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/xueqiu/android/common/r;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setEmptyViewImage(I)V

    .line 402
    return-void
.end method

.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 319
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 335
    return-void
.end method

.method public final a(Lcom/xueqiu/android/common/a/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/a/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 267
    iput-object p1, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    new-instance v1, Lcom/xueqiu/android/common/s;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/s;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/xueqiu/android/common/r;->b()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setEmptyViewDesc(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/a/d;->a(Ljava/util/ArrayList;)V

    .line 372
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->b:Lcom/xueqiu/android/common/t;

    invoke-interface {v0, p1, p2, p3}, Lcom/xueqiu/android/common/t;->a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V

    .line 132
    if-nez p1, :cond_13

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v4

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 138
    if-eqz p2, :cond_2

    .line 139
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2314
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0, p2}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Ljava/lang/Throwable;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 206
    :goto_1
    return-void

    .line 2363
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getMode()I

    move-result v0

    .line 147
    if-ne v0, v3, :cond_5

    .line 148
    if-eqz p3, :cond_4

    .line 149
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 4367
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 3385
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    .line 166
    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/xueqiu/android/common/r;->d:Z

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->d()V

    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {v5, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    .line 3363
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getMode()I

    move-result v0

    .line 153
    if-ne v0, v7, :cond_3

    .line 155
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 156
    if-eqz p3, :cond_6

    .line 157
    invoke-virtual {v5, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    .line 159
    :cond_6
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 171
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 5266
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const v6, 0x7f0e0141

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v3

    .line 171
    :goto_3
    if-eqz v0, :cond_8

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e()V

    .line 177
    :cond_8
    instance-of v0, v1, Lcom/xueqiu/android/common/model/PagedGroup;

    if-eqz v0, :cond_c

    move-object v0, v1

    .line 178
    check-cast v0, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->hasMore()Z

    move-result v0

    .line 190
    :goto_4
    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/xueqiu/android/common/r;->i:Z

    if-eqz v0, :cond_10

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a()V

    .line 5363
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getMode()I

    move-result v0

    .line 197
    if-ne v0, v7, :cond_a

    .line 198
    if-eqz p3, :cond_11

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 205
    :cond_a
    :goto_6
    const-string v0, "SBListView"

    const-string v1, "request data complete"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 5266
    goto :goto_3

    .line 179
    :cond_c
    instance-of v0, v1, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    if-eqz v0, :cond_d

    move-object v0, v1

    .line 180
    check-cast v0, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->hasMore()Z

    move-result v0

    goto :goto_4

    .line 182
    :cond_d
    if-nez p3, :cond_e

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v5, p0, Lcom/xueqiu/android/common/r;->f:I

    if-ge v0, v5, :cond_f

    :cond_e
    iget v0, p0, Lcom/xueqiu/android/common/r;->e:I

    iget v5, p0, Lcom/xueqiu/android/common/r;->f:I

    if-ge v0, v5, :cond_f

    move v0, v2

    .line 184
    goto :goto_4

    .line 185
    :cond_f
    iget-boolean v0, p0, Lcom/xueqiu/android/common/r;->i:Z

    if-eqz v0, :cond_12

    move v0, v3

    .line 186
    goto :goto_4

    .line 192
    :cond_10
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b()V

    goto :goto_5

    .line 5367
    :cond_11
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 201
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_6

    :cond_12
    move v0, v3

    goto :goto_4

    :cond_13
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setRefreshing(Z)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->k()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    iget-object v1, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 211
    iget-object v1, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    .line 6336
    iget-boolean v1, v1, Lcom/android/volley/n;->h:Z

    .line 211
    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/xueqiu/android/common/r;->h:Lcom/android/volley/n;

    .line 7329
    iput-boolean v0, v1, Lcom/android/volley/n;->h:Z

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/common/r;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a()V

    .line 8367
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 7385
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    .line 306
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/xueqiu/android/common/r;->d:Z

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->d()V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b()V

    goto :goto_1

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e()V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/xueqiu/android/common/r;->i:Z

    .line 326
    invoke-virtual {p0}, Lcom/xueqiu/android/common/r;->b()V

    .line 327
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 355
    return-void
.end method

.method public final d()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method
