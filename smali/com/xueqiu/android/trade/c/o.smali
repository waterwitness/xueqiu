.class public final Lcom/xueqiu/android/trade/c/o;
.super Lcom/xueqiu/android/common/c;
.source "TradeFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/d;


# instance fields
.field private a:Lcom/viewpagerindicator/CirclePageIndicator;

.field private ak:J

.field private al:Lcom/xueqiu/android/common/widget/m;

.field private am:Lcom/xueqiu/android/trade/c/p;

.field private an:Landroid/view/View;

.field private ao:Lcom/xueqiu/android/common/widget/n;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:[Lcom/xueqiu/android/trade/c/s;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 72
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    .line 74
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    .line 76
    iput v1, p0, Lcom/xueqiu/android/trade/c/o;->d:I

    .line 78
    iput v1, p0, Lcom/xueqiu/android/trade/c/o;->e:I

    .line 80
    iput v1, p0, Lcom/xueqiu/android/trade/c/o;->f:I

    .line 82
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    .line 84
    iput-boolean v1, p0, Lcom/xueqiu/android/trade/c/o;->h:Z

    .line 88
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->al:Lcom/xueqiu/android/common/widget/m;

    .line 90
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->am:Lcom/xueqiu/android/trade/c/p;

    .line 672
    new-instance v0, Lcom/xueqiu/android/trade/c/o$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/o$4;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->ao:Lcom/xueqiu/android/common/widget/n;

    .line 99
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 3585
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3586
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/trade/c/o$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/o$10;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 277
    return-void

    .line 3590
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 3591
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->d()Ljava/util/List;

    move-result-object v0

    .line 3592
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 3593
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/xueqiu/android/trade/c/s;

    if-eqz v3, :cond_2

    .line 3594
    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    goto :goto_1

    .line 3597
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->e()I

    goto :goto_0
.end method

.method private D()V
    .locals 6

    .prologue
    const v5, 0x7f070570

    const v4, 0x7f020372

    const v3, 0x7f020371

    .line 280
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iput v3, p0, Lcom/xueqiu/android/trade/c/o;->d:I

    .line 285
    iput v4, p0, Lcom/xueqiu/android/trade/c/o;->e:I

    .line 290
    :goto_0
    const v0, 0x7f02036f

    iput v0, p0, Lcom/xueqiu/android/trade/c/o;->f:I

    .line 291
    return-void

    .line 287
    :cond_0
    iput v3, p0, Lcom/xueqiu/android/trade/c/o;->e:I

    .line 288
    iput v4, p0, Lcom/xueqiu/android/trade/c/o;->d:I

    goto :goto_0
.end method

.method private E()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v5, 0x7f0e0069

    .line 381
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/c/o;->h:Z

    .line 382
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/c/o;->h:Z

    if-eqz v0, :cond_6

    .line 8505
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8509
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8510
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 8513
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v4, "new_account_fragment_tag"

    invoke-virtual {v0, v4}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8514
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "new_account_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    .line 8518
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 8519
    const-string v4, "new_account_fragment_tag"

    invoke-virtual {v1, v5, v0, v4}, Landroid/support/v4/a/ac;->b(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 8520
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->e()I

    .line 8522
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    const v1, 0x7f0e0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 8523
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 385
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8619
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    .line 9048
    const-string v1, "pref_key_pattern_sha1"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->remove(Ljava/lang/String;Landroid/content/Context;)V

    .line 8620
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701e1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/trade/c/o;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 393
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v0, v2

    .line 381
    goto :goto_0

    .line 8516
    :cond_4
    const-string v0, "broker/tradeHome"

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Lcom/xueqiu/android/base/h5/c;->a(Ljava/lang/String;Lcom/xueqiu/android/base/h5/b;Z)Lcom/xueqiu/android/base/h5/c;

    move-result-object v0

    goto :goto_1

    .line 8525
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 9530
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9531
    if-eqz v0, :cond_8

    .line 9532
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v1

    const-string v2, "new_account_fragment_tag"

    invoke-virtual {v1, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v1

    .line 9533
    if-eqz v1, :cond_7

    .line 9536
    sget-object v2, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v3, Lcom/xueqiu/android/trade/c/o$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/xueqiu/android/trade/c/o$13;-><init>(Lcom/xueqiu/android/trade/c/o;Landroid/view/View;Landroid/support/v4/a/i;)V

    invoke-virtual {v2, v3}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 9546
    :cond_7
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->H()V

    .line 390
    :cond_8
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->I()V

    .line 391
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->J()V

    goto :goto_3
.end method

.method private F()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 432
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 433
    const v0, 0x7f0e0017

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 434
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 435
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 440
    const-string v3, "pattern_fragment_tag"

    invoke-virtual {v0, v3}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/b;

    .line 441
    if-nez v0, :cond_0

    .line 442
    const v0, 0x7f07048e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/o;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 10044
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/b;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/patternlock/b;-><init>()V

    .line 10045
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 10046
    const-string v5, "arg_desc"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10047
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/trade/patternlock/b;->e(Landroid/os/Bundle;)V

    .line 443
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    const-string v4, "pattern_fragment_tag"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 444
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->e()I

    .line 447
    :cond_0
    new-instance v2, Lcom/xueqiu/android/trade/c/o$11;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/o$11;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    .line 10140
    iput-object v2, v0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    .line 471
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method private G()V
    .locals 3

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->H()V

    .line 496
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    const v2, 0x7f0e0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 497
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 499
    const-string v2, "pattern_fragment_tag"

    invoke-virtual {v0, v2}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/patternlock/b;

    .line 500
    invoke-virtual {v1, v0}, Landroid/support/v4/a/ac;->b(Landroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 501
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->e()I

    .line 502
    return-void
.end method

.method private H()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 601
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0e0534

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0e04f6

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 11357
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->g:Z

    .line 607
    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/xueqiu/android/trade/c/o;->h:Z

    if-eqz v1, :cond_3

    .line 609
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0100d6

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 612
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->h()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 614
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private I()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 643
    .line 14719
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 644
    instance-of v1, v0, Lcom/xueqiu/android/trade/c/n;

    if-nez v1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 15240
    :cond_0
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 647
    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 648
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    new-instance v1, Lcom/xueqiu/android/trade/c/o$3;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/trade/c/o$3;-><init>(Lcom/xueqiu/android/trade/c/o;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private J()V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 702
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 15719
    iget-object v1, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 16240
    iget-object v1, v1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 703
    const v2, 0x7f0e0536

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 704
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 706
    new-instance v0, Lcom/xueqiu/android/trade/c/o$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/c/o$5;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :goto_1
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_0

    .line 726
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/o;J)J
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/xueqiu/android/trade/c/o;->ak:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/o;Lcom/xueqiu/android/common/widget/m;)Lcom/xueqiu/android/common/widget/m;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o;->al:Lcom/xueqiu/android/common/widget/m;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/o;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/o;)V
    .locals 6

    .prologue
    .line 62
    .line 16356
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->D()V

    .line 16358
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 16362
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/o;->b(I)V

    .line 16368
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 16369
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/c/s;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 16848
    iget-object v4, v3, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    if-eqz v4, :cond_0

    .line 16849
    iget-object v4, v3, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    .line 17287
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v5

    iput-object v5, v4, Lcom/xueqiu/android/trade/a/m;->e:Lcom/xueqiu/android/base/util/ar;

    .line 16850
    iget-object v3, v3, Lcom/xueqiu/android/trade/c/s;->c:Lcom/xueqiu/android/trade/a/m;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/a/m;->notifyDataSetChanged()V

    .line 16368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/o;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/o;->b(I)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/xueqiu/android/trade/c/o;->b(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private b(I)V
    .locals 7

    .prologue
    const v6, 0x7f0e00b5

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    aget-object v0, v0, p1

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/support/v4/a/i;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/xueqiu/android/trade/c/s;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Lcom/xueqiu/android/trade/c/s;

    .line 4099
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4100
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    if-nez v1, :cond_2

    move-wide v0, v2

    .line 304
    :goto_1
    cmpl-double v4, v0, v2

    if-lez v4, :cond_7

    .line 305
    iget v0, p0, Lcom/xueqiu/android/trade/c/o;->d:I

    .line 4240
    :goto_2
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 311
    if-eqz v1, :cond_0

    .line 5240
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 311
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 313
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->h()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 314
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->h()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 315
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 316
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 317
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 318
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4100
    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getUnrealizedPnl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_1

    .line 4101
    :cond_3
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4102
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    if-nez v1, :cond_4

    move-wide v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/s;->e:Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getDayIncomeBalance()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/j;->b(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_1

    .line 4104
    :cond_5
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    if-nez v1, :cond_6

    move-wide v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/s;->d:Lcom/xueqiu/android/trade/c/v;

    iget-wide v0, v0, Lcom/xueqiu/android/trade/c/v;->dayIncomeBalance:D

    goto/16 :goto_1

    .line 306
    :cond_7
    cmpg-double v0, v0, v2

    if-gez v0, :cond_8

    .line 307
    iget v0, p0, Lcom/xueqiu/android/trade/c/o;->e:I

    goto/16 :goto_2

    .line 309
    :cond_8
    iget v0, p0, Lcom/xueqiu/android/trade/c/o;->f:I

    goto/16 :goto_2

    .line 8240
    :cond_9
    iget-object v1, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 320
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/o;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/c/o;->e(I)V

    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 747
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 766
    :cond_0
    :goto_0
    return v4

    .line 750
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 752
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 753
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 754
    :goto_1
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 755
    :cond_4
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    move v1, v3

    .line 756
    :goto_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v0, v3

    .line 762
    :goto_3
    if-nez v0, :cond_2

    goto :goto_0

    :cond_6
    move v2, v4

    .line 753
    goto :goto_1

    :cond_7
    move v1, v4

    .line 755
    goto :goto_2

    :cond_8
    move v4, v3

    .line 766
    goto :goto_0

    :cond_9
    move v0, v4

    goto :goto_3
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/o;)J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/xueqiu/android/trade/c/o;->ak:J

    return-wide v0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->F()V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/o;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 338
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 331
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    aget-object v3, v2, v0

    .line 333
    if-eqz v3, :cond_2

    .line 334
    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    .line 8301
    :goto_1
    iput-boolean v2, v3, Lcom/xueqiu/android/trade/c/s;->f:Z

    .line 331
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 334
    goto :goto_1
.end method

.method static synthetic f(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 62
    .line 17376
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->C()V

    .line 17377
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->E()V

    .line 62
    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->J()V

    return-void
.end method

.method static synthetic i(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->u()V

    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->G()V

    return-void
.end method

.method static synthetic k(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->logout()V

    return-void
.end method

.method static synthetic l(Lcom/xueqiu/android/trade/c/o;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    return-object v0
.end method

.method private logout()V
    .locals 3

    .prologue
    .line 475
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702d9

    .line 476
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c/o$12;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/o$12;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07025a

    .line 490
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 491
    return-void
.end method

.method static synthetic m(Lcom/xueqiu/android/trade/c/o;)Lcom/xueqiu/android/common/widget/m;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->al:Lcom/xueqiu/android/common/widget/m;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/trade/c/o;)Lcom/xueqiu/android/common/widget/n;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->ao:Lcom/xueqiu/android/common/widget/n;

    return-object v0
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->am:Lcom/xueqiu/android/trade/c/p;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/xueqiu/android/trade/c/p;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/trade/c/p;-><init>(Lcom/xueqiu/android/trade/c/o;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->am:Lcom/xueqiu/android/trade/c/p;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/xueqiu/android/trade/c/s;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->am:Lcom/xueqiu/android/trade/c/p;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    .line 3421
    iput-object v1, v0, Lcom/xueqiu/android/trade/c/p;->b:Ljava/util/List;

    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->am:Lcom/xueqiu/android/trade/c/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setRadius(F)V

    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setCentered(Z)V

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcom/xueqiu/android/trade/c/o$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/o$9;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/o;->b(I)V

    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c/o;->e(I)V

    .line 260
    :cond_2
    return-void

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final B_()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 8326
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->g:[Lcom/xueqiu/android/trade/c/s;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8323
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    .line 8324
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/xueqiu/android/trade/c/s;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 8325
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8328
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/s;->b:Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->m()V

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 163
    const v0, 0x7f0703e1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/o;->d(I)V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/o;->e_(Z)V

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    if-nez v0, :cond_0

    .line 167
    const v0, 0x7f030154

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2357
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->g:Z

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->F()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/o$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/o$1;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/o;->a(Lrx/j;)V

    .line 112
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.tradeViewRefreshBg"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/o$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/o$6;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/o;->a(Lrx/j;)V

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    const-string v1, "com.xueqiu.android.intent.action.USER_OFFLINE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "com.xueqiu.android.intent.action.USER_ONLINE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/o$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/o$7;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/o;->a(Lrx/j;)V

    .line 142
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->g()Landroid/support/v4/a/k;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/message/client/c;->m:Lrx/i/c;

    invoke-static {v0, v1}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/c/o$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/o$8;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/o;->a(Lrx/j;)V

    .line 157
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->D()V

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    const v1, 0x7f0e0528

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->a:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    .line 182
    const/4 v0, 0x0

    .line 183
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    .line 186
    invoke-static {v2, v1}, Lcom/xueqiu/android/trade/c/o;->b(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    .line 190
    if-eqz v0, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->C()V

    .line 195
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->E()V

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2784
    iget-boolean v0, p0, Landroid/support/v4/a/i;->J:Z

    .line 198
    if-nez v0, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->I()V

    .line 200
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->J()V

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->H()V

    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 205
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 207
    :cond_3
    return-void

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->u()V

    goto :goto_0
.end method

.method public final c_(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 625
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->c_(Z)V

    .line 626
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->c:Ljava/util/ArrayList;

    .line 627
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 11719
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 11665
    instance-of v1, v0, Lcom/xueqiu/android/trade/c/n;

    if-eqz v1, :cond_1

    .line 12240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 11668
    const v1, 0x7f0e0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11669
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13719
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 12732
    instance-of v1, v0, Lcom/xueqiu/android/trade/c/n;

    if-eqz v1, :cond_2

    .line 14240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 12735
    const v1, 0x7f0e0536

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 12736
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 636
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->H()V

    .line 638
    :cond_3
    return-void

    .line 631
    :cond_4
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->I()V

    .line 632
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->J()V

    goto :goto_0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 553
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->an:Landroid/view/View;

    const v1, 0x7f0e0017

    .line 554
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/xueqiu/android/trade/c/o;->G()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/xueqiu/android/trade/c/o$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/o$2;-><init>(Lcom/xueqiu/android/trade/c/o;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 582
    :cond_1
    return-void
.end method
