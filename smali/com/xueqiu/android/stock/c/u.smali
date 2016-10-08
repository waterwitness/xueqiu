.class public Lcom/xueqiu/android/stock/c/u;
.super Lcom/xueqiu/android/common/e;
.source "QuotesCenterFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private ak:Lcom/viewpagerindicator/TabPageIndicator;

.field private al:Landroid/view/View;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Landroid/support/v4/a/i;

.field private f:[Ljava/lang/String;

.field private g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private h:Landroid/support/v4/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/xueqiu/android/stock/c/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/stock/c/u;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/e;-><init>()V

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    .line 44
    const-string v0, "\u884c\u60c5"

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/u;)[Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/u;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/u;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B_()V
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/v;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/w;

    .line 254
    if-eqz v0, :cond_0

    .line 7383
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 7384
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7385
    :cond_0
    :goto_0
    return-void

    .line 7387
    :cond_1
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->m()V

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    if-nez v0, :cond_1

    .line 88
    const v0, 0x7f030149

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    const v1, 0x7f0e0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->ak:Lcom/viewpagerindicator/TabPageIndicator;

    .line 92
    new-instance v0, Lcom/xueqiu/android/stock/c/v;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/u;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/stock/c/v;-><init>(Lcom/xueqiu/android/stock/c/u;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->ak:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->ak:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/xueqiu/android/stock/c/u$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/u$1;-><init>(Lcom/xueqiu/android/stock/c/u;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    return-object v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->a(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "quote"

    .line 1073
    iput-object v0, p0, Lcom/xueqiu/android/common/e;->a:Ljava/lang/String;

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 77
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 78
    const-string v1, "quote_center_type"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 79
    const-string v1, "quote_center_title"

    const-string v2, "\u884c\u60c5"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->d:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/u;->a(Ljava/lang/CharSequence;)V

    .line 4203
    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 4204
    invoke-static {v6}, Lcom/xueqiu/android/stock/c/w;->b(I)Lcom/xueqiu/android/stock/c/w;

    move-result-object v0

    .line 4205
    invoke-static {v7}, Lcom/xueqiu/android/stock/c/w;->b(I)Lcom/xueqiu/android/stock/c/w;

    move-result-object v1

    .line 4206
    invoke-static {v8}, Lcom/xueqiu/android/stock/c/w;->b(I)Lcom/xueqiu/android/stock/c/w;

    move-result-object v2

    .line 4207
    invoke-static {v4}, Lcom/xueqiu/android/stock/c/w;->b(I)Lcom/xueqiu/android/stock/c/w;

    move-result-object v3

    .line 4209
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/support/v4/a/i;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    iput-object v4, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    .line 4210
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/u;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->f:[Ljava/lang/String;

    .line 4212
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xaf0

    invoke-direct {v0, v1, v7}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 4213
    const-string v1, "name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/u;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 4214
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 4221
    :cond_1
    :goto_0
    return-void

    .line 4215
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    .line 4216
    invoke-static {v6}, Lcom/xueqiu/android/stock/e;->b(I)Lcom/xueqiu/android/stock/e;

    move-result-object v0

    .line 4217
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/w;->b(I)Lcom/xueqiu/android/stock/c/w;

    move-result-object v1

    .line 4219
    new-array v2, v7, [Landroid/support/v4/a/i;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    iput-object v2, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    .line 4220
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/u;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->f:[Ljava/lang/String;

    goto :goto_0

    .line 4221
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 4223
    const-string v0, "SW2014"

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/h;->b(Ljava/lang/String;)Lcom/xueqiu/android/stock/c/h;

    move-result-object v0

    .line 4224
    const-string v1, "BD1105"

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/h;->b(Ljava/lang/String;)Lcom/xueqiu/android/stock/c/h;

    move-result-object v1

    .line 4225
    const-string v2, "BD1102"

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/h;->b(Ljava/lang/String;)Lcom/xueqiu/android/stock/c/h;

    move-result-object v2

    .line 4227
    new-array v3, v8, [Landroid/support/v4/a/i;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    iput-object v3, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    .line 4228
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/u;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/u;->f:[Ljava/lang/String;

    .line 4230
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xaf0

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 4231
    const-string v1, "name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/u;->f:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 4232
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v2, 0x7f0e0511

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 137
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/e;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_2

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/u;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/u;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_exchange_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/u;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_exchange_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    .line 159
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/u;->b(Ljava/lang/String;)V

    .line 160
    return-void

    .line 6184
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->al:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6186
    const v1, 0x7f0e04a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/u$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/u$2;-><init>(Lcom/xueqiu/android/stock/c/u;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6194
    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/u$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/u$3;-><init>(Lcom/xueqiu/android/stock/c/u;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 150
    :cond_3
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    invoke-virtual {v1}, Landroid/support/v4/a/v;->b()I

    move-result v1

    if-lt v1, v3, :cond_4

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 152
    :cond_4
    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    invoke-virtual {v1}, Landroid/support/v4/a/v;->b()I

    move-result v1

    if-lt v1, v4, :cond_5

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 154
    :cond_5
    const-string v1, "AH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    invoke-virtual {v0}, Landroid/support/v4/a/v;->b()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget v0, p0, Lcom/xueqiu/android/stock/c/u;->c:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->h:Landroid/support/v4/a/v;

    invoke-virtual {v0, v3}, Landroid/support/v4/a/v;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/w;

    .line 244
    if-eqz v0, :cond_0

    .line 7359
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7363
    iget v1, v0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7364
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    const v1, 0x7f0e05ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7365
    if-eqz v0, :cond_0

    .line 7369
    if-eqz p1, :cond_1

    .line 7370
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 7372
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/e;->b(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->a:Ljava/lang/String;

    .line 7197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 165
    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/xueqiu/android/stock/c/w;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u;->e:[Landroid/support/v4/a/i;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/u;->g:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 175
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lcom/xueqiu/android/stock/c/w;

    .line 176
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/c/w;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
