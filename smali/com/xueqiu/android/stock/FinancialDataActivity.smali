.class public Lcom/xueqiu/android/stock/FinancialDataActivity;
.super Lcom/xueqiu/android/common/b;
.source "FinancialDataActivity.java"

# interfaces
.implements Lcom/xueqiu/android/stock/q;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private p:[Landroid/support/v4/a/i;

.field private q:[Ljava/lang/String;

.field private r:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private s:Lcom/viewpagerindicator/TabPageIndicator;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->p:[Landroid/support/v4/a/i;

    .line 42
    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->q:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->r:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 44
    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->s:Lcom/viewpagerindicator/TabPageIndicator;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->t:Z

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/FinancialDataActivity;)[Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->p:[Landroid/support/v4/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/FinancialDataActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->q:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final j()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->t:Z

    .line 123
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->t:Z

    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x641

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->j:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_page_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->k:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->k:Ljava/lang/String;

    const-string v2, "XJLLB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v0, "\u73b0\u91d1\u6d41\u91cf\u8868"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v5, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->k:Ljava/lang/String;

    const-string v2, "GSLRB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v0, "\u5229\u6da6\u8868"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->k:Ljava/lang/String;

    const-string v2, "ZCFZB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string v0, "\u8d44\u4ea7\u8d1f\u503a\u8868"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x6

    invoke-direct {v0, v5, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 70
    :cond_2
    if-eqz v0, :cond_3

    .line 71
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 74
    :cond_3
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->q:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v4/a/i;

    iget-object v1, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->k:Ljava/lang/String;

    .line 78
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/c/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xueqiu/android/stock/c/c;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->k:Ljava/lang/String;

    .line 79
    invoke-static {v1, v2, v4}, Lcom/xueqiu/android/stock/c/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xueqiu/android/stock/c/c;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->p:[Landroid/support/v4/a/i;

    .line 82
    new-instance v1, Lcom/xueqiu/android/stock/b;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/stock/b;-><init>(Lcom/xueqiu/android/stock/FinancialDataActivity;Landroid/support/v4/a/q;)V

    .line 84
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->r:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->r:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->r:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->p:[Landroid/support/v4/a/i;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->r:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setSwipeEnable(Z)V

    .line 89
    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FinancialDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->s:Lcom/viewpagerindicator/TabPageIndicator;

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->s:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->r:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->s:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/xueqiu/android/stock/FinancialDataActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/FinancialDataActivity$1;-><init>(Lcom/xueqiu/android/stock/FinancialDataActivity;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->s:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v0, v3}, Lcom/viewpagerindicator/TabPageIndicator;->setCurrentItem(I)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->p:[Landroid/support/v4/a/i;

    aget-object v0, v0, v3

    check-cast v0, Lcom/xueqiu/android/stock/c/c;

    .line 1074
    iput-boolean v4, v0, Lcom/xueqiu/android/stock/c/c;->a:Z

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xueqiu/android/common/b;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/FinancialDataActivity;->t:Z

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
