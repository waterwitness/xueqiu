.class public final Lcom/xueqiu/android/stock/c/k;
.super Lcom/xueqiu/android/common/c;
.source "PortfolioCategoryFragment.java"


# instance fields
.field public a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private b:J

.field private c:Landroid/view/View;

.field private d:Lcom/xueqiu/android/stock/c/l;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 49
    return-void
.end method

.method public static a(J)Lcom/xueqiu/android/stock/c/k;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/xueqiu/android/stock/c/k;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/k;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "arg_user_id"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/k;->e(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/k;)V
    .locals 2

    .prologue
    .line 26
    .line 6147
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 6148
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/k;)V
    .locals 2

    .prologue
    .line 26
    .line 6152
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 6153
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/k;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/k;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/xueqiu/android/stock/c/k;->b:J

    return-wide v0
.end method


# virtual methods
.method public final F_()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->F_()V

    .line 159
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const v5, 0x7f020460

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 96
    instance-of v3, v0, Lcom/xueqiu/android/common/MainActivity;

    if-eqz v3, :cond_0

    .line 97
    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    .line 2813
    iput-boolean v1, v0, Lcom/xueqiu/android/common/MainActivity;->p:Z

    .line 3066
    iget-object v3, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v3}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v3

    .line 2814
    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 4066
    iget-object v3, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v3}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v3

    .line 2815
    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/a/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 5066
    iget-object v3, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v3}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v3

    .line 2816
    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/a/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/k;->e_(Z)V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->e:Landroid/view/View;

    if-nez v0, :cond_3

    .line 101
    const v0, 0x7f03014f

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/k;->e:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->e:Landroid/view/View;

    .line 5120
    const v3, 0x7f0e0176

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 5121
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/k;->d:Lcom/xueqiu/android/stock/c/l;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 5122
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0301b5

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/k;->c:Landroid/view/View;

    .line 5123
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->c:Landroid/view/View;

    const v3, 0x7f0e0651

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5124
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/k;->c:Landroid/view/View;

    const v4, 0x7f0e0650

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5125
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5126
    new-instance v4, Lcom/xueqiu/android/stock/c/k$4;

    invoke-direct {v4, p0, v0, v3}, Lcom/xueqiu/android/stock/c/k$4;-><init>(Lcom/xueqiu/android/stock/c/k;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5134
    new-instance v4, Lcom/xueqiu/android/stock/c/k$5;

    invoke-direct {v4, p0, v3, v0}, Lcom/xueqiu/android/stock/c/k$5;-><init>(Lcom/xueqiu/android/stock/c/k;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5142
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    .line 5143
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 107
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->d(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->c(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->w()Landroid/support/v7/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/k;->c:Landroid/view/View;

    new-instance v4, Landroid/support/v7/a/c;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/support/v7/a/c;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/a/a;->a(Landroid/view/View;Landroid/support/v7/a/c;)V

    .line 5162
    iget-wide v4, p0, Lcom/xueqiu/android/stock/c/k;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    move v0, v1

    .line 112
    :goto_1
    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->e:Landroid/view/View;

    return-object v0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/k;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 5162
    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 60
    new-instance v0, Lcom/xueqiu/android/stock/c/l;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/stock/c/l;-><init>(Lcom/xueqiu/android/stock/c/k;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/k;->d:Lcom/xueqiu/android/stock/c/l;

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 61
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 62
    const-string v1, "arg_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/c/k;->b:J

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.portfolioCategoryRefreshBg"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/k$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/k$1;-><init>(Lcom/xueqiu/android/stock/c/k;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/k;->a(Lrx/j;)V

    .line 75
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.portfolioBeginEdit"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/k$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/k$2;-><init>(Lcom/xueqiu/android/stock/c/k;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/k;->a(Lrx/j;)V

    .line 82
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/k;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.portfolioFinishEdit"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/k$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/k$3;-><init>(Lcom/xueqiu/android/stock/c/k;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/k;->a(Lrx/j;)V

    .line 88
    return-void
.end method
