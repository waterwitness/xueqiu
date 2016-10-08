.class public final Lcom/xueqiu/android/community/c/a;
.super Lcom/xueqiu/android/common/c;
.source "CompanyProfileFragment.java"


# instance fields
.field private a:Lcom/xueqiu/android/stock/model/StockQuote;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/a;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0e05ea

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/a;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 36
    .line 6222
    const v0, 0x7f0e05e9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6223
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6224
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/InvCalEventsPair;

    iget-object v1, v1, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mEventList:Ljava/util/ArrayList;

    .line 6225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6227
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 6228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6230
    const v0, 0x7f0e05e8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    .line 6231
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6232
    new-instance v1, Lcom/xueqiu/android/community/c/a$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/a$6;-><init>(Lcom/xueqiu/android/community/c/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6242
    const v0, 0x7f0e05de

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/a;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 6090
    :try_start_0
    const-string v0, "profiles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 6091
    const/4 v1, 0x1

    .line 6093
    const v0, 0x7f0e05db

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6094
    const-string v4, "summary"

    invoke-static {v3, v4}, Lcom/xueqiu/android/community/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6095
    const-string v1, "summary"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6096
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6097
    const v0, 0x7f0e05da

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    .line 6101
    :cond_0
    const-string v0, "business"

    invoke-static {v3, v0}, Lcom/xueqiu/android/community/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6102
    const v0, 0x7f0e05dd

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6103
    const-string v1, "business"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6104
    const v0, 0x7f0e05dc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    .line 6108
    :cond_1
    const v0, 0x7f0e05de

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6109
    const-string v4, "site"

    invoke-static {v3, v4}, Lcom/xueqiu/android/community/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6110
    const v1, 0x7f0e05e1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6111
    const-string v4, "site"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6112
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6116
    const v1, 0x7f0e05e0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    .line 6117
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6118
    new-instance v5, Lcom/xueqiu/android/community/c/a$3;

    invoke-direct {v5, p0, v4}, Lcom/xueqiu/android/community/c/a$3;-><init>(Lcom/xueqiu/android/community/c/a;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v1, v2

    .line 6134
    :cond_2
    const-string v4, "addr"

    invoke-static {v3, v4}, Lcom/xueqiu/android/community/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6135
    const v1, 0x7f0e05e3

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6136
    const-string v4, "addr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6137
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6138
    const v1, 0x7f0e05e2

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    .line 6139
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v1, v2

    .line 6145
    :cond_3
    const-string v4, "tel"

    invoke-static {v3, v4}, Lcom/xueqiu/android/community/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6146
    const v1, 0x7f0e05e5

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6147
    const-string v4, "tel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6149
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6154
    const v1, 0x7f0e05e4

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    .line 6155
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6156
    new-instance v5, Lcom/xueqiu/android/community/c/a$4;

    invoke-direct {v5, p0, v4}, Lcom/xueqiu/android/community/c/a$4;-><init>(Lcom/xueqiu/android/community/c/a;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v1, v2

    .line 6171
    :cond_4
    const-string v4, "prospectus"

    invoke-static {v3, v4}, Lcom/xueqiu/android/community/c/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6172
    const v1, 0x7f0e05e7

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6173
    const-string v4, "prospectus"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6175
    const-string v4, "S1/F1"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6180
    const v1, 0x7f0e05e6

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v1

    .line 6181
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6182
    new-instance v4, Lcom/xueqiu/android/community/c/a$5;

    invoke-direct {v4, p0, v3}, Lcom/xueqiu/android/community/c/a$5;-><init>(Lcom/xueqiu/android/community/c/a;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v0, v2

    .line 6207
    :goto_0
    if-eqz v0, :cond_5

    .line 6208
    const v0, 0x7f0e05ea

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6209
    const v0, 0x7f0703c6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 6210
    const v0, 0x7f0e05eb

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6214
    :cond_5
    const v0, 0x7f0e05df

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6218
    :goto_1
    return-void

    .line 6217
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 247
    .line 249
    :try_start_0
    invoke-static {p0, p1}, Lcom/xueqiu/android/common/model/parser/AbstractParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 251
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/a;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->v()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/a;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->v()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/c/a;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->v()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/c/a;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/c/a;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->v()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 42
    const v0, 0x7f03019c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->v()Landroid/app/Application;

    move-result-object v1

    const-string v2, "stockDetail_info"

    .line 3088
    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 51
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/a;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 52
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/a;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/c/a$1;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/community/c/a$1;-><init>(Lcom/xueqiu/android/community/c/a;Lcom/xueqiu/android/base/b/q;)V

    .line 4562
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/a;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/a;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/c/a$2;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/community/c/a$2;-><init>(Lcom/xueqiu/android/community/c/a;Lcom/xueqiu/android/base/b/q;)V

    .line 5231
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/b/e;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    .line 84
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/a;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/c/a;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 86
    return-void
.end method
