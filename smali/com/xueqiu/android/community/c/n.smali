.class public final Lcom/xueqiu/android/community/c/n;
.super Lcom/xueqiu/android/common/c;
.source "PortfolioMoreDetailFragment.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/xueqiu/android/stock/model/StockQuote;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/community/c/n;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 35
    iput-object v0, p0, Lcom/xueqiu/android/community/c/n;->a:Ljava/util/List;

    return-void
.end method

.method private u()V
    .locals 14

    .prologue
    const v13, 0x7f0e05f5

    const/16 v12, 0x8

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 95
    const v0, 0x7f0e0604

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/n;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    iget-object v1, p0, Lcom/xueqiu/android/community/c/n;->a:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/community/c/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 97
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/xueqiu/android/community/c/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    move v6, v7

    .line 99
    :goto_0
    if-ge v6, v8, :cond_5

    .line 100
    iget-object v1, p0, Lcom/xueqiu/android/community/c/n;->a:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 101
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const v3, 0x7f0301a1

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 102
    const v2, 0x7f0e05f2

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    const v3, 0x7f0e05f4

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 107
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/a/k;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 108
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/a/k;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 112
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    const v10, 0x7f0e05f3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v1, v5

    move-object v4, v5

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 122
    :cond_0
    const v10, 0x7f07033a

    invoke-virtual {p0, v10}, Lcom/xueqiu/android/community/c/n;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 126
    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    add-int/lit8 v1, v8, -0x1

    if-ne v6, v1, :cond_2

    .line 132
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 127
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 136
    :cond_4
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_5
    return-void

    .line 105
    :array_0
    .array-data 4
        0x7f010053
        0x7f010058
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 39
    const v0, 0x7f0301b7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->v()Landroid/app/Application;

    move-result-object v1

    const-string v2, "stockDetail_quote"

    .line 1088
    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 49
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/n;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 2058
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2059
    const-string v1, "quote_type_filed_map_config"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2061
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2062
    iget-object v0, p0, Lcom/xueqiu/android/community/c/n;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    iget-object v0, p0, Lcom/xueqiu/android/community/c/n;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2064
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/n;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/as;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/n;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/n;->u()V

    .line 54
    return-void

    .line 2065
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/community/c/n;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2066
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/n;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/as;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/n;->a:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2090
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2068
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2069
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/n;->g()Landroid/support/v4/a/k;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/n$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/n$1;-><init>(Lcom/xueqiu/android/community/c/n;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
