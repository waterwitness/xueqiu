.class public final Lcom/xueqiu/android/community/c/b;
.super Lcom/xueqiu/android/common/c;
.source "FinanceDataFragment.java"


# instance fields
.field private a:Lcom/xueqiu/android/stock/model/StockQuote;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/b;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/b;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/b;->v()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/b;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 31
    .line 3069
    const v0, 0x7f0e04c7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/b;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3072
    const v1, 0x7f070369

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3138
    :goto_0
    return-void

    .line 3076
    :cond_0
    const v1, 0x7f070369

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3077
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3078
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3079
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3081
    const-string v2, "http://xueqiu.com"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3084
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3085
    const-string v2, "\u96ea\u7403\u9009\u80a1\u5668"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3092
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/b;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const v6, 0x7f03019f

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3093
    const v2, 0x7f0e05f1

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3094
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3095
    new-instance v1, Lcom/xueqiu/android/community/c/b$2;

    invoke-direct {v1, p0, v5}, Lcom/xueqiu/android/community/c/b$2;-><init>(Lcom/xueqiu/android/community/c/b;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3131
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3137
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3134
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/b;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 37
    const v0, 0x7f03019e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/b;->v()Landroid/app/Application;

    move-result-object v1

    const-string v2, "stockDetail_finance"

    .line 2088
    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 47
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/b;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 49
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/b;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/b;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/c/b$1;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/community/c/b$1;-><init>(Lcom/xueqiu/android/community/c/b;Lcom/xueqiu/android/base/b/q;)V

    .line 2566
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->e(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/b;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 65
    return-void
.end method
