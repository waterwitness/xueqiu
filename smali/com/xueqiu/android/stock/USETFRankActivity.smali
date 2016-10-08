.class public Lcom/xueqiu/android/stock/USETFRankActivity;
.super Lcom/xueqiu/android/common/b;
.source "USETFRankActivity.java"


# instance fields
.field private j:[Landroid/support/v4/a/i;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/USETFCategory;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

.field private r:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->j:[Landroid/support/v4/a/i;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->k:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->p:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 35
    iput-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->r:Lcom/viewpagerindicator/TabPageIndicator;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/USETFRankActivity;)[Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->j:[Landroid/support/v4/a/i;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/USETFRankActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/USETFRankActivity;)Lcom/viewpagerindicator/TabPageIndicator;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->r:Lcom/viewpagerindicator/TabPageIndicator;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 98
    new-array v0, v3, [Landroid/support/v4/a/i;

    iput-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->j:[Landroid/support/v4/a/i;

    move v1, v2

    .line 99
    :goto_0
    if-ge v1, v3, :cond_0

    .line 100
    iget-object v4, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->j:[Landroid/support/v4/a/i;

    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/USETFCategory;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/aa;->a(Lcom/xueqiu/android/stock/model/USETFCategory;)Lcom/xueqiu/android/stock/c/aa;

    move-result-object v0

    aput-object v0, v4, v1

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lcom/xueqiu/android/stock/r;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/USETFRankActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/stock/r;-><init>(Lcom/xueqiu/android/stock/USETFRankActivity;Landroid/support/v4/a/q;)V

    .line 105
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    iget-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->j:[Landroid/support/v4/a/i;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setOffscreenPageLimit(I)V

    .line 109
    const v0, 0x7f0e0186

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->r:Lcom/viewpagerindicator/TabPageIndicator;

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->r:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 112
    const v0, 0x7f0e0187

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->r:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-virtual {v1}, Lcom/viewpagerindicator/TabPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lcom/xueqiu/android/stock/USETFRankActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/stock/USETFRankActivity$1;-><init>(Lcom/xueqiu/android/stock/USETFRankActivity;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->r:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v1, Lcom/xueqiu/android/stock/USETFRankActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/USETFRankActivity$2;-><init>(Lcom/xueqiu/android/stock/USETFRankActivity;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->j:[Landroid/support/v4/a/i;

    aget-object v0, v0, v2

    check-cast v0, Lcom/xueqiu/android/stock/c/aa;

    .line 2049
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/stock/c/aa;->a:Z

    .line 144
    return-void
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->setTheme(I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->setContentView(I)V

    .line 62
    const-string v0, "ETF"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1067
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1068
    const-string v1, "us_etf_category"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1071
    const-string v0, "US"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1072
    const-string v1, "ETF"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v3, v2

    .line 1073
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 1074
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1075
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1076
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1078
    iget-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1081
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 1082
    new-array v9, v8, [Ljava/lang/String;

    move v1, v2

    .line 1083
    :goto_2
    if-ge v1, v8, :cond_0

    .line 1084
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->p:Ljava/util/ArrayList;

    new-instance v7, Lcom/xueqiu/android/stock/model/USETFCategory;

    invoke-direct {v7, v0, v9}, Lcom/xueqiu/android/stock/model/USETFCategory;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1092
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1093
    :goto_3
    return-void

    .line 1073
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1090
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/xueqiu/android/stock/USETFRankActivity;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/stock/USETFRankActivity;->q:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

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
