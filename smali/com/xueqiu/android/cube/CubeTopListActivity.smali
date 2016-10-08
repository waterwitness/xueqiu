.class public Lcom/xueqiu/android/cube/CubeTopListActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeTopListActivity.java"


# instance fields
.field private A:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/viewpagerindicator/CirclePageIndicator;

.field private p:Landroid/support/v4/view/ViewPager;

.field private q:Lcom/xueqiu/android/cube/h;

.field private r:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private t:Lcom/xueqiu/android/cube/a/u;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/k;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/l;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/xueqiu/android/cube/l;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->A:I

    .line 498
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeTopListActivity;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 6

    .prologue
    .line 50
    .line 8254
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->w:Lcom/xueqiu/android/cube/l;

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v0

    .line 9180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v5

    .line 8255
    const-string v1, "list_overall"

    iget-object v2, v0, Lcom/xueqiu/android/cube/k;->a:Lcom/xueqiu/android/cube/l;

    iget-object v2, v2, Lcom/xueqiu/android/cube/l;->value:Ljava/lang/String;

    iget-object v3, v0, Lcom/xueqiu/android/cube/k;->b:Lcom/xueqiu/android/cube/l;

    iget-object v3, v3, Lcom/xueqiu/android/cube/l;->value:Ljava/lang/String;

    iget v4, v0, Lcom/xueqiu/android/cube/k;->c:I

    .line 10034
    iget-object v0, v5, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/k;

    .line 267
    iget-object v2, v0, Lcom/xueqiu/android/cube/k;->a:Lcom/xueqiu/android/cube/l;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/xueqiu/android/cube/k;->b:Lcom/xueqiu/android/cube/l;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    :goto_0
    return-object v0

    .line 271
    :cond_2
    new-instance v0, Lcom/xueqiu/android/cube/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/cube/k;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;B)V

    .line 272
    iput-object p1, v0, Lcom/xueqiu/android/cube/k;->a:Lcom/xueqiu/android/cube/l;

    .line 273
    iput-object p2, v0, Lcom/xueqiu/android/cube/k;->b:Lcom/xueqiu/android/cube/l;

    .line 274
    const/4 v1, 0x1

    iput v1, v0, Lcom/xueqiu/android/cube/k;->c:I

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/xueqiu/android/cube/k;->d:Ljava/util/ArrayList;

    .line 276
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 323
    new-instance v3, Lcom/xueqiu/android/cube/CubeTopListActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/cube/CubeTopListActivity$6;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Landroid/view/ViewGroup;)V

    move v0, v1

    .line 343
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 345
    goto :goto_1

    .line 348
    :cond_1
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 352
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 356
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 357
    const v0, 0x7f03011c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/l;

    iget-object v1, v1, Lcom/xueqiu/android/cube/l;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 361
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    iget v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->k()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeTopListActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeTopListActivity;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 50
    .line 10281
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    .line 10284
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->w:Lcom/xueqiu/android/cube/l;

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v1

    .line 10285
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/xueqiu/android/cube/k;->d:Ljava/util/ArrayList;

    .line 10288
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    iget v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iput-object v0, v1, Lcom/xueqiu/android/cube/k;->a:Lcom/xueqiu/android/cube/l;

    .line 10289
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->w:Lcom/xueqiu/android/cube/l;

    iput-object v0, v1, Lcom/xueqiu/android/cube/k;->b:Lcom/xueqiu/android/cube/l;

    .line 10290
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeTopListActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/cube/l;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->w:Lcom/xueqiu/android/cube/l;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/CubeTopListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/cube/a/u;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->t:Lcom/xueqiu/android/cube/a/u;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 50
    .line 10296
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    iget v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->w:Lcom/xueqiu/android/cube/l;

    invoke-direct {p0, v0, v3}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/l;Lcom/xueqiu/android/cube/l;)Lcom/xueqiu/android/cube/k;

    move-result-object v0

    .line 10297
    iget-object v3, v0, Lcom/xueqiu/android/cube/k;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/xueqiu/android/cube/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 10298
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 10306
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 13367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 10306
    if-eqz v0, :cond_4

    .line 10307
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 10308
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 10309
    if-eqz v0, :cond_3

    .line 10310
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 10312
    :goto_1
    if-lt v3, v2, :cond_2

    move v0, v1

    move v1, v2

    .line 10317
    :goto_2
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 10318
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->k()V

    .line 50
    return-void

    .line 10300
    :cond_1
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 10367
    iget-object v3, v3, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 10300
    invoke-virtual {v3}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 10301
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 11367
    iget-object v3, v3, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 10301
    iget-object v0, v0, Lcom/xueqiu/android/cube/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/common/a/d;->a(Ljava/util/ArrayList;)V

    .line 10302
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 12367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 10302
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic j(Lcom/xueqiu/android/cube/CubeTopListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->j:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/xueqiu/android/cube/j;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/j;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/xueqiu/android/cube/i;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/i;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Lcom/xueqiu/android/cube/l;

    const-string v1, "\u6caa\u6df1"

    const-string v2, "cn"

    invoke-direct {v0, p0, v1, v2}, Lcom/xueqiu/android/cube/l;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->w:Lcom/xueqiu/android/cube/l;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    new-instance v1, Lcom/xueqiu/android/cube/l;

    const-string v2, "\u6700\u8fd1\u4e00\u5e74\u7684"

    const-string v3, "3"

    invoke-direct {v1, p0, v2, v3}, Lcom/xueqiu/android/cube/l;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    new-instance v1, Lcom/xueqiu/android/cube/l;

    const-string v2, "\u6700\u8fd16\u4e2a\u6708"

    const-string v3, "2"

    invoke-direct {v1, p0, v2, v3}, Lcom/xueqiu/android/cube/l;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    new-instance v1, Lcom/xueqiu/android/cube/l;

    const-string v2, "\u6700\u8fd13\u4e2a\u6708"

    const-string v3, "1"

    invoke-direct {v1, p0, v2, v3}, Lcom/xueqiu/android/cube/l;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const v0, 0x7f0e0463

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Landroid/widget/LinearLayout;)V

    .line 125
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/l;

    iget-object v1, v1, Lcom/xueqiu/android/cube/l;->value:Ljava/lang/String;

    iget v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->A:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 128
    iput v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    .line 132
    :cond_0
    return-void

    .line 125
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 7180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 368
    const-string v2, "list_overall"

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->v:Ljava/util/List;

    iget v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->z:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/l;

    iget-object v0, v0, Lcom/xueqiu/android/cube/l;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->w:Lcom/xueqiu/android/cube/l;

    iget-object v3, v3, Lcom/xueqiu/android/cube/l;->value:Ljava/lang/String;

    new-instance v4, Lcom/xueqiu/android/cube/CubeTopListActivity$7;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/cube/CubeTopListActivity$7;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 8030
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 387
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0d0130

    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->setContentView(I)V

    .line 92
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 93
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->c(I)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 94
    const v2, 0x7f030118

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(I)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e045c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->x:Landroid/widget/TextView;

    .line 4066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e045d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->y:Landroid/widget/TextView;

    .line 5066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e045b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/cube/CubeTopListActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeTopListActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->j()V

    .line 6135
    const v0, 0x7f0e0182

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 6136
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03011d

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 6137
    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6138
    const v0, 0x7f0e0465

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->k:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 6139
    const v0, 0x7f0e0464

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->p:Landroid/support/v4/view/ViewPager;

    .line 6140
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->p:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 6141
    new-instance v0, Lcom/xueqiu/android/cube/h;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xueqiu/android/cube/h;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->q:Lcom/xueqiu/android/cube/h;

    .line 6142
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->p:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->q:Lcom/xueqiu/android/cube/h;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 6143
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->k:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 6144
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->k:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v2, Lcom/xueqiu/android/cube/CubeTopListActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeTopListActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 6164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 6166
    const v0, 0x7f03011b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6167
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6168
    const v0, 0x7f0e0463

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6169
    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Landroid/widget/LinearLayout;)V

    .line 6170
    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Landroid/view/ViewGroup;)V

    .line 6172
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 6175
    new-instance v0, Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v2, Lcom/xueqiu/android/cube/CubeTopListActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeTopListActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    .line 6207
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeTopListActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeTopListActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 6228
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->c(Z)V

    .line 6230
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->s:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeTopListActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeTopListActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6248
    new-instance v0, Lcom/xueqiu/android/cube/a/u;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/a/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->t:Lcom/xueqiu/android/cube/a/u;

    .line 6249
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->t:Lcom/xueqiu/android/cube/a/u;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 6250
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity;->r:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 106
    return-void
.end method
