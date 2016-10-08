.class public Lcom/xueqiu/android/trade/OrderFullActivity;
.super Lcom/xueqiu/android/base/j;
.source "OrderFullActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xueqiu/android/common/widget/o;
.implements Lcom/xueqiu/android/common/widget/ptr/h;
.implements Lcom/xueqiu/android/stockchart/a/b;
.implements Lcom/xueqiu/android/stockchart/c/b;
.implements Lcom/xueqiu/android/trade/b/f;
.implements Lcom/xueqiu/android/trade/c/f;
.implements Lcom/xueqiu/android/trade/c/r;
.implements Lcom/xueqiu/android/trade/view/b;
.implements Lcom/xueqiu/android/trade/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/j",
        "<",
        "Lcom/xueqiu/android/trade/b/e;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xueqiu/android/common/widget/o;",
        "Lcom/xueqiu/android/common/widget/ptr/h;",
        "Lcom/xueqiu/android/stockchart/a/b;",
        "Lcom/xueqiu/android/stockchart/c/b;",
        "Lcom/xueqiu/android/trade/b/f;",
        "Lcom/xueqiu/android/trade/c/f;",
        "Lcom/xueqiu/android/trade/c/r;",
        "Lcom/xueqiu/android/trade/view/b;",
        "Lcom/xueqiu/android/trade/view/c;"
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/view/View;

.field private C:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;

.field private D:Lcom/xueqiu/android/stock/model/StockQuote;

.field private E:Ljava/lang/String;

.field private F:Lcom/xueqiu/android/stockchart/e/h;

.field private G:Lcom/xueqiu/android/stockchart/d/c;

.field private H:Lcom/xueqiu/android/stockchart/d/b;

.field private I:Lcom/xueqiu/android/trade/view/a;

.field private J:Lcom/xueqiu/android/message/client/MessageService;

.field private K:Landroid/os/Handler;

.field private L:Landroid/content/ServiceConnection;

.field public p:Lcom/xueqiu/android/trade/c/e;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/xueqiu/android/trade/model/TradeAccount;

.field private s:Lcom/xueqiu/android/trade/c/q;

.field private t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Lcom/xueqiu/android/trade/view/EdgeScrollView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/base/j;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 93
    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    .line 100
    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->J:Lcom/xueqiu/android/message/client/MessageService;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->K:Landroid/os/Handler;

    .line 731
    new-instance v0, Lcom/xueqiu/android/trade/OrderFullActivity$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/OrderFullActivity$4;-><init>(Lcom/xueqiu/android/trade/OrderFullActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->L:Landroid/content/ServiceConnection;

    .line 756
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    const-string v1, "extra_trans_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "extra_price"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "extra_amount"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "extra_position_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const-string v1, "extra_trade_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const-string v1, "extra_trans_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/OrderFullActivity;)Lcom/xueqiu/android/common/widget/IndicatorTabLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/OrderFullActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->J:Lcom/xueqiu/android/message/client/MessageService;

    return-object p1
.end method

.method private a(Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "799999"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "\u767b\u8bb0\u6307\u5b9a 799999"

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    .line 401
    new-instance v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 402
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockQuote;->setSymbol(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->b(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 404
    invoke-direct {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->q()V

    .line 414
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    .line 12621
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->u()V

    .line 13606
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/e;->d:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13607
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13608
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/e;->g:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13609
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/e;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13610
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/e;->e:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12623
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->C()V

    .line 12624
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xueqiu/android/trade/c/e;->an:Ljava/lang/String;

    .line 408
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    .line 409
    invoke-direct {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->q()V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->h()Landroid/app/Dialog;

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/e;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 7

    .prologue
    const v6, 0x7f0e0704

    const v5, 0x7f0e0703

    const v4, 0x7f0e0701

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(I)V

    .line 202
    :cond_1
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->z:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 434
    new-instance v0, Lcom/xueqiu/android/stockchart/e/h;

    invoke-direct {v0}, Lcom/xueqiu/android/stockchart/e/h;-><init>()V

    .line 435
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/e/h;->b(Ljava/lang/String;)V

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    .line 14194
    iput-object v0, v1, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/c;->a(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/d/c;->v()V

    .line 443
    return-void

    .line 438
    :cond_0
    const-string v1, "11"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/e/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->refresh()V

    .line 747
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/q;->refresh()V

    .line 748
    return-void
.end method

.method public final a(Lcom/xueqiu/android/stock/model/StockQuote;)V
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/d/c;->a(FJ)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/d/b;->a(FJ)V

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 687
    return-void
.end method

.method public final a(Lcom/xueqiu/android/stock/model/StockQuote;Lcom/xueqiu/android/stockchart/e/h;)V
    .locals 4

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->i()V

    .line 654
    iput-object p2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/c;->a(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    .line 25194
    iput-object p2, v0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 658
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/d/c;->v()V

    .line 659
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/d/c;->x()V

    .line 660
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 662
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Ljava/lang/String;)V

    .line 667
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 668
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/c/e;->b(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 669
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/e;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/e;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 670
    return-void

    .line 664
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    .line 714
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 715
    :goto_0
    iput-object p1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 716
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 717
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->o()V

    .line 721
    :cond_2
    :goto_1
    return-void

    .line 714
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 718
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u5238\u5546"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/c/e;->a(Ljava/lang/String;)V

    .line 623
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5ed

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 22053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 624
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 625
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/stockchart/c/a",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcom/xueqiu/android/trade/OrderFullActivity$2;

    invoke-direct {v0, p0, p0, p4}, Lcom/xueqiu/android/trade/OrderFullActivity$2;-><init>(Lcom/xueqiu/android/trade/OrderFullActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/stockchart/c/a;)V

    .line 20180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 595
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 596
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 725
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ay;->d(Landroid/content/Context;)I

    move-result v0

    .line 726
    int-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 727
    sub-int v0, p1, v0

    .line 728
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->y:Lcom/xueqiu/android/trade/view/EdgeScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->scrollBy(II)V

    .line 729
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/Stock;-><init>()V

    .line 265
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/model/Stock;->setCode(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Lcom/xueqiu/android/stock/model/Stock;)V

    .line 267
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/stockchart/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/stockchart/c/a",
            "<",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Lcom/xueqiu/android/trade/OrderFullActivity$3;

    invoke-direct {v0, p0, p0, p4}, Lcom/xueqiu/android/trade/OrderFullActivity$3;-><init>(Lcom/xueqiu/android/trade/OrderFullActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/stockchart/c/a;)V

    .line 21180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 617
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 618
    return-void
.end method

.method public final b_(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x5ed

    .line 320
    const v0, 0x7f0704dc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "BUY"

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    const-string v1, "BUY"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->f(Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const v0, 0x7f0704df

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    const-string v0, "SELL"

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    const-string v1, "SELL"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->f(Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 8053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 329
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 330
    :cond_2
    const v0, 0x7f0704db

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    const-string v0, "BUY_COVER"

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    const-string v1, "BUY_COVER"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->f(Ljava/lang/String;)V

    .line 333
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x19

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 335
    :cond_3
    const v0, 0x7f0704e0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "SELL_SHORT"

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    const-string v1, "SELL_SHORT"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->f(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x18

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 10053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 339
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method public final synthetic d()Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 63
    .line 25242
    new-instance v0, Lcom/xueqiu/android/trade/d/d;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/trade/d/d;-><init>(Landroid/content/Context;Lcom/xueqiu/android/trade/b/f;)V

    .line 63
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 475
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move v1, v0

    .line 477
    :goto_0
    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->setRequestedOrientation(I)V

    .line 482
    :goto_1
    return v0

    .line 476
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 482
    :cond_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->setTheme(I)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->e()V

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u5238\u5546"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_1
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->w:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRealAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->C:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;->f()V

    .line 316
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    return-void
.end method

.method public final m()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 456
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    .line 14243
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/q;->a(Landroid/view/View;)V

    .line 14244
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/xueqiu/android/trade/b/k;->a(Ljava/lang/String;)V

    .line 14245
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(I)V

    .line 458
    const v0, 0x7f0e05c4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->y:Lcom/xueqiu/android/trade/view/EdgeScrollView;

    invoke-virtual {v1, v0, v0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    .line 14390
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 14391
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getLocationOnScreen([I)V

    .line 14392
    aget v0, v1, v3

    .line 462
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ay;->d(Landroid/content/Context;)I

    move-result v1

    .line 463
    int-to-float v1, v1

    const/high16 v2, 0x43060000    # 134.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 464
    sub-int/2addr v0, v1

    .line 465
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->y:Lcom/xueqiu/android/trade/view/EdgeScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->scrollBy(II)V

    .line 466
    return-void
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 470
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    .line 15250
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->c:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getCurrentItem()I

    move-result v0

    .line 15251
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, v1, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/view/d;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15252
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v1, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v1}, Lcom/xueqiu/android/trade/b/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/k;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 15253
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15254
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v1, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v1}, Lcom/xueqiu/android/trade/b/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/k;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final o()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->j()V

    .line 637
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setCurrentTradeAccountTid(Ljava/lang/String;)V

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 22265
    if-nez v2, :cond_3

    .line 22266
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 641
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 24504
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24507
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 644
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_2

    .line 645
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5ed

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 646
    const-string v1, "to_tid"

    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 647
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 649
    :cond_2
    return-void

    .line 22269
    :cond_3
    iput-object v2, v1, Lcom/xueqiu/android/trade/c/q;->ao:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 22270
    new-instance v0, Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/xueqiu/android/trade/a/m;-><init>(Landroid/content/Context;Z)V

    iput-object v0, v1, Lcom/xueqiu/android/trade/c/q;->al:Lcom/xueqiu/android/trade/a/m;

    .line 22271
    new-instance v0, Lcom/xueqiu/android/trade/a/h;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xueqiu/android/trade/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    .line 22272
    new-instance v0, Lcom/xueqiu/android/trade/a/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xueqiu/android/trade/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/xueqiu/android/trade/c/q;->an:Lcom/xueqiu/android/trade/a/e;

    .line 22274
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    .line 23182
    iput-object v1, v0, Lcom/xueqiu/android/trade/a/h;->b:Lcom/xueqiu/android/trade/a/i;

    .line 22276
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->an:Lcom/xueqiu/android/trade/a/e;

    .line 24036
    iput-object v2, v0, Lcom/xueqiu/android/trade/a/e;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 22278
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->g:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/trade/view/e;->a(Z)V

    .line 22279
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->h:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/trade/view/e;->a(Z)V

    .line 22280
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->ak:Lcom/xueqiu/android/trade/view/e;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/trade/view/e;->a(Z)V

    .line 22282
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    iget-object v3, v1, Lcom/xueqiu/android/trade/c/q;->al:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/view/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22283
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    iget-object v3, v1, Lcom/xueqiu/android/trade/c/q;->am:Lcom/xueqiu/android/trade/a/h;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/view/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22284
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    iget-object v3, v1, Lcom/xueqiu/android/trade/c/q;->an:Lcom/xueqiu/android/trade/a/e;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/view/d;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 22286
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->d:Lcom/xueqiu/android/trade/view/d;

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026"

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    .line 22287
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->e:Lcom/xueqiu/android/trade/view/d;

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026"

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    .line 22288
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->f:Lcom/xueqiu/android/trade/view/d;

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026"

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/view/d;->a(Ljava/lang/String;)V

    .line 22290
    iget-object v0, v1, Lcom/xueqiu/android/trade/c/q;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/k;

    invoke-interface {v0, v2}, Lcom/xueqiu/android/trade/b/k;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 22291
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/q;->refresh()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/base/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 392
    const-string v0, "extra_stock"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 393
    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Lcom/xueqiu/android/stock/model/Stock;)V

    .line 395
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->I:Lcom/xueqiu/android/trade/view/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->I:Lcom/xueqiu/android/trade/view/a;

    .line 22058
    iget-object v1, v0, Lcom/xueqiu/android/trade/view/a;->d:Lcom/xueqiu/android/common/widget/f;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xueqiu/android/trade/view/a;->d:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/f;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22059
    iget-object v0, v0, Lcom/xueqiu/android/trade/view/a;->d:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->dismiss()V

    .line 22060
    const/4 v0, 0x1

    .line 629
    :goto_0
    if-eqz v0, :cond_1

    .line 633
    :goto_1
    return-void

    .line 22062
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 632
    :cond_1
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v4, 0x7f040009

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->u:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->finish()V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 348
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10446
    const v0, 0x7f040018

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 10447
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->a()V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->w:Landroid/widget/TextView;

    if-ne v0, p1, :cond_6

    .line 353
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 354
    :cond_3
    const-string v0, "/broker/config"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 355
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->finish()V

    goto :goto_0

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_5

    .line 358
    new-instance v0, Lcom/xueqiu/android/trade/view/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/xueqiu/android/trade/view/a;-><init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Lcom/xueqiu/android/trade/view/b;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->I:Lcom/xueqiu/android/trade/view/a;

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->I:Lcom/xueqiu/android/trade/view/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/a;->a()V

    goto :goto_0

    .line 362
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->z:Landroid/widget/TextView;

    if-ne v0, p1, :cond_a

    .line 11370
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11371
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11372
    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v2, :cond_7

    .line 11373
    const-string v2, "market_type"

    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->getEtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11375
    :cond_7
    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->getCurrentItem()I

    move-result v2

    .line 11376
    if-eqz v2, :cond_8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 11377
    :cond_8
    const-string v2, "extra_view_color"

    const-string v3, "view_color_blue"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11381
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 11382
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Landroid/content/Intent;III)V

    .line 11384
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5ed

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 12053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 11385
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 11379
    :cond_9
    const-string v2, "extra_view_color"

    const-string v3, "view_color_yellow"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->A:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 365
    new-instance v0, Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/Stock;-><init>()V

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Lcom/xueqiu/android/stock/model/Stock;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 508
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->K:Landroid/os/Handler;

    new-instance v1, Lcom/xueqiu/android/trade/OrderFullActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/OrderFullActivity$1;-><init>(Lcom/xueqiu/android/trade/OrderFullActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0e05bf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->onCreate(Landroid/os/Bundle;)V

    .line 132
    if-eqz p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 135
    :cond_0
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->setContentView(I)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 138
    const v0, 0x7f0e06ff

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    .line 139
    const v0, 0x7f0e05c1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->z:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0e05c2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->A:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->B:Landroid/view/View;

    .line 142
    const v0, 0x7f0e0193

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->C:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->C:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/view/EdgeScrollView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->y:Lcom/xueqiu/android/trade/view/EdgeScrollView;

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->C:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshScrollView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->y:Lcom/xueqiu/android/trade/view/EdgeScrollView;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/trade/view/EdgeScrollView;->setOnReachEdgeListener(Lcom/xueqiu/android/trade/view/c;)V

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->setOnTabChangeListener(Lcom/xueqiu/android/common/widget/o;)V

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_stock"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    .line 156
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentExchangeBroker(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 163
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_trans_type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "BUY"

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    .line 2209
    :cond_1
    const v0, 0x7f0e0705

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->u:Landroid/view/View;

    .line 2210
    const v0, 0x7f0e0706

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->w:Landroid/widget/TextView;

    .line 2211
    const v0, 0x7f0e0707

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->x:Landroid/view/View;

    .line 2212
    const v0, 0x7f0e0708

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    .line 2213
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->j()V

    .line 2214
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2215
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2216
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2518
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v3, "small_chart_fragment_tag"

    invoke-virtual {v0, v3}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/d/c;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    .line 2519
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    if-nez v0, :cond_2

    .line 2520
    new-instance v0, Lcom/xueqiu/android/stockchart/d/c;

    invoke-direct {v0}, Lcom/xueqiu/android/stockchart/d/c;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    .line 2521
    new-instance v0, Lcom/xueqiu/android/stockchart/e/h;

    invoke-direct {v0}, Lcom/xueqiu/android/stockchart/e/h;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    .line 2522
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2523
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stockchart/e/h;->b(Ljava/lang/String;)V

    .line 2527
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    .line 3194
    iput-object v3, v0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 2528
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    iput-object p0, v0, Lcom/xueqiu/android/stockchart/d/c;->e:Lcom/xueqiu/android/stockchart/c/b;

    .line 2532
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    iput-object p0, v0, Lcom/xueqiu/android/stockchart/d/c;->am:Lcom/xueqiu/android/stockchart/a/b;

    .line 2533
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    new-instance v3, Lcom/xueqiu/android/trade/b;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/trade/b;-><init>(Lcom/xueqiu/android/trade/OrderFullActivity;B)V

    iput-object v3, v0, Lcom/xueqiu/android/stockchart/d/c;->al:Lcom/xueqiu/android/stockchart/b/a;

    .line 2534
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 2535
    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    const-string v4, "small_chart_fragment_tag"

    invoke-virtual {v0, v5, v3, v4}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 3275
    iget-boolean v3, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 2536
    if-eqz v3, :cond_2

    .line 2537
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/q;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)Lcom/xueqiu/android/trade/c/q;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    .line 4141
    iput-object p0, v0, Lcom/xueqiu/android/trade/c/q;->b:Lcom/xueqiu/android/trade/c/r;

    .line 4246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4247
    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    const-string v4, "BUY"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4248
    const-string v3, "arg_direction"

    const-string v4, "BUY"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4252
    :goto_3
    const-string v3, "arg_price"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_price"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4253
    const-string v3, "arg_amount"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_amount"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4254
    const-string v3, "arg_is_lite"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4255
    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4256
    const-string v3, "arg_symbol"

    iget-object v4, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    :cond_3
    const-string v3, "arg_tradeaccount"

    iget-object v4, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4259
    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->g(Landroid/os/Bundle;)Lcom/xueqiu/android/trade/c/e;

    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    .line 5155
    iput-object p0, v0, Lcom/xueqiu/android/trade/c/e;->al:Lcom/xueqiu/android/trade/c/f;

    .line 175
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 176
    const v3, 0x7f0e05c4

    iget-object v4, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 177
    const v3, 0x7f0e05c3

    iget-object v4, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->p:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 178
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->L:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v3, v2}, Lcom/xueqiu/android/trade/OrderFullActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 183
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x5ed

    invoke-direct {v0, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 184
    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v3, :cond_4

    .line 185
    const-string v3, "tid"

    iget-object v4, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v3

    .line 187
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 189
    iget-object v3, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->t:Lcom/xueqiu/android/common/widget/IndicatorTabLayout;

    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->E:Ljava/lang/String;

    const-string v4, "BUY"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/common/widget/IndicatorTabLayout;->a(I)V

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    goto/16 :goto_0

    .line 158
    :cond_5
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->q:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_trade_account"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->r:Lcom/xueqiu/android/trade/model/TradeAccount;

    goto/16 :goto_1

    .line 2525
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    const-string v3, "11"

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stockchart/e/h;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4250
    :cond_7
    const-string v3, "arg_direction"

    const-string v4, "SELL"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 189
    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onDestroy()V

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->L:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->L:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/e;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/e;->b()V

    .line 279
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/e;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/e;->c()V

    .line 293
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onRestart()V

    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/e;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/e;->d()V

    .line 299
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->s:Lcom/xueqiu/android/trade/c/q;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/q;->refresh()V

    .line 300
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onStart()V

    .line 7044
    iget-boolean v0, p0, Lcom/xueqiu/android/base/j;->k:Z

    .line 284
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->j:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/e;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->D:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/e;->a(Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->onStop()V

    .line 308
    return-void
.end method

.method public final p()Lcom/xueqiu/android/message/client/MessageService;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->J:Lcom/xueqiu/android/message/client/MessageService;

    return-object v0
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    .prologue
    const v2, 0x7f0e0192

    .line 488
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/j;->setRequestedOrientation(I)V

    .line 490
    if-nez p1, :cond_2

    .line 15543
    new-instance v0, Lcom/xueqiu/android/stockchart/d/b;

    invoke-direct {v0}, Lcom/xueqiu/android/stockchart/d/b;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    .line 15544
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    .line 16194
    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 15545
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->F:Lcom/xueqiu/android/stockchart/e/h;

    .line 17030
    iget-object v1, v1, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 15545
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/b;->a(Ljava/lang/String;)V

    .line 15546
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iput-object p0, v0, Lcom/xueqiu/android/stockchart/d/b;->e:Lcom/xueqiu/android/stockchart/c/b;

    .line 15547
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/c;->aq:Ljava/lang/String;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/b;->aq:Ljava/lang/String;

    .line 15548
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/c;->ar:Ljava/lang/String;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/b;->ar:Ljava/lang/String;

    .line 15549
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/c;->ax:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/b;->ax:Ljava/util/HashMap;

    .line 15550
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->G:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/c;->ay:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/b;->ay:Ljava/util/HashMap;

    .line 15551
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iput-object p0, v0, Lcom/xueqiu/android/stockchart/d/b;->am:Lcom/xueqiu/android/stockchart/a/b;

    .line 15553
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    const-string v1, "big"

    iput-object v1, v0, Lcom/xueqiu/android/stockchart/d/b;->as:Ljava/lang/String;

    .line 15554
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 15555
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 17275
    iget-boolean v1, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 15556
    if-eqz v1, :cond_0

    .line 15557
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 15560
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5ed

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 18053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 493
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 497
    :cond_1
    :goto_0
    return-void

    .line 494
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 18564
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    if-eqz v0, :cond_1

    .line 18565
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/b;->aq:Ljava/lang/String;

    .line 18566
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/trade/OrderFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18567
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderFullActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 18568
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 19275
    iget-boolean v1, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 18569
    if-eqz v1, :cond_3

    .line 18570
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 18572
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    goto :goto_0
.end method

.method public final x_()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity;->H:Lcom/xueqiu/android/stockchart/d/b;

    if-nez v0, :cond_0

    .line 502
    invoke-super {p0}, Lcom/xueqiu/android/base/j;->x_()V

    .line 504
    :cond_0
    return-void
.end method
