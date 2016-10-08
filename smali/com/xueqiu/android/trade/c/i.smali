.class public final Lcom/xueqiu/android/trade/c/i;
.super Lcom/xueqiu/android/common/c;
.source "PerformanceItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field a:Lcom/xueqiu/android/trade/a/c;

.field private ak:Landroid/view/View;

.field private al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/MarketIncome;",
            ">;"
        }
    .end annotation
.end field

.field private am:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockIncome;",
            ">;"
        }
    .end annotation
.end field

.field private an:Landroid/view/View;

.field private ao:I

.field private ap:Z

.field private aq:Landroid/widget/AdapterView$OnItemClickListener;

.field private ar:Landroid/widget/AdapterView$OnItemLongClickListener;

.field b:Lcom/xueqiu/android/trade/model/MarketIncome;

.field c:Z

.field private d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

.field private e:I

.field private f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/trade/c/i;->e:I

    .line 73
    iput-object v1, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 75
    iput-object v1, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    .line 93
    iput-boolean v2, p0, Lcom/xueqiu/android/trade/c/i;->c:Z

    .line 95
    iput-boolean v2, p0, Lcom/xueqiu/android/trade/c/i;->ap:Z

    .line 650
    new-instance v0, Lcom/xueqiu/android/trade/c/i$10;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/i$10;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->aq:Landroid/widget/AdapterView$OnItemClickListener;

    .line 672
    new-instance v0, Lcom/xueqiu/android/trade/c/i$11;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/i$11;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->ar:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method private D()V
    .locals 6

    .prologue
    const v5, 0x7f0e06c0

    .line 311
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/MarketIncome;->getMarketValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v1

    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/MarketIncome;->getDayFloatAmount()F

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->a(F)Ljava/lang/String;

    move-result-object v2

    .line 318
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    const v3, 0x7f0e070f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    const v1, 0x7f0e0710

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 322
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->ak:Landroid/view/View;

    const v1, 0x7f0e0711

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    const v1, 0x7f0e067b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 326
    const v2, 0x7f0e067c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 327
    const v3, 0x7f0e067d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 328
    const v4, 0x7f0e0712

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 330
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getFloatAmount()F

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/i;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getFloatRate()F

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/i;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getTotalAmount()F

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/i;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getTotalRate()F

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/i;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->ak:Landroid/view/View;

    const v1, 0x7f0e0563

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 336
    const-string v1, "%s-\u603b\u5e02\u503c(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/MarketIncome;->getSign()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method

.method private E()V
    .locals 14

    .prologue
    const v13, 0x7f0e06c9

    const v12, 0x7f0e06c8

    const v11, 0x7f0e06c7

    const/16 v10, 0x8

    const/4 v4, 0x0

    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    const v1, 0x7f0e0719

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 345
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 350
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    const v1, 0x7f0e071b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 353
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v4

    .line 355
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/MarketIncome;

    .line 10384
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0301f9

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 10385
    const v2, 0x7f0e06c2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v6, "%s(%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getSign()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10386
    const v2, 0x7f0e06c5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getMarketValue()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10387
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getFloatAmount()F

    move-result v6

    invoke-static {v6}, Lcom/xueqiu/android/trade/c/i;->a(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10388
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getFloatRate()F

    move-result v6

    invoke-static {v6}, Lcom/xueqiu/android/trade/c/i;->b(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10389
    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getTotalAmount()F

    move-result v6

    invoke-static {v6}, Lcom/xueqiu/android/trade/c/i;->a(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10390
    const v2, 0x7f0e06ca

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getTotalRate()F

    move-result v6

    invoke-static {v6}, Lcom/xueqiu/android/trade/c/i;->b(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10392
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v2

    .line 10393
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getFloatAmount()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v2, v6, v7}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v6

    .line 10394
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->getTotalAmount()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual {v2, v8, v9}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v2

    .line 10396
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10397
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10398
    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10399
    const v1, 0x7f0e06ca

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_2

    .line 358
    const v1, 0x7f0e01fb

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 363
    :cond_3
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private F()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->am:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->am:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/a/c;->a(Ljava/util/ArrayList;)V

    .line 372
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->H()V

    goto :goto_0
.end method

.method private G()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0e04f6

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 504
    iget-boolean v1, p0, Lcom/xueqiu/android/trade/c/i;->ap:Z

    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0100d6

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 508
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->h()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private H()V
    .locals 9

    .prologue
    const v8, 0x7f0e018e

    const v7, 0x7f0e009d

    const v6, 0x7f010047

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v0, :cond_0

    .line 12240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 588
    if-eqz v0, :cond_0

    .line 13240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 589
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 590
    if-nez v1, :cond_2

    .line 592
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/trade/c/i$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/i$9;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    const-wide/16 v2, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    goto :goto_0

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    .line 602
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080110

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 603
    mul-int/2addr v0, v3

    .line 604
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i;->ak:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    .line 605
    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0800b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 607
    if-ge v1, v0, :cond_5

    .line 610
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 611
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/c;->notifyDataSetChanged()V

    .line 612
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/c;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 13621
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 13622
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 13623
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13624
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13625
    const v2, 0x7f010079

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/r;->b(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13626
    const v0, 0x7f07013e

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 13627
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f0e077b

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 13628
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto/16 :goto_1

    .line 13632
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13633
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13634
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f0e077b

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 13635
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/xueqiu/android/base/r;->a(ILandroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/i;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/xueqiu/android/trade/c/i;->ao:I

    return v0
.end method

.method public static a(Lcom/xueqiu/android/trade/model/PerformanceGroup;II)Lcom/xueqiu/android/trade/c/i;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/xueqiu/android/trade/c/i;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/c/i;-><init>()V

    .line 4102
    iput p1, v0, Lcom/xueqiu/android/trade/c/i;->ao:I

    .line 116
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v2, "arg_performance_group"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    const-string v2, "arg_group_count"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/i;->e(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method static synthetic a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/MarketIncome;
    .locals 2

    .prologue
    .line 61
    .line 15556
    new-instance v0, Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/MarketIncome;-><init>()V

    .line 15557
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setName(Ljava/lang/String;)V

    .line 15558
    const-string v1, "sign"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setSign(Ljava/lang/String;)V

    .line 15559
    const-string v1, "marketValue"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setMarketValue(F)V

    .line 15560
    const-string v1, "floatAmount"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setFloatAmount(F)V

    .line 15561
    const-string v1, "floatRate"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setFloatRate(F)V

    .line 15562
    const-string v1, "totalAmount"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setTotalAmount(F)V

    .line 15563
    const-string v1, "totalRate"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setTotalRate(F)V

    .line 15564
    const-string v1, "dayfloatAmount"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/MarketIncome;->setDayFloatAmount(F)V

    .line 61
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/trade/model/MarketIncome;)Lcom/xueqiu/android/trade/model/MarketIncome;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    return-object p1
.end method

.method private static a(F)Ljava/lang/String;
    .locals 6

    .prologue
    .line 376
    const-string v1, "%s%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const-string v0, "+"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    float-to-double v4, p0

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->b(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/i;Lcom/google/gson/JsonObject;)V
    .locals 6

    .prologue
    .line 16544
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 16545
    if-eqz v1, :cond_0

    .line 16549
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 16550
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 16551
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i;->am:Ljava/util/ArrayList;

    .line 16570
    new-instance v4, Lcom/xueqiu/android/stock/model/StockIncome;

    invoke-direct {v4}, Lcom/xueqiu/android/stock/model/StockIncome;-><init>()V

    .line 16572
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/StockIncome;->setName(Ljava/lang/String;)V

    .line 16573
    const-string v5, "symbol"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/StockIncome;->setSymbol(Ljava/lang/String;)V

    .line 16574
    const-string v5, "shares"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/StockIncome;->setShares(I)V

    .line 16575
    const-string v5, "marketValue"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/StockIncome;->setMarketValue(F)V

    .line 16576
    const-string v5, "floatAmount"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/StockIncome;->setFloatAmount(F)V

    .line 16577
    const-string v5, "floatRate"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/StockIncome;->setFloatRate(F)V

    .line 16578
    const-string v5, "current"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/model/StockIncome;->setCurrent(F)V

    .line 16579
    const-string v5, "avgPrice"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    invoke-virtual {v4, v2}, Lcom/xueqiu/android/stock/model/StockIncome;->setAvgPrice(F)V

    .line 16551
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16549
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/i;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/c/i;->ap:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->g:Landroid/view/View;

    return-object v0
.end method

.method private static b(F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    const-string v1, "%s%.2f%%"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const-string v0, "+"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i;->am:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 227
    const-string v0, "%s/performance/mobile/trans/add?symbol=%s&group_id=%s&isnew=1"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://xueqiu.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/trade/TakingPositionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    const-string v2, "extra_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/i;->a(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 749
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/i;)V
    .locals 4

    .prologue
    .line 61
    .line 14408
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/i$7;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/trade/c/i$7;-><init>(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/base/b/q;)V

    .line 15243
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->f(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 61
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 17241
    const-string v0, "MF\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 17243
    new-instance v1, Lcom/xueqiu/android/trade/c/i$6;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/trade/c/i$6;-><init>(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/base/b/q;)V

    .line 17259
    if-eqz v0, :cond_0

    .line 17260
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18255
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p1, v2, v1}, Lcom/xueqiu/android/base/b/ak;->d(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 17260
    :goto_0
    return-void

    .line 17262
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18267
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p1, v2, v1}, Lcom/xueqiu/android/base/b/ak;->e(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/i;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/xueqiu/android/trade/c/i;->e:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/trade/c/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/trade/c/i;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->D()V

    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/trade/c/i;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->E()V

    return-void
.end method

.method static synthetic i(Lcom/xueqiu/android/trade/c/i;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->F()V

    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/model/MarketIncome;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/trade/c/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->am:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/trade/c/i;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->H()V

    return-void
.end method

.method static synthetic m(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/a/c;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/model/PerformanceGroup;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    return-object v0
.end method


# virtual methods
.method public final C()V
    .locals 5

    .prologue
    const v2, 0x7f0e070d

    const/16 v4, 0x5e9

    const/4 v3, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0e0535

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/i;->ap:Z

    if-eqz v0, :cond_2

    .line 10515
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->G()V

    .line 10517
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10521
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 10522
    const v0, 0x7f0e070e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/trade/c/i$8;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/i$8;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10531
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v4, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 492
    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 493
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 11535
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->G()V

    .line 11537
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 11538
    if-eqz v1, :cond_3

    .line 11539
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 496
    :cond_3
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v4, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 497
    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 498
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method public final C_()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 137
    const v0, 0x7f03015d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->an:Landroid/view/View;

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(IILandroid/content/Intent;)V

    .line 213
    iget v0, p0, Lcom/xueqiu/android/trade/c/i;->ao:I

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 214
    const-string v0, "extra_stock"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/i;->b(Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 126
    if-eqz v0, :cond_0

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 127
    const-string v1, "arg_performance_group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/PerformanceGroup;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->d:Lcom/xueqiu/android/trade/model/PerformanceGroup;

    .line 6564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 128
    const-string v1, "arg_group_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/c/i;->e:I

    .line 6727
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_total"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6728
    if-nez v1, :cond_1

    .line 6729
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/MarketIncome;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->b:Lcom/xueqiu/android/trade/model/MarketIncome;

    .line 6732
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_market_income"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6733
    if-nez v1, :cond_2

    .line 6734
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/i$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/i$2;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    .line 6735
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/i$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 6734
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->al:Ljava/util/ArrayList;

    .line 6738
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_stock_income"

    invoke-direct {p0, v1}, Lcom/xueqiu/android/trade/c/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6739
    if-nez v1, :cond_3

    .line 6740
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/i$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/i$3;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    .line 6741
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/i$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 6740
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->am:Ljava/util/ArrayList;

    .line 6742
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    if-nez v0, :cond_3

    .line 6743
    new-instance v0, Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/trade/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    .line 132
    :cond_3
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x7f0e05f1

    .line 143
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    const v0, 0x7f0e0175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 147
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301fb

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/i;->ak:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->ak:Landroid/view/View;

    .line 9298
    const v1, 0x7f0e0711

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9299
    const v1, 0x7f0e067b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 9300
    const v2, 0x7f0e067c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 9301
    const v3, 0x7f0e067d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 9302
    const v4, 0x7f0e0712

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 9304
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6d6e\u52a8\u76c8\u4e8f\u989d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9305
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6d6e\u52a8\u76c8\u4e8f\u7387"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9306
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u7d2f\u8ba1\u76c8\u4e8f\u989d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9307
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u7d2f\u8ba1\u76c8\u4e8f\u7387"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->ak:Landroid/view/View;

    const v1, 0x7f0e070e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/i$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/i$1;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 160
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->ak:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 162
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/trade/a/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->a:Lcom/xueqiu/android/trade/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    const v1, 0x7f0e053a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/i;->g:Landroid/view/View;

    .line 168
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301fc

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301e6

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    .line 172
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 173
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x44a00000    # 1280.0f

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    const v2, 0x7f0e06b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030226

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 177
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/i;->h()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 181
    new-instance v1, Lcom/xueqiu/android/trade/c/i$4;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/trade/c/i$4;-><init>(Lcom/xueqiu/android/trade/c/i;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 196
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->aq:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i;->ar:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/trade/c/i$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/i$5;-><init>(Lcom/xueqiu/android/trade/c/i;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 10279
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->D()V

    .line 10280
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->E()V

    .line 10281
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->F()V

    .line 10286
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->k()V

    .line 207
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 647
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->e()V

    .line 648
    return-void
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 722
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 723
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/i;->H()V

    .line 724
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 291
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i;->f:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->m()V

    goto :goto_0
.end method
