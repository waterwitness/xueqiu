.class public final Lcom/xueqiu/android/stock/c/p;
.super Lcom/xueqiu/android/common/c;
.source "PortfolioItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field a:Landroid/view/View;

.field private ak:J

.field private al:Landroid/widget/FrameLayout;

.field private am:Landroid/view/View;

.field private an:[Ljava/lang/String;

.field private ao:I

.field private ap:Lcom/xueqiu/android/stock/c/r;

.field private aq:Z

.field private ar:Z

.field private as:I

.field private at:Lcom/xueqiu/android/trade/c/j;

.field private au:Lcom/xueqiu/android/stock/a/t;

.field b:Lcom/xueqiu/android/common/widget/x;

.field c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

.field d:Lcom/xueqiu/android/stock/model/Portfolio;

.field e:Lcom/xueqiu/android/stock/a/q;

.field f:Lcom/xueqiu/android/stock/c/q;

.field g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "symbol"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flag"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "change"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "percentage"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "marketCapital"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tick_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->an:[Ljava/lang/String;

    .line 130
    iput v3, p0, Lcom/xueqiu/android/stock/c/p;->ao:I

    .line 132
    iput-object v4, p0, Lcom/xueqiu/android/stock/c/p;->f:Lcom/xueqiu/android/stock/c/q;

    .line 134
    iput-object v4, p0, Lcom/xueqiu/android/stock/c/p;->ap:Lcom/xueqiu/android/stock/c/r;

    .line 136
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/c/p;->aq:Z

    .line 138
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/c/p;->ar:Z

    .line 140
    iput v3, p0, Lcom/xueqiu/android/stock/c/p;->as:I

    .line 438
    new-instance v0, Lcom/xueqiu/android/stock/c/p$27;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/p$27;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->au:Lcom/xueqiu/android/stock/a/t;

    .line 1017
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/c/p;->g:Z

    .line 1121
    return-void
.end method

.method private H()V
    .locals 7

    .prologue
    const v6, 0x7f0e0768

    const v2, 0x7f0e0054

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 228
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->aq:Z

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 13237
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    .line 13238
    new-instance v0, Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/widget/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    .line 13239
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/x;->setId(I)V

    .line 13240
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/x;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13242
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 13243
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 13244
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 13245
    const v1, 0x7f0100d0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 13246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 13247
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 13249
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$12;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/x;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 13256
    const-string v0, "portfolio"

    .line 13258
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/p;->b(Ljava/lang/String;)V

    .line 13260
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    .line 13262
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    if-ne v0, v5, :cond_1

    .line 13564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 13262
    const-string v1, "arg_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 13263
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13264
    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 13265
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v1, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->addHeaderView(Landroid/view/View;)V

    .line 13266
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 13267
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13270
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301b6

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    .line 13271
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    new-instance v2, Lcom/xueqiu/android/stock/c/s;

    invoke-direct {v2, v4}, Lcom/xueqiu/android/stock/c/s;-><init>(B)V

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    .line 14109
    const v0, 0x7f0e0652

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/s;->a:Landroid/widget/Button;

    .line 14110
    const v0, 0x7f0e0653

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/xueqiu/android/stock/c/s;->b:Landroid/widget/Button;

    .line 13271
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13272
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->addHeaderView(Landroid/view/View;)V

    .line 13274
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030217

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    .line 13275
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 13276
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x44a00000    # 1280.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13279
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v1, 0x7f0e0769

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 13280
    iget v1, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 13281
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13282
    new-instance v1, Lcom/xueqiu/android/stock/c/p$22;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$22;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13292
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->addFooterView(Landroid/view/View;)V

    .line 13294
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    if-nez v0, :cond_2

    .line 13295
    new-instance v0, Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/a/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 13296
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    iget v1, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    .line 14635
    iput v1, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    .line 13297
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->au:Lcom/xueqiu/android/stock/a/t;

    .line 15619
    iput-object v1, v0, Lcom/xueqiu/android/stock/a/q;->e:Lcom/xueqiu/android/stock/a/t;

    .line 13298
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->a()V

    .line 13300
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13302
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$23;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$23;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 13312
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$24;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$24;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13337
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13338
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    .line 16135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_4

    .line 16136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Drag and drop is only supported API levels 14 and up!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13289
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 16139
    :cond_4
    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    invoke-direct {v1, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)V

    iput-object v1, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/a;

    .line 13339
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/o;

    invoke-direct {v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setDraggableManager(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/k;)V

    .line 13341
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    if-ne v0, v5, :cond_5

    .line 13342
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$25;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$25;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 13379
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$26;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$26;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setOnItemMovedListener(Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/n;)V

    .line 13387
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 13388
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/s;

    .line 17041
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->ap:Lcom/xueqiu/android/stock/c/r;

    if-eqz v1, :cond_7

    .line 17042
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->ap:Lcom/xueqiu/android/stock/c/r;

    invoke-interface {v2}, Lcom/xueqiu/android/stock/c/r;->E()I

    move-result v2

    .line 17599
    iput v2, v1, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 17043
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->ap:Lcom/xueqiu/android/stock/c/r;

    invoke-interface {v2}, Lcom/xueqiu/android/stock/c/r;->F()I

    move-result v2

    .line 17607
    iput v2, v1, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 17044
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->ap:Lcom/xueqiu/android/stock/c/r;

    invoke-interface {v2}, Lcom/xueqiu/android/stock/c/r;->G()I

    move-result v2

    .line 17615
    iput v2, v1, Lcom/xueqiu/android/stock/a/q;->f:I

    .line 16915
    :cond_7
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/s;->b:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/p;->a(Landroid/widget/Button;)V

    .line 16916
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/s;->b:Landroid/widget/Button;

    new-instance v2, Lcom/xueqiu/android/stock/c/p$16;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$16;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16933
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/s;->a:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/p;->b(Landroid/widget/Button;)V

    .line 16934
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/s;->a:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$17;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18049
    :cond_8
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/p$20;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$20;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    .line 18051
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/p$20;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 18049
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 18052
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->C()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/stock/c/p$21;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/c/p$21;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    .line 18054
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/p$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 18052
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 18055
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 18056
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/stock/a/q;->a(Ljava/util/List;)V

    .line 18057
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 18591
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 18057
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 18058
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->I()V

    .line 18059
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/model/Portfolio;)V

    goto/16 :goto_0
.end method

.method private I()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/high16 v8, 0x42200000    # 40.0f

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 884
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    if-eqz v0, :cond_0

    .line 35240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 887
    if-eqz v0, :cond_0

    .line 36240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 888
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 889
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 890
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 891
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v4}, Lcom/xueqiu/android/common/widget/x;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 892
    iget v1, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    if-ne v1, v6, :cond_4

    .line 893
    int-to-float v1, v0

    invoke-static {v8}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 894
    invoke-static {v8}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 901
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 902
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 36851
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    if-ne v0, v6, :cond_5

    const v0, 0x7f07013d

    .line 36852
    :goto_2
    iget v1, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 36853
    const v0, 0x7f07013e

    move v4, v0

    .line 36857
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36858
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v2, 0x7f0e018e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36860
    iget v2, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    if-eq v2, v9, :cond_3

    .line 36861
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v5, 0x7f0e0767

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 36862
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36863
    new-instance v5, Lcom/xueqiu/android/stock/c/p$15;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/stock/c/p$15;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36871
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36872
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36873
    const v2, 0x7f010079

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36874
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 904
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v1, 0x7f01001f

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 897
    :cond_4
    if-gez v0, :cond_2

    move v0, v3

    .line 898
    goto/16 :goto_1

    .line 36851
    :cond_5
    const v0, 0x7f070141

    goto :goto_2

    .line 36854
    :cond_6
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v1

    if-ne v1, v9, :cond_8

    .line 36855
    const v0, 0x7f07013f

    move v4, v0

    goto :goto_3

    .line 36878
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 36879
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v1, 0x7f0e018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 36880
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v1, 0x7f0e0767

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->am:Landroid/view/View;

    const v1, 0x7f010043

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_8
    move v4, v0

    goto/16 :goto_3
.end method

.method private J()Z
    .locals 4

    .prologue
    .line 1081
    iget-wide v0, p0, Lcom/xueqiu/android/stock/c/p;->ak:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/p;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/xueqiu/android/stock/c/p;->ao:I

    return p1
.end method

.method public static a(IJLcom/xueqiu/android/stock/model/Portfolio;ZI)Lcom/xueqiu/android/stock/c/p;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/xueqiu/android/stock/c/p;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/p;-><init>()V

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v2, "arg_category"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v2, "arg_user_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 149
    const-string v2, "arg_portfolio"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    const-string v2, "arg_is_first_show"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    const-string v2, "arg_position"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/p;->e(Landroid/os/Bundle;)V

    .line 153
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->H()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/p;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/c/p;->a(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/stock/model/Portfolio;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/model/Portfolio;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/p;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 89
    .line 40490
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v0

    .line 41103
    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 40491
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070510

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/p;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 44589
    if-eqz p1, :cond_0

    .line 44593
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/a/q;->a(Ljava/util/List;)V

    .line 44594
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->b()V

    .line 44595
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->I()V

    .line 44596
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 44597
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/p;->a(Ljava/util/List;)V

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/p;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 44724
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 45584
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    if-nez v1, :cond_0

    .line 45585
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 44724
    :goto_0
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44725
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 44726
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44727
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 44728
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44729
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 45587
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    goto :goto_0

    .line 44732
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->setStockName(Ljava/lang/String;)V

    goto :goto_1

    .line 44734
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/a/q;->a(Ljava/util/List;)V

    .line 44735
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->I()V

    .line 44736
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 45591
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 44736
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44737
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->b()V

    .line 44738
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method private a(Lcom/xueqiu/android/stock/model/Portfolio;)V
    .locals 8

    .prologue
    .line 495
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 22077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 496
    :goto_0
    new-instance v3, Lcom/xueqiu/android/stock/c/p$28;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/stock/c/p$28;-><init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;)V

    .line 22503
    iget-object v2, v2, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/c;->c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 586
    :goto_1
    return-void

    .line 496
    :cond_0
    iget-wide v0, p0, Lcom/xueqiu/android/stock/c/p;->ak:J

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/p$2;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/stock/c/p$2;-><init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;)V

    .line 23347
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ak;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/stock/c/p;->ak:J

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    iget v5, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    .line 559
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v6

    new-instance v7, Lcom/xueqiu/android/stock/c/p$3;

    invoke-direct {v7, p0, p0}, Lcom/xueqiu/android/stock/c/p$3;-><init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;)V

    .line 24321
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ak;->a(JLjava/lang/Integer;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1

    .line 558
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/PortfolioStock;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 601
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 605
    invoke-static {p1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    .line 606
    new-instance v1, Lcom/xueqiu/android/stock/c/p$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$5;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/p$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$4;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    .line 611
    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 617
    new-instance v2, Lcom/xueqiu/android/stock/c/p$7;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$7;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/stock/c/p$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$6;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    .line 622
    invoke-virtual {v0, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 24612
    new-instance v2, Lrx/d/a/aa;

    invoke-direct {v2}, Lrx/d/a/aa;-><init>()V

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/c;)Lrx/a;

    move-result-object v2

    .line 24992
    invoke-static {v0, v2}, Lrx/a;->a(Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v0

    .line 629
    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lrx/a;->a(I)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/stock/c/p$13;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$13;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v2}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    const/16 v2, 0x14

    .line 640
    invoke-virtual {v1, v2}, Lrx/a;->b(I)Lrx/a;

    move-result-object v1

    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/p$11;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$11;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 25992
    invoke-static {v0, v1}, Lrx/a;->a(Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v0

    .line 640
    new-instance v1, Lcom/xueqiu/android/stock/c/p$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$10;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    .line 653
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/p$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$8;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    new-instance v2, Lcom/xueqiu/android/stock/c/p$9;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/p$9;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    .line 659
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    goto :goto_0

    .line 675
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 679
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 680
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 683
    :cond_3
    iput v1, p0, Lcom/xueqiu/android/stock/c/p;->as:I

    .line 684
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 685
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 687
    :goto_2
    if-ge v0, v3, :cond_0

    .line 688
    mul-int/lit16 v1, v0, 0xc8

    .line 689
    add-int/lit16 v5, v1, 0xc8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 691
    invoke-interface {v2, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 692
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/stock/c/p$14;

    invoke-direct {v6, p0, p0, v4, v3}, Lcom/xueqiu/android/stock/c/p$14;-><init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;Ljava/util/Map;I)V

    .line 26406
    iget-object v5, v5, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v5, v1, v6}, Lcom/xueqiu/android/base/b/c;->a(Ljava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/p;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/p;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/p;)Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->aq:Z

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/model/Portfolio;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/p;)Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/c/p;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/c/p;)V
    .locals 5

    .prologue
    .line 41954
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 42571
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 41954
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 41955
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 43571
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 41955
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 41956
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41958
    :cond_0
    const/4 v0, 0x0

    .line 41959
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41960
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 41961
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 41963
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/stock/c/p$18;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/stock/c/p$18;-><init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;)V

    .line 44470
    iget-object v3, v3, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 89
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/stock/c/p;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/c/r;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->ap:Lcom/xueqiu/android/stock/c/r;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->I()V

    return-void
.end method

.method static synthetic k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/stock/c/p;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->an:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/stock/c/p;)I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->as:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/stock/c/p;->as:I

    return v0
.end method

.method static synthetic n(Lcom/xueqiu/android/stock/c/p;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->as:I

    return v0
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    .line 218
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->m()V

    goto :goto_0
.end method

.method final C()Ljava/lang/String;
    .locals 4

    .prologue
    .line 762
    const-string v0, "%s_%d_%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "key_portfolio_stock_quote"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C_()V
    .locals 5

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->aq:Z

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$1;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 209
    :cond_0
    return-void
.end method

.method public final D()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/PortfolioStock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 778
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 794
    :goto_0
    return-object v0

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getHeaderViewsCount()I

    move-result v1

    .line 782
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v0, v1

    .line 783
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getLastVisiblePosition()I

    move-result v2

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 784
    if-gez v0, :cond_2

    .line 785
    const/4 v0, 0x0

    .line 787
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 788
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v1

    .line 791
    :cond_3
    if-lt v0, v1, :cond_4

    .line 792
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 27571
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    goto :goto_0

    .line 794
    :cond_4
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 28571
    iget-object v2, v2, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 794
    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method final E()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/s;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/s;->a:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/p;->b(Landroid/widget/Button;)V

    .line 846
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/s;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/s;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/p;->a(Landroid/widget/Button;)V

    .line 848
    :cond_0
    return-void
.end method

.method public final F()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1020
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/p;->g:Z

    .line 36980
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/x;->setPullToRefreshEnabled(Z)V

    .line 36981
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 37627
    iput-boolean v1, v0, Lcom/xueqiu/android/stock/a/q;->i:Z

    .line 36982
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 38607
    iput v2, v0, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 36983
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 39599
    iput v2, v0, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 36984
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->b()V

    .line 36985
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->E()V

    .line 36986
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 36988
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->f:Lcom/xueqiu/android/stock/c/q;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/c/q;->D()V

    .line 36989
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.switchTabHostEnabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36990
    const-string v1, "extra_bool"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36991
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 36993
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/stock/c/p$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/p$19;-><init>(Lcom/xueqiu/android/stock/c/p;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 1022
    return-void
.end method

.method public final G()Z
    .locals 2

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1087
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    return-object v0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/content/Context;)V

    .line 6719
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 159
    check-cast v0, Lcom/xueqiu/android/stock/c/q;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->f:Lcom/xueqiu/android/stock/c/q;

    .line 7719
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 160
    check-cast v0, Lcom/xueqiu/android/stock/c/r;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->ap:Lcom/xueqiu/android/stock/c/r;

    .line 161
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 8564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 166
    if-eqz v0, :cond_0

    .line 9564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 167
    const-string v1, "arg_category"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    .line 10564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 168
    const-string v1, "arg_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/c/p;->ak:J

    .line 11564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 169
    const-string v1, "arg_portfolio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    .line 12564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 170
    const-string v1, "arg_is_first_show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->ar:Z

    .line 172
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 189
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->ar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->aq:Z

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/p;->H()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->aq:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/p;->ar:Z

    .line 194
    :cond_0
    return-void
.end method

.method final a(Landroid/widget/Button;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 802
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 28623
    iget-boolean v0, v0, Lcom/xueqiu/android/stock/a/q;->i:Z

    .line 802
    if-eqz v0, :cond_0

    .line 803
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 804
    const v0, 0x7f07012c

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 805
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 823
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 808
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 29611
    iget v0, v0, Lcom/xueqiu/android/stock/a/q;->f:I

    .line 808
    if-ne v0, v2, :cond_2

    .line 809
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    if-ne v0, v3, :cond_1

    const v0, 0x7f0703be

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 816
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 31603
    iget v0, v0, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 816
    if-lez v0, :cond_5

    .line 817
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02007c

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 821
    :goto_3
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 809
    :cond_1
    const v0, 0x7f0700d2

    goto :goto_1

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 30611
    iget v0, v0, Lcom/xueqiu/android/stock/a/q;->f:I

    .line 810
    if-nez v0, :cond_4

    .line 811
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    if-ne v0, v3, :cond_3

    const v0, 0x7f0703bf

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_3
    const v0, 0x7f0700d3

    goto :goto_4

    .line 813
    :cond_4
    const v0, 0x7f070223

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 818
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 32603
    iget v0, v0, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 818
    if-gez v0, :cond_6

    .line 819
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020071

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method public final a(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 766
    const-string v0, "PortfolioItemFragment"

    const-string v1, "get quotes:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    if-eqz v0, :cond_4

    .line 768
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 26512
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26591
    iget-object v1, v4, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 26513
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 26514
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonArray;

    .line 26515
    if-eqz v1, :cond_0

    .line 26517
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v6

    .line 26518
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v8

    .line 26520
    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-eqz v3, :cond_2

    const-wide/16 v10, 0x0

    cmpl-double v3, v6, v10

    if-eqz v3, :cond_2

    cmpl-double v3, v8, v6

    if-eqz v3, :cond_2

    .line 26524
    cmpl-double v3, v6, v8

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 26528
    :goto_1
    iget-object v8, v4, Lcom/xueqiu/android/stock/a/q;->k:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26530
    invoke-virtual {v1, v6, v7}, Lcom/xueqiu/android/stock/model/StockQuote;->setCurrent(D)V

    .line 26531
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/xueqiu/android/stock/model/StockQuote;->setChange(D)V

    .line 26532
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->setPercentage(D)V

    goto :goto_0

    .line 26524
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 26526
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 769
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->ao:I

    if-nez v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->b()V

    .line 771
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 774
    :cond_4
    return-void
.end method

.method final b(Landroid/widget/Button;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 826
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 32623
    iget-boolean v0, v0, Lcom/xueqiu/android/stock/a/q;->i:Z

    .line 826
    if-eqz v0, :cond_0

    .line 827
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 828
    const v0, 0x7f070470

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 829
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 841
    :goto_0
    return-void

    .line 831
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 833
    iget v0, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f070109

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 834
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 33595
    iget v0, v0, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 834
    if-lez v0, :cond_2

    .line 835
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02007c

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 839
    :goto_2
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 833
    :cond_1
    const v0, 0x7f0700e4

    goto :goto_1

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 34595
    iget v0, v0, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 836
    if-gez v0, :cond_3

    .line 837
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020071

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {p1}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    .line 405
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 404
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/x;->a(Landroid/view/View;)V

    .line 407
    :cond_0
    return-void
.end method

.method public final c_(Z)V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/c/j;->c_(Z)V

    .line 1102
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 5

    .prologue
    const v4, 0x7f0e0055

    .line 395
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19410
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19411
    const v1, 0x7f0704c9

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19412
    const-string v1, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 19413
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->i()Landroid/support/v4/a/q;

    move-result-object v1

    .line 19414
    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 19415
    if-eqz v0, :cond_2

    .line 19416
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19417
    const-string v0, "tag_position_card"

    invoke-virtual {v1, v0}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/j;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    .line 19418
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    if-nez v0, :cond_0

    .line 20043
    new-instance v0, Lcom/xueqiu/android/trade/c/j;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/j;-><init>()V

    .line 19419
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    .line 19420
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    const-string v1, "tag_position_card"

    invoke-virtual {v2, v4, v0, v1}, Landroid/support/v4/a/ac;->b(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 19421
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    .line 20275
    iget-boolean v0, v0, Lcom/xueqiu/android/common/b;->n:Z

    .line 19421
    if-eqz v0, :cond_0

    .line 19422
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->d()I

    .line 19435
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 399
    :cond_1
    return-void

    .line 19426
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    if-eqz v0, :cond_3

    .line 19427
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    invoke-virtual {v2, v0}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 19428
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    .line 21275
    iget-boolean v0, v0, Lcom/xueqiu/android/common/b;->n:Z

    .line 19428
    if-eqz v0, :cond_3

    .line 19429
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->d()I

    .line 19432
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/p;->at:Lcom/xueqiu/android/trade/c/j;

    .line 19433
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p;->al:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method final u()Ljava/lang/String;
    .locals 4

    .prologue
    .line 758
    const-string v0, "%s_%d_%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "key_portfolio_stocks"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/c/p;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
