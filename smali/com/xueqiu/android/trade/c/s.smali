.class public final Lcom/xueqiu/android/trade/c/s;
.super Lcom/xueqiu/android/common/c;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field a:Lcom/xueqiu/android/trade/model/TradeAccount;

.field private ak:Landroid/view/View;

.field private al:Landroid/widget/ImageView;

.field private am:Lcom/xueqiu/android/trade/c/t;

.field private volatile an:I

.field private ao:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

.field private ap:Landroid/widget/LinearLayout;

.field private aq:Z

.field private ar:Z

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Landroid/widget/AdapterView$OnItemClickListener;

.field private av:Landroid/widget/AdapterView$OnItemLongClickListener;

.field b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

.field c:Lcom/xueqiu/android/trade/a/m;

.field d:Lcom/xueqiu/android/trade/c/v;

.field e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

.field f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 105
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    .line 107
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    .line 121
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    .line 123
    iput-boolean v1, p0, Lcom/xueqiu/android/trade/c/s;->f:Z

    .line 125
    iput v1, p0, Lcom/xueqiu/android/trade/c/s;->an:I

    .line 1189
    new-instance v0, Lcom/xueqiu/android/trade/c/s$26;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/s$26;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->au:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1226
    new-instance v0, Lcom/xueqiu/android/trade/c/s$27;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/s$27;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->av:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 145
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->E()V

    .line 310
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->F()V

    .line 311
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->f:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->D()V

    .line 314
    :cond_0
    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->k()V

    .line 320
    :cond_0
    return-void
.end method

.method private E()V
    .locals 10

    .prologue
    .line 333
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->hasTip()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getTipInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getTipInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->as:Ljava/lang/String;

    .line 343
    :goto_1
    const v0, 0x7f0e050a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 344
    const v1, 0x7f0e0711

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v1

    .line 345
    const v2, 0x7f0e067b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 346
    const v3, 0x7f0e067c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 347
    const v4, 0x7f0e067d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 348
    const v5, 0x7f0e0712

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 350
    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 351
    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getNetLiquidation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const v0, 0x7f0e0713

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    .line 354
    const v5, 0x7f0e0714

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 355
    const v6, 0x7f0e0715

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 356
    const v7, 0x7f0e0716

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 357
    const v8, 0x7f0e0717

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 359
    const v0, 0x7f0e06c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getNetLiquidation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const v0, 0x7f0e06c0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getMarketValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const v0, 0x7f0e06c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getAvailableFund()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const v0, 0x7f0e06c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getBuyPower()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const v0, 0x7f0e06c0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getInitMargin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const v0, 0x7f0e06c0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getMaintMargin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const v0, 0x7f0e06c0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getSma()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    const v0, 0x7f0e06c0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getExcessLiquidity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const v0, 0x7f0e050c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 370
    const-string v2, "%s%.2f%%"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 371
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getUnrealizedPnlRate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_2

    const-string v1, "+"

    :goto_2
    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 372
    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getUnrealizedPnlRate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v1

    .line 370
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 373
    const-string v3, "%s%s"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 374
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getUnrealizedPnl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_3

    const-string v1, "+"

    :goto_3
    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 375
    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getUnrealizedPnl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 373
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 376
    const-string v3, "%s(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 340
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->as:Ljava/lang/String;

    goto/16 :goto_1

    .line 371
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 374
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 377
    :cond_4
    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 378
    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getNetLiquidation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const v0, 0x7f0e06c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getMarketValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const v0, 0x7f0e06c0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getCashBalance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const v0, 0x7f0e06c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getMarginBalance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    const v0, 0x7f0e06c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getMoneyLockedByPendingOrders()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const v0, 0x7f0e0713

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    .line 386
    const v1, 0x7f0e0714

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 387
    const v2, 0x7f0e0715

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 388
    const v3, 0x7f0e0716

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 389
    const v4, 0x7f0e0717

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 390
    const v0, 0x7f0e06c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getNonMarginBuyingPower()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v0, 0x7f0e06c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getMarginBuyingPower()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const v0, 0x7f0e06c0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getTotalIncomeBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const-string v1, "%s%.2f%%"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 394
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getTotalIncomeRate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5

    const-string v0, "+"

    :goto_4
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 395
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getTotalIncomeRate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    .line 393
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 396
    const v0, 0x7f0e06c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v0, 0x7f0e050c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    const-string v2, "%s%.2f%%"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 400
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getDayIncomeRate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_6

    const-string v1, "+"

    :goto_5
    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 401
    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getDayIncomeRate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v1

    .line 399
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 402
    const-string v3, "%s%s"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 403
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getDayIncomeBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_7

    const-string v1, "+"

    :goto_6
    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 404
    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getDayIncomeBalance()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 402
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 405
    const-string v3, "%s(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 394
    :cond_5
    const-string v0, ""

    goto/16 :goto_4

    .line 400
    :cond_6
    const-string v1, ""

    goto :goto_5

    .line 403
    :cond_7
    const-string v1, ""

    goto :goto_6

    .line 407
    :cond_8
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getAssetBalance()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const v0, 0x7f0e06c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getMarketValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const v0, 0x7f0e06c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getEnableBalance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    const v0, 0x7f0e06c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getFetchBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private F()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 483
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const v0, 0x7f0e050c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 489
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    const-string v2, "%s%.2f%%"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    iget-wide v4, v1, Lcom/xueqiu/android/trade/c/v;->dayIncomeRate:D

    cmpl-double v1, v4, v12

    if-lez v1, :cond_2

    const-string v1, "+"

    :goto_1
    aput-object v1, v3, v8

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    iget-wide v4, v1, Lcom/xueqiu/android/trade/c/v;->dayIncomeRate:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    .line 492
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v9

    .line 490
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 493
    const-string v3, "%s%s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    iget-wide v6, v1, Lcom/xueqiu/android/trade/c/v;->dayIncomeBalance:D

    cmpl-double v1, v6, v12

    if-lez v1, :cond_3

    const-string v1, "+"

    :goto_2
    aput-object v1, v4, v8

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    iget-wide v6, v1, Lcom/xueqiu/android/trade/c/v;->dayIncomeBalance:D

    .line 495
    invoke-static {v6, v7}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    .line 493
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 496
    const-string v3, "%s(%s)"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const v0, 0x7f0e067c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    .line 499
    const v1, 0x7f0e06c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    iget-wide v2, v1, Lcom/xueqiu/android/trade/c/v;->totalIncomeBalance:D

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 493
    :cond_3
    const-string v1, ""

    goto :goto_2
.end method

.method private G()V
    .locals 11

    .prologue
    const v10, 0x7f0e018e

    const v9, 0x7f0e009d

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 791
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    if-eqz v0, :cond_0

    .line 11240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 794
    if-eqz v0, :cond_0

    .line 12240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 795
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 796
    if-nez v1, :cond_2

    .line 798
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/trade/c/s$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$9;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    const-wide/16 v2, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    .line 12292
    iget v3, v0, Lcom/xueqiu/android/trade/a/m;->f:I

    .line 808
    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080111

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 809
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/m;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    .line 810
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080110

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 811
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v6

    float-to-int v6, v6

    .line 812
    add-int/lit8 v7, v3, -0x1

    div-int/lit8 v7, v7, 0x2

    .line 814
    sub-int/2addr v0, v3

    mul-int/2addr v0, v5

    mul-int v5, v7, v6

    add-int/2addr v0, v5

    sub-int/2addr v3, v7

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 815
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    .line 816
    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0800b3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 818
    if-ge v1, v0, :cond_5

    .line 821
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 822
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/m;->notifyDataSetChanged()V

    .line 823
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/m;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 12832
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 12833
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12834
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12835
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12836
    const v2, 0x7f010079

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12837
    const v0, 0x7f07013e

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 12838
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f0e077b

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 12839
    const v1, 0x7f010047

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/m;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto/16 :goto_1

    .line 12843
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 12844
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static a(Lcom/xueqiu/android/trade/model/TradeAccount;Z)Lcom/xueqiu/android/trade/c/s;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/xueqiu/android/trade/c/s;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/s;-><init>()V

    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v2, "arg_broker"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    const-string v2, "arg_visible"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/s;->e(Landroid/os/Bundle;)V

    .line 140
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/AccountFundInfo;)Lcom/xueqiu/android/trade/model/AccountFundInfo;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    return-object v0
.end method

.method static synthetic a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    .line 28095
    const-string v0, "%s/broker/ib/bind?step=%d&aid=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://xueqiu.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s;->as:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 27675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27676
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/trade/c/s$35;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/s$35;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    .line 27677
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/s$35;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 27676
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 27678
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27679
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27683
    :goto_0
    if-eqz v0, :cond_0

    .line 27684
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27686
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cache_key_positions"

    invoke-direct {p0, v3}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-object v1

    .line 27681
    :cond_1
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    .line 657
    new-instance v0, Lcom/xueqiu/android/trade/c/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/trade/c/v;-><init>(Lcom/xueqiu/android/trade/c/s;B)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    .line 658
    const-string v0, "day_income_balance"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "day_income_balance"

    .line 659
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    const-string v1, "day_income_balance"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/trade/c/v;->dayIncomeBalance:D

    .line 662
    :cond_0
    const-string v0, "day_income_rate"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "day_income_rate"

    .line 663
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    const-string v1, "day_income_rate"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/trade/c/v;->dayIncomeRate:D

    .line 666
    :cond_1
    const-string v0, "total_income_balance"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "total_income_balance"

    .line 667
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    const-string v1, "total_income_balance"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/trade/c/v;->totalIncomeBalance:D

    .line 670
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->F()V

    .line 671
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_income_data"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private a(Lcom/xueqiu/android/base/a/a;I)V
    .locals 4

    .prologue
    .line 1143
    iget v0, p0, Lcom/xueqiu/android/trade/c/s;->an:I

    if-nez v0, :cond_1

    .line 1144
    iput p2, p0, Lcom/xueqiu/android/trade/c/s;->an:I

    .line 1149
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 13092
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 1149
    const-class v2, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1150
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    .line 14092
    iget-object v2, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 1150
    const-class v3, Lcom/xueqiu/android/trade/model/TradeBroker;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeBroker;

    .line 1151
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTradeBroker(Lcom/xueqiu/android/trade/model/TradeBroker;)V

    .line 1152
    iget-boolean v1, p0, Lcom/xueqiu/android/trade/c/s;->f:Z

    if-eqz v1, :cond_2

    .line 15069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 15357
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->g:Z

    .line 1153
    if-nez v1, :cond_2

    .line 15763
    iget-boolean v1, p0, Landroid/support/v4/a/i;->x:Z

    .line 1154
    if-eqz v1, :cond_2

    .line 1155
    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 1161
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/trade/c/s;->an:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1157
    :cond_2
    new-instance v1, Lcom/xueqiu/android/trade/c/t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/trade/c/t;-><init>(Lcom/xueqiu/android/trade/c/s;B)V

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    .line 1158
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    iput-object p1, v1, Lcom/xueqiu/android/trade/c/t;->b:Lcom/xueqiu/android/base/a/a;

    .line 1159
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    iput-object v0, v1, Lcom/xueqiu/android/trade/c/t;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    goto :goto_0
.end method

.method private a(Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 3

    .prologue
    .line 1117
    .line 13064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 1117
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v2, Lcom/xueqiu/android/trade/c/s$25;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/s$25;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-static {v1, p2, v0, v2}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    .line 1129
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/base/a/a;)V

    .line 1130
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 20550
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 20551
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 20552
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 20553
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 20554
    :cond_0
    :goto_0
    return-void

    .line 20558
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v4, Lcom/xueqiu/android/trade/c/s$33;

    invoke-direct {v4, p0, v3}, Lcom/xueqiu/android/trade/c/s$33;-><init>(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonArray;)V

    invoke-static {v0, v4}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 20579
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 20580
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 20581
    if-eqz v4, :cond_2

    .line 20582
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 20585
    :cond_2
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 20586
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 20587
    if-eqz v3, :cond_3

    .line 20588
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 20591
    :cond_3
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/a/a;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/base/a/a;I)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 85
    .line 29261
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    .line 30103
    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 29262
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070539

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 85
    return-void
.end method

.method private a(Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
    .locals 11

    .prologue
    .line 893
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f0e06a8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 894
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301df

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 895
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    new-instance v2, Lcom/xueqiu/android/trade/c/s$11;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/trade/c/s$11;-><init>(Lcom/xueqiu/android/trade/c/s;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 909
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    move-object v5, v1

    .line 914
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v1, 0x7f0e0718

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 917
    const v0, 0x7f0e06b0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/s$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$13;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    const v0, 0x7f0e06aa

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 925
    const v0, 0x7f0e06ab

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 926
    const v1, 0x7f0e06ac

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 928
    const v2, 0x7f0e06ad

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 929
    const v2, 0x7f0e06ae

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 930
    const v3, 0x7f0e06af

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 932
    const v4, 0x7f0e06a9

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 933
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatus()Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    move-result-object v8

    .line 934
    const-string v9, "PINGAN"

    iget-object v10, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v10}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "PAMID"

    iget-object v10, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 935
    invoke-virtual {v10}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 936
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 939
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 943
    :goto_1
    sget-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PASSED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    if-ne v8, v0, :cond_5

    .line 944
    new-instance v0, Lcom/xueqiu/android/trade/c/s$14;

    invoke-direct {v0, p0, p1, v8}, Lcom/xueqiu/android/trade/c/s$14;-><init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/SemiTradeAccount;Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 975
    :goto_2
    sget-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PENDING:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    if-ne v8, v0, :cond_1

    .line 976
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 979
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 981
    sget-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PASSED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    if-eq v8, v0, :cond_2

    .line 982
    const v0, 0x7f0e06b6

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 983
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 984
    const v0, 0x7f0e06b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 985
    const v2, 0x7f0e06b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 987
    const v2, 0x7f020231

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    const-string v1, "\u5e73\u5b89\u5f00\u6237\u5e38\u89c1\u95ee\u9898"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    const-string v1, "/broker/trade/qa/open"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 990
    new-instance v2, Lcom/xueqiu/android/trade/c/s$16;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/trade/c/s$16;-><init>(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    :cond_2
    :goto_3
    return-void

    .line 911
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f0e06a8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    .line 941
    :cond_4
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 961
    :cond_5
    new-instance v0, Lcom/xueqiu/android/trade/c/s$15;

    invoke-direct {v0, p0, v8, p1}, Lcom/xueqiu/android/trade/c/s$15;-><init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 997
    :cond_6
    const-string v9, "IB"

    iget-object v10, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v10}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 998
    sget-object v9, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PENDING:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    if-ne v8, v9, :cond_8

    .line 999
    const v2, 0x7f070483

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v9}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/xueqiu/android/trade/c/s;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    const v2, 0x7f07048a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1001
    const v0, 0x7f070481

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1002
    new-instance v0, Lcom/xueqiu/android/trade/c/s$17;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/s$17;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    :cond_7
    :goto_4
    const v0, 0x7f0e06b6

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1043
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    const v0, 0x7f0e06b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1045
    const v2, 0x7f0e06b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1047
    const v2, 0x7f020231

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1048
    const v1, 0x7f0701a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1049
    const-string v1, "/broker/ib/qa"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1050
    new-instance v2, Lcom/xueqiu/android/trade/c/s$21;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/trade/c/s$21;-><init>(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1009
    :cond_8
    sget-object v9, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->REJECTED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    if-ne v8, v9, :cond_9

    .line 1010
    const v8, 0x7f070484

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1011
    const v4, 0x7f07047c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1012
    const v0, 0x7f07047e

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1013
    const v0, 0x7f07047d

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1014
    const v0, 0x7f07047f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1015
    new-instance v0, Lcom/xueqiu/android/trade/c/s$18;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/s$18;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    new-instance v0, Lcom/xueqiu/android/trade/c/s$19;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/s$19;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 1028
    :cond_9
    sget-object v2, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PASSED:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    if-ne v8, v2, :cond_7

    .line 1029
    const v2, 0x7f070482

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1031
    const v2, 0x7f070489

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    const v0, 0x7f070480

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1033
    new-instance v0, Lcom/xueqiu/android/trade/c/s$20;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/s$20;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1056
    :cond_a
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1060
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    :goto_5
    new-instance v0, Lcom/xueqiu/android/trade/c/s$22;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/trade/c/s$22;-><init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    sget-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->PENDING:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    if-ne v8, v0, :cond_b

    .line 1071
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1073
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    const v0, 0x7f0e06b6

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1076
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    const v0, 0x7f0e06b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1078
    const v2, 0x7f0e06b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1079
    const v2, 0x7f020231

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1080
    const v1, 0x7f07015e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1081
    new-instance v1, Lcom/xueqiu/android/trade/c/s$24;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$24;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1062
    :cond_c
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatusMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 29091
    const-string v0, "%s/broker/open?tid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://xueqiu.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/s;)V
    .locals 8

    .prologue
    const v7, 0x7f0e05bd

    const v6, 0x7f0e05bc

    const v5, 0x7f0e05bb

    const v4, 0x7f0e05ba

    const v3, 0x7f0e05b9

    .line 85
    .line 18267
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0301e4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 18268
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18269
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18270
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18271
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18272
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18273
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18281
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/trade/c/s$31;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/s$31;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v2, "\u8d44\u4ea7\u4e0e\u76c8\u4e8f\u8ba1\u7b97"

    .line 18285
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 18286
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/view/View;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 18287
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->a()Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 18288
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 18289
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 85
    return-void

    .line 18274
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18275
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18276
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18277
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18278
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18279
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    .line 22266
    const-string v0, "result_code"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22267
    new-instance v0, Lcom/xueqiu/android/base/a/a;

    invoke-direct {v0}, Lcom/xueqiu/android/base/a/a;-><init>()V

    .line 22268
    const-string v1, "result_code"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 23068
    iput-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 22269
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 23076
    iput-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorDescription:Ljava/lang/String;

    .line 22270
    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "result_data"

    .line 22271
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22272
    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 23096
    iput-object v1, v0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 24064
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 22274
    invoke-static {v1}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22275
    sget v1, Lcom/xueqiu/android/trade/c/u;->a:I

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/base/a/a;I)V

    .line 22285
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/a/m;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 22286
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->a(Ljava/lang/Throwable;)V

    .line 85
    :cond_2
    return-void

    .line 22277
    :cond_3
    const-string v1, "70001"

    .line 25064
    iget-object v2, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 22277
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22278
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 22279
    :cond_4
    const-string v1, "70004"

    .line 26064
    iget-object v2, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 22279
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22280
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 22281
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/s;->at:Ljava/lang/String;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1357
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 26691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26692
    if-nez p1, :cond_0

    move-object v0, v1

    .line 26693
    :goto_0
    return-object v0

    .line 26695
    :cond_0
    const-string v0, "stocks"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26697
    const-string v0, "stocks"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 26698
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/s$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/s$2;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    .line 26699
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/s$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 26698
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 26700
    if-eqz v0, :cond_1

    .line 26701
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26702
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26704
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cache_key_positions"

    invoke-direct {p0, v3}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26706
    :cond_2
    const-string v0, "repos"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 26707
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 26708
    new-instance v0, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26711
    :cond_3
    const-string v0, "repos"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 26712
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/s$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/s$3;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    .line 26713
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/s$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 26712
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 26714
    if-eqz v0, :cond_4

    .line 26715
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26716
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26718
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cache_key_repo_positions"

    invoke-direct {p0, v3}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26720
    :cond_5
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/google/gson/JsonObject;)V

    move-object v0, v1

    .line 85
    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/s;)V
    .locals 4

    .prologue
    .line 85
    .line 18595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->ar:Z

    .line 18596
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/s$34;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/trade/c/s$34;-><init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->i(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 85
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/s;)V
    .locals 4

    .prologue
    .line 85
    .line 19504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->aq:Z

    .line 19505
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/s$32;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/trade/c/s$32;-><init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/b/q;)V

    .line 19682
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/am;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 85
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/s;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->aq:Z

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/trade/c/s;)V
    .locals 2

    .prologue
    .line 85
    .line 21415
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->aq:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->ar:Z

    if-eqz v0, :cond_3

    .line 21416
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->as:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21417
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ao:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 21419
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->at:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21420
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ao:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 21422
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->as:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->at:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21423
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ap:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    .line 21425
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ap:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/xueqiu/android/trade/c/s;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->E()V

    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/AccountFundInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/trade/c/s;)Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->ar:Z

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/trade/c/s;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->G()V

    return-void
.end method

.method static synthetic l(Lcom/xueqiu/android/trade/c/s;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->at:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/trade/c/s;)Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/trade/c/s;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->C()V

    return-void
.end method

.method static synthetic p(Lcom/xueqiu/android/trade/c/s;)V
    .locals 1

    .prologue
    .line 85
    .line 29172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    .line 85
    return-void
.end method


# virtual methods
.method public final C_()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/t;->b:Lcom/xueqiu/android/base/a/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->am:Lcom/xueqiu/android/trade/c/t;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/t;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->D()V

    .line 298
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 162
    const v0, 0x7f030159

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 3564
    iget-object v1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 151
    if-eqz v1, :cond_0

    .line 152
    const-string v0, "arg_broker"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 153
    const-string v0, "arg_visible"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/s;->f:Z

    .line 4312
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_income_data"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4313
    if-nez v1, :cond_1

    .line 4314
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/c/v;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/v;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    .line 4317
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_fund_info"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4318
    if-nez v1, :cond_2

    .line 4319
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/AccountFundInfo;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 4322
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_positions"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 4324
    if-nez v2, :cond_3

    .line 4326
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/s$28;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/s$28;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    .line 4327
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/s$28;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 4326
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4328
    if-eqz v0, :cond_3

    .line 4329
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4330
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4334
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4337
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cache_key_repo_positions"

    invoke-direct {p0, v2}, Lcom/xueqiu/android/trade/c/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 4338
    if-nez v2, :cond_5

    .line 4339
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 4340
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4343
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/c/s$29;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/c/s$29;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    .line 4344
    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/s$29;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 4343
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4345
    if-eqz v0, :cond_5

    .line 4346
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4347
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4350
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    if-nez v0, :cond_6

    .line 4351
    new-instance v0, Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/trade/a/m;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    .line 4353
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/a/m;->a(Ljava/util/ArrayList;)V

    .line 157
    return-void

    .line 4332
    :cond_7
    new-instance v2, Lcom/xueqiu/android/trade/model/SectionItem;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/xueqiu/android/trade/model/SectionItem;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const v12, 0x7f07049f

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v11, 0x0

    const v10, 0x7f0e05f1

    .line 168
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 171
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5de

    invoke-direct {v0, v1, v11}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 172
    const-string v1, "tid"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 180
    :goto_0
    const v0, 0x7f0e0175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0, v11}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->setShadowVisible(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/model/SnowxTraderConfig;->isIncomeOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v1, 0x7f0e0509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/s$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$1;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v1, 0x7f0e039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v2, 0x7f0e071f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/s$12;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/s$12;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v2, 0x7f0e050b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v3, 0x7f0e0721

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iput-object v2, p0, Lcom/xueqiu/android/trade/c/s;->ao:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 204
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v3, 0x7f0e0720

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/xueqiu/android/trade/c/s;->ap:Landroid/widget/LinearLayout;

    .line 205
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->ao:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setMaxTextSize(F)V

    .line 206
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->ao:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setMinTextSize(F)V

    .line 208
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRealAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    .line 209
    :goto_1
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    const v3, 0x7f07023d

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/trade/c/s;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v0, 0x7f07055c

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/s;->al:Landroid/widget/ImageView;

    .line 10292
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 10293
    new-instance v1, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 10294
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->getSmallTraderLogo()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/s;->al:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 10295
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10296
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->al:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 222
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    .line 10431
    const v1, 0x7f0e0711

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 10432
    const v2, 0x7f0e067b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 10433
    const v3, 0x7f0e067c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 10434
    const v4, 0x7f0e067d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 10435
    const v5, 0x7f0e0712

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 10437
    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 10438
    const v5, 0x7f0e0713

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 10439
    const v0, 0x7f0e0714

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10440
    const v0, 0x7f0e0715

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 10441
    const v0, 0x7f0e0716

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 10442
    const v0, 0x7f0e0717

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 10444
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f070150

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10445
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(I)V

    .line 10446
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f070040

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10447
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10449
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 10450
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10451
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070222

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10452
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070392

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10453
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070152

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :goto_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 225
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->ak:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    if-nez v1, :cond_1

    .line 228
    new-instance v1, Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/trade/a/m;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    const v1, 0x7f0e053a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/s;->g:Landroid/view/View;

    .line 235
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301e6

    invoke-virtual {v1, v2, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    .line 236
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 237
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x44a00000    # 1280.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    const v2, 0x7f0e06b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/s$23;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/s$23;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030226

    invoke-virtual {v1, v2, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 246
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->au:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->av:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 10725
    const v0, 0x7f0e06b1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/s$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$4;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10736
    const v0, 0x7f0e06b2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/s$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$5;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10745
    const v0, 0x7f0e06b3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/s$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$6;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10754
    const v0, 0x7f0e06b4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    .line 10755
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isUSType()Z

    move-result v1

    if-nez v1, :cond_c

    .line 10756
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 10757
    const v0, 0x7f0e06b4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/s$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$7;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10769
    :goto_5
    const v0, 0x7f0e06b5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10770
    const-string v1, "PAMID"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10771
    const v1, 0x7f0704b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10772
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10773
    const v1, 0x7f0e06b2

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/s;->c(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10775
    :cond_2
    const-string v1, "DYZQ"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10776
    const v1, 0x7f070493

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10777
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10779
    :cond_3
    new-instance v1, Lcom/xueqiu/android/trade/c/s$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$8;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/trade/c/s$30;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/s$30;-><init>(Lcom/xueqiu/android/trade/c/s;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 261
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->C()V

    .line 264
    :cond_4
    return-void

    .line 175
    :cond_5
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5dd

    invoke-direct {v0, v1, v11}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 176
    const-string v1, "tid"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 208
    :cond_6
    const-string v2, "(%s)"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRealAccountId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 212
    :cond_7
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 213
    const v3, 0x7f070492

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/trade/c/s;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const v0, 0x7f07046a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 216
    :cond_8
    const v3, 0x7f07048c

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/trade/c/s;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v0, 0x7f07046a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 10298
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->al:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_3

    .line 10455
    :cond_a
    iget-object v5, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 10456
    const v5, 0x7f0e0713

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 10457
    const v0, 0x7f0e0714

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10458
    const v0, 0x7f0e0715

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 10459
    const v0, 0x7f0e0716

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 10460
    const v0, 0x7f0e0717

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 10462
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(I)V

    .line 10463
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f07016a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10464
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f07016b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10465
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10467
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 10468
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07016e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10469
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07016c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10470
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10471
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 10474
    :cond_b
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(I)V

    .line 10475
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0704d2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10476
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f07048f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10477
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070491

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 10767
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 1165
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 1166
    return-void
.end method

.method public final o()V
    .locals 5

    .prologue
    .line 1304
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 1305
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1305
    if-eqz v0, :cond_2

    .line 16855
    const-string v0, "PINGAN"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PAMID"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 16856
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IB"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 16857
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DYZQ"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 16858
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16862
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    instance-of v0, v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    if-eqz v0, :cond_2

    .line 16866
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    check-cast v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    .line 16867
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getStatus()Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16868
    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V

    .line 16872
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/s;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getMobileId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/trade/c/s$10;

    invoke-direct {v4, p0, p0, v0}, Lcom/xueqiu/android/trade/c/s$10;-><init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V

    .line 17661
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/base/b/am;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1308
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/s;->G()V

    .line 1309
    return-void
.end method

.method public final u()Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
