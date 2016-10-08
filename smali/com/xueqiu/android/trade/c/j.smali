.class public final Lcom/xueqiu/android/trade/c/j;
.super Lcom/xueqiu/android/common/c;
.source "PositionCardFragment.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/viewpagerindicator/CirclePageIndicator;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/xueqiu/android/trade/c/k;

.field private f:Lcom/xueqiu/android/trade/c/l;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/j;)Lcom/xueqiu/android/trade/c/k;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->e:Lcom/xueqiu/android/trade/c/k;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/j;Lcom/xueqiu/android/trade/c/l;)Lcom/xueqiu/android/trade/c/l;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/j;->f:Lcom/xueqiu/android/trade/c/l;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/j;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/xueqiu/android/trade/c/j;->c(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/j;I)Z
    .locals 1

    .prologue
    .line 32
    .line 5282
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method

.method private static b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentTradeAccountTid()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 109
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 110
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_1
    return v1

    .line 109
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/j;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/j;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private static c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 119
    .line 121
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 123
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v2

    .line 124
    goto :goto_0

    :cond_0
    move v1, v2

    .line 128
    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v0

    .line 130
    :cond_2
    if-nez v3, :cond_3

    .line 2150
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeBroker;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;-><init>()V

    .line 2151
    const-string v3, "\u5e73\u5b89\u8bc1\u5238"

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->setTraderName(Ljava/lang/String;)V

    .line 2152
    const-string v3, "http://assets.imedao.com/images/broker-logo/PINGAN.png"

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->setTraderLogo(Ljava/lang/String;)V

    .line 2153
    new-instance v3, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;-><init>()V

    .line 2154
    const-string v4, "PAMID"

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTid(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTradeBroker(Lcom/xueqiu/android/trade/model/TradeBroker;)V

    .line 2156
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->setCreateByMyself(Z)V

    .line 2157
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_3
    if-nez v1, :cond_4

    .line 3139
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeBroker;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;-><init>()V

    .line 3140
    const-string v1, "\u7b2c\u4e00\u8bc1\u5238"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->setTraderName(Ljava/lang/String;)V

    .line 3141
    const-string v1, "https://assets.imedao.com/images/broker-logo/DYZQ.png"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->setTraderLogo(Ljava/lang/String;)V

    .line 3142
    new-instance v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;-><init>()V

    .line 3143
    const-string v3, "DYZQ"

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTid(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTradeBroker(Lcom/xueqiu/android/trade/model/TradeBroker;)V

    .line 3145
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->setCreateByMyself(Z)V

    .line 3146
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/j;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 67
    const v0, 0x7f030147

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->a:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->a:Landroid/view/View;

    const v1, 0x7f0e0506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->b:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->a:Landroid/view/View;

    const v1, 0x7f0e0505

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    .line 70
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->c(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/xueqiu/android/trade/c/k;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/j;->i()Landroid/support/v4/a/q;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/xueqiu/android/trade/c/k;-><init>(Lcom/xueqiu/android/trade/c/j;Landroid/support/v4/a/q;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->e:Lcom/xueqiu/android/trade/c/k;

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->e:Lcom/xueqiu/android/trade/c/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->b:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->b:Lcom/viewpagerindicator/CirclePageIndicator;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setRadius(F)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->b:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCentered(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(IFI)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/j;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/j;->g()Landroid/support/v4/a/k;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/message/client/c;->m:Lrx/i/c;

    invoke-static {v1, v2}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/j$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/j$1;-><init>(Lcom/xueqiu/android/trade/c/j;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 62
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public final b_(I)V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/l;

    .line 4181
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->f:Lcom/xueqiu/android/trade/c/l;

    if-eqz v1, :cond_0

    .line 4182
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->f:Lcom/xueqiu/android/trade/c/l;

    .line 4313
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/xueqiu/android/trade/c/l;->a:Z

    .line 4314
    iget-object v2, v1, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    if-eqz v2, :cond_0

    .line 4315
    iget-object v2, v1, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    invoke-interface {v2}, Lrx/j;->b()V

    .line 4316
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/xueqiu/android/trade/c/l;->c:Lrx/j;

    .line 170
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->C_()V

    .line 172
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->f:Lcom/xueqiu/android/trade/c/l;

    .line 173
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->E()Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isCreateByMyself()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->E()Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setCurrentTradeAccountTid(Ljava/lang/String;)V

    .line 178
    :cond_1
    return-void
.end method

.method public final c_(Z)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 207
    :cond_0
    return-void

    .line 196
    :cond_1
    if-eqz p1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/l;

    .line 198
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/c/l;->c_(Z)V

    .line 199
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->p()V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/l;

    .line 203
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/c/l;->c_(Z)V

    .line 204
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->o()V

    goto :goto_1
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 85
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->c(Ljava/util/List;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/j;->d:Ljava/util/ArrayList;

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->e:Lcom/xueqiu/android/trade/c/k;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->e:Lcom/xueqiu/android/trade/c/k;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    .line 1219
    iput-object v1, v0, Lcom/xueqiu/android/trade/c/k;->b:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->e:Lcom/xueqiu/android/trade/c/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/k;->d()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/j;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/j;->b(Ljava/util/List;)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->b:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v1, p0}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 94
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/j;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 97
    :cond_1
    return-void
.end method
