.class public final Lcom/xueqiu/android/trade/c/q;
.super Lcom/xueqiu/android/base/k;
.source "TradeHistoryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/xueqiu/android/common/widget/o;
.implements Lcom/xueqiu/android/trade/a/i;
.implements Lcom/xueqiu/android/trade/a/n;
.implements Lcom/xueqiu/android/trade/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/k",
        "<",
        "Lcom/xueqiu/android/trade/b/k;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/xueqiu/android/common/widget/o;",
        "Lcom/xueqiu/android/trade/a/i;",
        "Lcom/xueqiu/android/trade/a/n;",
        "Lcom/xueqiu/android/trade/b/l;"
    }
.end annotation


# instance fields
.field public ak:Lcom/xueqiu/android/trade/view/e;

.field public al:Lcom/xueqiu/android/trade/a/m;

.field public am:Lcom/xueqiu/android/trade/a/h;

.field public an:Lcom/xueqiu/android/trade/a/e;

.field public ao:Lcom/xueqiu/android/trade/model/TradeAccount;

.field private final ap:I

.field private aq:Landroid/widget/FrameLayout;

.field private ar:Landroid/os/Handler;

.field public b:Lcom/xueqiu/android/trade/c/r;

.field public c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

.field public d:Lcom/xueqiu/android/trade/view/d;

.field public e:Lcom/xueqiu/android/trade/view/d;

.field public f:Lcom/xueqiu/android/trade/view/d;

.field public g:Lcom/xueqiu/android/trade/view/e;

.field public h:Lcom/xueqiu/android/trade/view/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/xueqiu/android/base/k;-><init>()V

    .line 55
    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/trade/c/q;->ap:I

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ar:Landroid/os/Handler;

    .line 407
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/trade/a/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->an:Lcom/xueqiu/android/trade/a/e;

    return-object v0
.end method

.method public static a(Lcom/xueqiu/android/trade/model/TradeAccount;)Lcom/xueqiu/android/trade/c/q;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/xueqiu/android/trade/c/q;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/q;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v2, "extra_trade_account"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/q;->e(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/common/widget/IndicatorTabLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/q;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method private c(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/Transaction;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 221
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/trade/c/q$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xueqiu/android/trade/c/q$1;-><init>(Lcom/xueqiu/android/trade/c/q;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 239
    return-void
.end method


# virtual methods
.method public final L_()V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    .line 8751
    iget-object v1, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    if-eqz v1, :cond_0

    .line 8752
    iget-object v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    .line 9653
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    if-eqz v1, :cond_0

    .line 9654
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->m()V

    .line 299
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 84
    const-string v1, "extra_trade_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 85
    const v0, 0x7f030158

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/broker/order"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v1

    .line 403
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 405
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 374
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    if-ne p1, v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    .line 387
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    if-ne p1, v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/base/k;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f0e0537

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    .line 92
    const v0, 0x7f0e0539

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->aq:Landroid/widget/FrameLayout;

    .line 94
    new-instance v0, Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/trade/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    .line 95
    new-instance v0, Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/trade/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    .line 96
    new-instance v0, Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/trade/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/e;->getListView()Lcom/xueqiu/android/trade/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/e;->getListView()Lcom/xueqiu/android/trade/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/e;->getListView()Lcom/xueqiu/android/trade/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    const-string v2, "\u6682\u65e0\u80a1\u7968\u6301\u4ed3"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setEmptyText(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    const-string v2, "\u6682\u65e0\u59d4\u6258\u8bb0\u5f55"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setEmptyText(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    const-string v2, "\u6682\u65e0\u6210\u4ea4\u8bb0\u5f55"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setEmptyText(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setTitle(I)V

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setTitle(I)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/e;->setTitle(I)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->aq:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->aq:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->aq:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/trade/view/d;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    new-instance v2, Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v3

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/xueqiu/android/trade/a/m;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/xueqiu/android/trade/c/q;->al:Lcom/xueqiu/android/trade/a/m;

    .line 117
    new-instance v0, Lcom/xueqiu/android/trade/a/h;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/trade/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    .line 118
    new-instance v0, Lcom/xueqiu/android/trade/a/e;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xueqiu/android/trade/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/q;->an:Lcom/xueqiu/android/trade/a/e;

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/q;->al:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/q;->an:Lcom/xueqiu/android/trade/a/e;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/trade/view/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->an:Lcom/xueqiu/android/trade/a/e;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 3036
    iput-object v2, v0, Lcom/xueqiu/android/trade/a/e;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->al:Lcom/xueqiu/android/trade/a/m;

    .line 3296
    iput-object p0, v0, Lcom/xueqiu/android/trade/a/m;->g:Lcom/xueqiu/android/trade/a/n;

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    .line 4182
    iput-object p0, v0, Lcom/xueqiu/android/trade/a/h;->b:Lcom/xueqiu/android/trade/a/i;

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/q;->a(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->setOnTabChangeListener(Lcom/xueqiu/android/common/widget/o;)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/k;->c()V

    .line 133
    return-void

    :cond_0
    move v0, v1

    .line 116
    goto :goto_0
.end method

.method public final a(Lcom/xueqiu/android/trade/model/TrustDeed;)V
    .locals 4

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/trade/c/q$3;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/trade/c/q$3;-><init>(Lcom/xueqiu/android/trade/c/q;Lcom/xueqiu/android/trade/model/TrustDeed;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 331
    const-string v1, "\u64a4\u9500\u59d4\u6258\u5355"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    const-string v2, "\u80a1\u7968\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TrustDeed;->getSname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TrustDeed;->getScode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v2, "\u4ef7\u683c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TrustDeed;->getPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 341
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v2, "\u6570\u91cf\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TrustDeed;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 347
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->setCancelable(Z)V

    .line 348
    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/q;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 349
    const v1, 0x7f0700b1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/q;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 350
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 351
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->a(Z)V

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->al:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/a/m;->a(Ljava/util/ArrayList;)V

    .line 174
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    .line 5060
    iget-object v0, v0, Lcom/xueqiu/android/trade/view/e;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 179
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    .line 182
    :cond_1
    return-void

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    .line 5064
    iget-object v0, v0, Lcom/xueqiu/android/trade/view/e;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TrustDeed;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->a(Z)V

    .line 187
    if-eqz p2, :cond_3

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    .line 6058
    if-eqz p1, :cond_0

    .line 6061
    iget-object v1, v0, Lcom/xueqiu/android/trade/a/h;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6062
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/h;->notifyDataSetChanged()V

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    .line 7065
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/trade/view/d;->a:Z

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/k;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    const-string v1, "\u65e0\u66f4\u591a\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    .line 7061
    iput-boolean v1, v0, Lcom/xueqiu/android/trade/view/d;->b:Z

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/a/h;->refresh(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final synthetic b()Lcom/xueqiu/android/base/c;
    .locals 2

    .prologue
    .line 51
    .line 12137
    new-instance v0, Lcom/xueqiu/android/trade/d/g;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/trade/d/g;-><init>(Lcom/xueqiu/android/trade/b/l;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 51
    return-object v0
.end method

.method public final b(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/Transaction;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/e;->a(Z)V

    .line 202
    if-eqz p2, :cond_3

    .line 203
    invoke-direct {p0, p1, v2}, Lcom/xueqiu/android/trade/c/q;->c(Ljava/util/List;Z)V

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    .line 8065
    iput-boolean v2, v0, Lcom/xueqiu/android/trade/view/d;->a:Z

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/k;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    const-string v1, "\u65e0\u66f4\u591a\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    .line 218
    :cond_2
    :goto_1
    return-void

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    .line 8061
    iput-boolean v1, v0, Lcom/xueqiu/android/trade/view/d;->b:Z

    .line 206
    invoke-direct {p0, p1, v1}, Lcom/xueqiu/android/trade/c/q;->c(Ljava/util/List;Z)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    const-string v1, "\u4eca\u65e5\u65e0\u66f4\u591a\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    const-string v1, "6\u4e2a\u6708\u5185\u65e0\u66f4\u591a\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b_(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x5ed

    .line 355
    const v0, 0x7f0704ba

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/q;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/k;->c()V

    .line 357
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/q;->a(Landroid/view/View;)V

    .line 358
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x15

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 10053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 359
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 371
    :goto_0
    return-void

    .line 360
    :cond_0
    const v0, 0x7f0704b6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/q;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/k;->a(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/q;->a(Landroid/view/View;)V

    .line 363
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x14

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 11053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 364
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/k;->b(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/q;->a(Landroid/view/View;)V

    .line 368
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x17

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 12053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 369
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->b:Lcom/xueqiu/android/trade/c/r;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/c/r;->k()V

    .line 261
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/k;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ar:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/trade/c/q$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/q$2;-><init>(Lcom/xueqiu/android/trade/c/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->b:Lcom/xueqiu/android/trade/c/r;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/xueqiu/android/trade/model/TradePosition;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Lcom/xueqiu/android/trade/model/TradePosition;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/q;->b:Lcom/xueqiu/android/trade/c/r;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/trade/c/r;->b(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5ed

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 397
    invoke-super {p0}, Lcom/xueqiu/android/base/k;->q()V

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->ar:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 399
    return-void
.end method

.method public final refresh()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getCurrentItem()I

    move-result v0

    .line 161
    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/k;->c()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/k;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
