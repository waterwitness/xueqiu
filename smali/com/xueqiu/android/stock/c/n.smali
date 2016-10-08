.class public final Lcom/xueqiu/android/stock/c/n;
.super Lcom/xueqiu/android/common/e;
.source "PortfolioFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;
.implements Lcom/xueqiu/android/stock/c/q;
.implements Lcom/xueqiu/android/stock/c/r;


# instance fields
.field private ak:Lcom/xueqiu/android/message/client/MessageService;

.field private al:Lrx/j;

.field private am:Z

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:Landroid/view/View;

.field private as:Landroid/view/View;

.field private at:Landroid/content/ServiceConnection;

.field private b:I

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/viewpagerindicator/TabPageIndicator;

.field private f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private g:[Lcom/xueqiu/android/stock/c/p;

.field private h:Lcom/xueqiu/android/stock/c/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lcom/xueqiu/android/common/e;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    .line 97
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 99
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    .line 101
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->h:Lcom/xueqiu/android/stock/c/o;

    .line 107
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/n;->am:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/c/n;->an:I

    .line 113
    iput v1, p0, Lcom/xueqiu/android/stock/c/n;->ao:I

    .line 115
    iput v1, p0, Lcom/xueqiu/android/stock/c/n;->ap:I

    .line 117
    iput v1, p0, Lcom/xueqiu/android/stock/c/n;->aq:I

    .line 123
    new-instance v0, Lcom/xueqiu/android/stock/c/n$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/n$1;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->at:Landroid/content/ServiceConnection;

    .line 146
    return-void
.end method

.method private H()Ljava/lang/String;
    .locals 4

    .prologue
    .line 459
    const-string v0, "%s_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "key_selected_portfolio"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private I()Ljava/lang/String;
    .locals 4

    .prologue
    .line 463
    const-string v0, "%s_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "key_portfolios"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private J()Ljava/lang/String;
    .locals 4

    .prologue
    .line 467
    const-string v0, "%s_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "portfolio_sort"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private K()V
    .locals 6

    .prologue
    const v5, 0x7f0e00a1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    iput-boolean v3, p0, Lcom/xueqiu/android/stock/c/n;->am:Z

    .line 528
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xueqiu/android/stock/c/n;->am:Z

    .line 8030
    iget-boolean v2, v0, Lcom/xueqiu/android/stock/c/p;->g:Z

    if-eq v2, v1, :cond_0

    .line 8031
    iput-boolean v1, v0, Lcom/xueqiu/android/stock/c/p;->g:Z

    .line 8033
    :cond_0
    if-eqz v1, :cond_1

    .line 8034
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->F()V

    .line 529
    :goto_0
    const v0, 0x7f01008e

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 530
    const v2, 0x7f0e0783

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 531
    const v1, 0x7f0e0522

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 13240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 532
    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    if-ne v0, v4, :cond_3

    .line 14240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 534
    const v1, 0x7f0e0501

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 535
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700cc

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/n;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 540
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0, v4}, Lcom/viewpagerindicator/TabPageIndicator;->setSelectEnable(Z)V

    .line 541
    return-void

    .line 9025
    :cond_1
    iput-boolean v3, v0, Lcom/xueqiu/android/stock/c/p;->g:Z

    .line 10003
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->b:Lcom/xueqiu/android/common/widget/x;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/common/widget/x;->setPullToRefreshEnabled(Z)V

    .line 10004
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    .line 10190
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    .line 10005
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 10627
    iput-boolean v3, v1, Lcom/xueqiu/android/stock/a/q;->i:Z

    .line 10006
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 10007
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->E()V

    .line 10008
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->invalidateOptionsMenu()V

    .line 10009
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10010
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->f:Lcom/xueqiu/android/stock/c/q;

    invoke-interface {v1}, Lcom/xueqiu/android/stock/c/q;->C()V

    .line 10012
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.switchTabHostEnabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10013
    const-string v2, "extra_bool"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10014
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 16240
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 537
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07010b

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/n;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private L()V
    .locals 7

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/stock/c/n;->c:J

    const/4 v4, 0x0

    iget v5, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    new-instance v6, Lcom/xueqiu/android/stock/c/n$3;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/stock/c/n$3;-><init>(Lcom/xueqiu/android/stock/c/n;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 588
    return-void
.end method

.method private M()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    .line 694
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    .line 16442
    iget-boolean v0, v0, Lcom/xueqiu/android/base/b;->c:Z

    .line 696
    if-nez v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->D()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->D()Ljava/util/List;

    move-result-object v0

    .line 709
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v1

    .line 16798
    iget-object v1, v1, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 17591
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 710
    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/stock/c/n$7;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/stock/c/n$7;-><init>(Lcom/xueqiu/android/stock/c/n;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 716
    new-instance v1, Lcom/xueqiu/android/stock/c/n$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$9;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/n$8;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$8;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    .line 722
    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 728
    new-instance v2, Lcom/xueqiu/android/stock/c/n$11;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$11;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/stock/c/n$10;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$10;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    .line 734
    invoke-virtual {v0, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 740
    invoke-static {v1, v0}, Lrx/a;->a(Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v0

    .line 742
    invoke-virtual {v0}, Lrx/a;->d()Lrx/a;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v3}, Lrx/a;->a(I)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/n$13;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$13;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 750
    invoke-virtual {v0, v3}, Lrx/a;->a(I)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/stock/c/n$14;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$14;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v2}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 756
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/n$15;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$15;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    new-instance v3, Lcom/xueqiu/android/stock/c/n$16;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/stock/c/n$16;-><init>(Lcom/xueqiu/android/stock/c/n;Lrx/a;)V

    .line 757
    invoke-virtual {v1, v2, v3}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    goto/16 :goto_0
.end method

.method private N()Z
    .locals 4

    .prologue
    .line 828
    iget-wide v0, p0, Lcom/xueqiu/android/stock/c/n;->c:J

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

.method private O()Lcom/xueqiu/android/stock/c/p;
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 895
    :goto_0
    return-object v0

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 895
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/n;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/n;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n;->ak:Lcom/xueqiu/android/message/client/MessageService;

    return-object p1
.end method

.method public static a(IJ)Lcom/xueqiu/android/stock/c/n;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/xueqiu/android/stock/c/n;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/n;-><init>()V

    .line 137
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    const-string v2, "arg_category"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v2, "arg_user_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/n;->e(Landroid/os/Bundle;)V

    .line 141
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/xueqiu/android/stock/c/n;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/model/Portfolio;)Z
    .locals 2

    .prologue
    .line 77
    .line 24544
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 24545
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 24546
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 24548
    :cond_1
    const/4 v0, 0x1

    .line 77
    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/model/Portfolio;Lcom/xueqiu/android/stock/model/Portfolio;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    .line 27645
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 27646
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 27648
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 27646
    goto :goto_0

    .line 27648
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 77
    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/List;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    .line 27616
    if-eqz p0, :cond_0

    .line 27617
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 27630
    :goto_0
    return v0

    .line 27621
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 27623
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 27624
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/n;->b(Lcom/xueqiu/android/stock/model/Portfolio;Lcom/xueqiu/android/stock/model/Portfolio;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 27629
    :goto_1
    if-nez v0, :cond_2

    move v0, v2

    .line 27630
    goto :goto_0

    :cond_4
    move v0, v3

    .line 77
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Portfolio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 597
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v2

    .line 598
    const-string v3, "\u53ea\u770b\u7f8e\u80a1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    const-string v2, "\u7f8e\u80a1"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_1
    const-string v3, "\u53ea\u770b\u6caa\u6df1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    const-string v2, "\u6caa\u6df1"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_2
    const-string v3, "\u53ea\u770b\u6e2f\u80a1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 603
    const-string v2, "\u6e2f\u80a1"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_3
    const-string v3, "\u6211\u7684\u6301\u4ed3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 605
    const-string v2, "\u6301\u4ed3"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_4
    const-string v3, "\u6211\u7684\u7ec4\u5408"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 607
    const-string v2, "\u6211\u7684"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_5
    const-string v3, "\u4ed6\u7684\u7ec4\u5408"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    const-string v2, "\u4ed6\u7684"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/model/Portfolio;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_6
    return-object p0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->L()V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 77
    .line 28653
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28656
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/stock/c/n$5;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/stock/c/n$5;-><init>(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 77
    :cond_0
    return-void
.end method

.method private static b(Lcom/xueqiu/android/stock/model/Portfolio;Lcom/xueqiu/android/stock/model/Portfolio;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 637
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 638
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 638
    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Portfolio;->getType()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)Lrx/a;
    .locals 4

    .prologue
    .line 28788
    sget-boolean v0, Lcom/xueqiu/android/base/util/v;->a:Z

    if-eqz v0, :cond_1

    .line 28789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28790
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 28793
    :cond_0
    const-string v0, "PortfolioFragment"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28795
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ak:Lcom/xueqiu/android/message/client/MessageService;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/util/List;Z)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28796
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$17;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$17;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    .line 28797
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/n;)V
    .locals 5

    .prologue
    .line 77
    .line 19447
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 19450
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 19451
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20091
    iget-object v4, v3, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    if-eqz v4, :cond_0

    .line 20092
    iget-object v4, v3, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/a/q;->a()V

    .line 20093
    iget-object v3, v3, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 19450
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)Lrx/a;
    .locals 4

    .prologue
    .line 29782
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 29783
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 29784
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/support/v4/a/i;)Lrx/a;

    move-result-object v0

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/n;)V
    .locals 5

    .prologue
    .line 77
    .line 20433
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    if-nez v0, :cond_1

    .line 20434
    :cond_0
    :goto_0
    return-void

    .line 20436
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    .line 20742
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 21571
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 20743
    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 22571
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 20744
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 24442
    :cond_2
    :goto_1
    const-string v0, "%d|%d|%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xueqiu/android/stock/c/n;->ao:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xueqiu/android/stock/c/n;->ap:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/xueqiu/android/stock/c/n;->aq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24443
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20438
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->H()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 20751
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v4, v0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 22591
    iget-object v4, v4, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 20751
    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20752
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 23571
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 20752
    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/c/n;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/n;->am:Z

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/c/n;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    .line 24472
    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    if-ne v0, v3, :cond_0

    .line 24473
    const v0, 0x7f070203

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 24477
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f070205

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 24478
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/xueqiu/android/stock/c/n$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$2;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    .line 24479
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 24509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 24510
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    return-void

    .line 24475
    :cond_0
    const v0, 0x7f070207

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->K()V

    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/stock/c/n;)Lcom/viewpagerindicator/TabPageIndicator;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/stock/c/n;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->as:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/stock/c/n;)[Lcom/xueqiu/android/stock/c/p;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/stock/c/o;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->h:Lcom/xueqiu/android/stock/c/o;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/stock/c/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/stock/c/n;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 77
    .line 25514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/n;->am:Z

    .line 25515
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->F()V

    .line 25516
    const v0, 0x7f01008d

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 26240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 25517
    const v2, 0x7f0e0783

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25518
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    const v1, 0x7f0e0501

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25519
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    const v1, 0x7f0e0522

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25520
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 25521
    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07012e

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/n;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25522
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 25523
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0, v4}, Lcom/viewpagerindicator/TabPageIndicator;->setSelectEnable(Z)V

    .line 77
    return-void
.end method

.method static synthetic p(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/stock/c/p;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/xueqiu/android/stock/c/n;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 77
    .line 28358
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 28370
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 28371
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 28372
    if-eqz v5, :cond_0

    .line 28373
    invoke-virtual {v2, v5}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 28371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28376
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->e()I

    .line 28362
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xueqiu/android/stock/c/p;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    .line 28363
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->d()V

    .line 28364
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicator;->a()V

    .line 28365
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 28366
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setEnabled(Z)V

    .line 77
    return-void
.end method

.method static synthetic r(Lcom/xueqiu/android/stock/c/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->M()V

    return-void
.end method

.method static synthetic t(Lcom/xueqiu/android/stock/c/n;)J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/xueqiu/android/stock/c/n;->c:J

    return-wide v0
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->O()Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->B_()V

    .line 825
    :cond_0
    return-void
.end method

.method public final C()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1

    .line 672
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 675
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/stock/c/n$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$6;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    .line 681
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lrx/j;)V

    .line 682
    return-void
.end method

.method public final D()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->al:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 689
    :cond_0
    return-void
.end method

.method public final E()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->ao:I

    return v0
.end method

.method public final F()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->ap:I

    return v0
.end method

.method public final F_()V
    .locals 0

    .prologue
    .line 395
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->F_()V

    .line 396
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->D()V

    .line 397
    return-void
.end method

.method public final G()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->aq:I

    return v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v5, 0x7f0e0783

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/stock/c/n;->e_(Z)V

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    if-nez v0, :cond_a

    .line 215
    const v0, 0x7f03014e

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    .line 5238
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->N()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5239
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    const v1, 0x7f0e0521

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5240
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5254
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    const v1, 0x7f0e0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    .line 5255
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 5256
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    const v1, 0x7f0e0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->as:Landroid/view/View;

    .line 5257
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0}, Lcom/viewpagerindicator/TabPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$23;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$23;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5290
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->b(Ljava/lang/String;)V

    .line 5292
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    .line 5295
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xueqiu/android/stock/c/p;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    .line 5297
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5298
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    new-array v1, v3, [Lcom/xueqiu/android/stock/c/p;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/stock/c/p;

    move v2, v3

    .line 5299
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 5300
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 5301
    array-length v6, v0

    move v5, v3

    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v7, v0, v5

    .line 5302
    if-eqz v7, :cond_1

    .line 6077
    iget-object v8, v7, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    .line 5302
    invoke-static {v1, v8}, Lcom/xueqiu/android/stock/c/n;->b(Lcom/xueqiu/android/stock/model/Portfolio;Lcom/xueqiu/android/stock/model/Portfolio;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5303
    iget-object v8, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    aput-object v7, v8, v2

    .line 5301
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5242
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$22;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$22;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 5299
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 5308
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->h:Lcom/xueqiu/android/stock/c/o;

    if-nez v0, :cond_5

    .line 5309
    new-instance v0, Lcom/xueqiu/android/stock/c/o;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/stock/c/o;-><init>(Lcom/xueqiu/android/stock/c/n;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->h:Lcom/xueqiu/android/stock/c/o;

    .line 5311
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->h:Lcom/xueqiu/android/stock/c/o;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 5312
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    new-instance v1, Lcom/xueqiu/android/stock/c/n$24;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$24;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->a(Landroid/support/v4/view/cp;)V

    .line 5343
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->e:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 5344
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 5345
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->h:Lcom/xueqiu/android/stock/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/o;->d()V

    .line 5348
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->N()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->an:I

    if-eq v0, v9, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    .line 5350
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/c/n;->an:I

    if-le v0, v1, :cond_6

    .line 5351
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget v1, p0, Lcom/xueqiu/android/stock/c/n;->an:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    .line 5352
    iput v9, p0, Lcom/xueqiu/android/stock/c/n;->an:I

    :cond_6
    move v3, v4

    .line 222
    :cond_7
    :goto_3
    if-nez v3, :cond_8

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 223
    :cond_8
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->L()V

    .line 226
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    return-object v0

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->ar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method

.method public final a(III)V
    .locals 8

    .prologue
    .line 848
    iput p1, p0, Lcom/xueqiu/android/stock/c/n;->ao:I

    .line 849
    iput p2, p0, Lcom/xueqiu/android/stock/c/n;->ap:I

    .line 850
    iput p3, p0, Lcom/xueqiu/android/stock/c/n;->aq:I

    .line 852
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    if-eqz v0, :cond_1

    .line 853
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 854
    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->ao:I

    iget v5, p0, Lcom/xueqiu/android/stock/c/n;->ap:I

    iget v6, p0, Lcom/xueqiu/android/stock/c/n;->aq:I

    .line 18064
    iget-object v7, v4, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    if-eqz v7, :cond_0

    .line 18065
    iget-object v7, v4, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 18599
    iput v0, v7, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 18066
    iget-object v0, v4, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 18607
    iput v5, v0, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 18067
    iget-object v0, v4, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    .line 18615
    iput v6, v0, Lcom/xueqiu/android/stock/a/q;->f:I

    .line 18068
    iget-object v0, v4, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->b()V

    .line 18069
    iget-object v0, v4, Lcom/xueqiu/android/stock/c/p;->e:Lcom/xueqiu/android/stock/a/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 18071
    iget-object v0, v4, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/s;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/s;->b:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/stock/c/p;->a(Landroid/widget/Button;)V

    .line 18072
    iget-object v0, v4, Lcom/xueqiu/android/stock/c/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/s;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/s;->a:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/stock/c/p;->b(Landroid/widget/Button;)V

    .line 853
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 857
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/content/Context;)V

    .line 388
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->M()V

    .line 391
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/os/Bundle;)V

    .line 151
    const-string v0, "portfolio"

    .line 2073
    iput-object v0, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 152
    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 153
    const-string v1, "arg_category"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 154
    const-string v1, "arg_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/c/n;->c:J

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4591
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->I()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/n$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/n$4;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    .line 4592
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/n$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4591
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 158
    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/n;->an:I

    .line 4899
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4902
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->J()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4904
    if-eqz v0, :cond_2

    .line 4905
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4907
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4911
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/c/n;->ao:I

    .line 4912
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/c/n;->ap:I

    .line 4913
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/n;->aq:I

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$12;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    .line 169
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lrx/j;)V

    .line 178
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$18;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lrx/j;)V

    .line 184
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$19;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lrx/j;)V

    .line 192
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$20;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$20;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lrx/j;)V

    .line 198
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.intent.action.USER_OFFLINE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/n$21;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/n$21;-><init>(Lcom/xueqiu/android/stock/c/n;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lrx/j;)V

    .line 205
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/n;->at:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 207
    return-void

    .line 165
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/n;->d:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/e;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 232
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/MainActivity;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->j()Ljava/lang/String;

    move-result-object v1

    .line 6816
    const v0, 0x7f0e024b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/n;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6817
    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 235
    :cond_0
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->b(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->a:Ljava/lang/String;

    .line 7197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 274
    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 283
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/c/p;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c_(Z)V
    .locals 4

    .prologue
    .line 919
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->c_(Z)V

    .line 920
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 926
    :cond_0
    return-void

    .line 923
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->g:[Lcom/xueqiu/android/stock/c/p;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 924
    invoke-virtual {v3, p1}, Lcom/xueqiu/android/stock/c/p;->c_(Z)V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 401
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->d()V

    .line 402
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->D()V

    .line 403
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->e()V

    .line 382
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->D()V

    .line 383
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->o()V

    .line 408
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->M()V

    .line 409
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->C()V

    .line 412
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n;->at:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n;->f:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->a()V

    .line 420
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->q()V

    .line 421
    return-void
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/c/n;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y_()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/n;->am:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/n;->K()V

    .line 427
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/e;->y_()Z

    move-result v0

    goto :goto_0
.end method
