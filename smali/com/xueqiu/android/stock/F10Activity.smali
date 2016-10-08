.class public Lcom/xueqiu/android/stock/F10Activity;
.super Lcom/xueqiu/android/common/b;
.source "F10Activity.java"

# interfaces
.implements Lcom/xueqiu/android/stock/q;


# instance fields
.field private j:[Landroid/support/v4/a/i;

.field private k:[Ljava/lang/String;

.field private p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private q:Lcom/viewpagerindicator/TabPageIndicator;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Lcom/xueqiu/android/stock/model/StockQuote;

.field private u:Landroid/view/ViewGroup;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->j:[Landroid/support/v4/a/i;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->k:[Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 36
    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/F10Activity;->v:Z

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/F10Activity;)[Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->j:[Landroid/support/v4/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/F10Activity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/F10Activity;)Lcom/viewpagerindicator/TabPageIndicator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/F10Activity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final j()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/F10Activity;->v:Z

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 47
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/F10Activity;->v:Z

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/F10Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/F10Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_page"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/F10Activity;->s:I

    .line 82
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/F10Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->t:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 83
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/F10Activity;->setContentView(I)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 1150
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->t:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_0

    .line 1153
    const v0, 0x7f0e01a2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/F10Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->u:Landroid/view/ViewGroup;

    .line 1154
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->u:Landroid/view/ViewGroup;

    const v1, 0x7f0e00ce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/F10Activity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/F10Activity$3;-><init>(Lcom/xueqiu/android/stock/F10Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->u:Landroid/view/ViewGroup;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->u:Landroid/view/ViewGroup;

    const v1, 0x7f0e05d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1164
    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->t:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->u:Landroid/view/ViewGroup;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1167
    const-string v1, "%s:%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/stock/F10Activity;->t:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getExchange()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xueqiu/android/stock/F10Activity;->t:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x641

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 89
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 92
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/F10Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->k:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/v4/a/i;

    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    .line 94
    invoke-static {v1, v4}, Lcom/xueqiu/android/stock/c/b;->a(Ljava/lang/String;I)Lcom/xueqiu/android/stock/c/b;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    .line 95
    invoke-static {v1}, Lcom/xueqiu/android/stock/c/e;->b(Ljava/lang/String;)Lcom/xueqiu/android/stock/c/e;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    .line 96
    invoke-static {v1, v6}, Lcom/xueqiu/android/stock/c/b;->a(Ljava/lang/String;I)Lcom/xueqiu/android/stock/c/b;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    .line 97
    invoke-static {v1, v7}, Lcom/xueqiu/android/stock/c/b;->a(Ljava/lang/String;I)Lcom/xueqiu/android/stock/c/b;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    .line 98
    invoke-static {v1, v8}, Lcom/xueqiu/android/stock/c/b;->a(Ljava/lang/String;I)Lcom/xueqiu/android/stock/c/b;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/xueqiu/android/stock/F10Activity;->r:Ljava/lang/String;

    const/4 v3, 0x5

    .line 99
    invoke-static {v2, v3}, Lcom/xueqiu/android/stock/c/b;->a(Ljava/lang/String;I)Lcom/xueqiu/android/stock/c/b;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->j:[Landroid/support/v4/a/i;

    .line 102
    new-instance v1, Lcom/xueqiu/android/stock/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/F10Activity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/stock/a;-><init>(Lcom/xueqiu/android/stock/F10Activity;Landroid/support/v4/a/q;)V

    .line 104
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/F10Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->j:[Landroid/support/v4/a/i;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 108
    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/F10Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 111
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/F10Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/xueqiu/android/stock/F10Activity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TabPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/F10Activity$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/F10Activity$1;-><init>(Lcom/xueqiu/android/stock/F10Activity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/xueqiu/android/stock/F10Activity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/F10Activity$2;-><init>(Lcom/xueqiu/android/stock/F10Activity;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->q:Lcom/viewpagerindicator/TabPageIndicator;

    iget v1, p0, Lcom/xueqiu/android/stock/F10Activity;->s:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->j:[Landroid/support/v4/a/i;

    iget v1, p0, Lcom/xueqiu/android/stock/F10Activity;->s:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/xueqiu/android/stock/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/b;->u()V

    .line 147
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/stock/F10Activity;->p:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

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
