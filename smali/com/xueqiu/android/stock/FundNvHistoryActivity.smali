.class public Lcom/xueqiu/android/stock/FundNvHistoryActivity;
.super Lcom/xueqiu/android/common/b;
.source "FundNvHistoryActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/HistoryValue;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/xueqiu/android/stock/c;

.field private q:Ljava/lang/String;

.field private r:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->k:Ljava/util/List;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->r:D

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/FundNvHistoryActivity;Lcom/google/gson/JsonObject;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 3073
    const-string v0, "private_fund"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 3074
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3075
    iget-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 3076
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3077
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 3078
    new-instance v5, Lcom/xueqiu/android/cube/model/HistoryValue;

    invoke-direct {v5}, Lcom/xueqiu/android/cube/model/HistoryValue;-><init>()V

    .line 3079
    const-string v6, "unit_net_value"

    invoke-virtual {v4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v6

    .line 3080
    iget-wide v8, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->r:D

    cmpl-double v8, v6, v8

    if-lez v8, :cond_0

    .line 3081
    iput-wide v6, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->r:D

    .line 3083
    :cond_0
    invoke-virtual {v5, v6, v7}, Lcom/xueqiu/android/cube/model/HistoryValue;->setValue(D)V

    .line 3084
    new-instance v6, Ljava/util/Date;

    const-string v7, "end_date"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/xueqiu/android/cube/model/HistoryValue;->setDate(Ljava/lang/String;)V

    .line 3087
    iget-object v4, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->k:Ljava/util/List;

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3076
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3089
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->p:Lcom/xueqiu/android/stock/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c;->notifyDataSetChanged()V

    .line 28
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)D
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->r:D

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_fund_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->q:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->finish()V

    .line 69
    :goto_0
    return-void

    .line 53
    :cond_0
    const v0, 0x7f070172

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 55
    new-instance v0, Lcom/xueqiu/android/stock/c;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c;-><init>(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->p:Lcom/xueqiu/android/stock/c;

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->p:Lcom/xueqiu/android/stock/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->q:Ljava/lang/String;

    const-string v2, "all"

    new-instance v3, Lcom/xueqiu/android/stock/FundNvHistoryActivity$1;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity$1;-><init>(Lcom/xueqiu/android/stock/FundNvHistoryActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 2606
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ak;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method
