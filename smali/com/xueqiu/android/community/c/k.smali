.class public final Lcom/xueqiu/android/community/c/k;
.super Lcom/xueqiu/android/common/c;
.source "OptionFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private ak:Lcom/xueqiu/android/stock/model/StockQuote;

.field private b:Ljava/lang/String;

.field private c:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/stock/model/StockOption;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private e:Lcom/xueqiu/android/stock/a/l;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->b:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    .line 48
    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    .line 50
    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    .line 52
    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/k;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4127
    .line 4129
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4130
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    if-eqz v0, :cond_0

    .line 4131
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getFilterConditions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4133
    :cond_0
    const-string v0, "bond_type"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4134
    const-string v0, "bond_type"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 4136
    :goto_0
    const-string v0, "due_date"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4137
    const-string v0, "due_date"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 4139
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/k;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->a:Ljava/lang/String;

    .line 4630
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 34
    return-object v0

    :cond_1
    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/k;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->c:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/k;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 34
    .line 5209
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 5216
    :cond_0
    :goto_0
    return-void

    .line 5213
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockOption;

    .line 5214
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockOption;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/c/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/k;)Lcom/xueqiu/android/stock/a/l;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->e:Lcom/xueqiu/android/stock/a/l;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 57
    const v0, 0x7f0301a3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 64
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 67
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->a:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->b:Ljava/lang/String;

    .line 3079
    :cond_1
    :goto_0
    new-instance v0, Lcom/xueqiu/android/stock/a/l;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/k;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/stock/a/l;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->e:Lcom/xueqiu/android/stock/a/l;

    .line 3080
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/k;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 3081
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/k;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b3

    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3082
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3083
    new-instance v0, Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v2, Lcom/xueqiu/android/community/c/k$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/c/k$1;-><init>(Lcom/xueqiu/android/community/c/k;)V

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->c:Lcom/xueqiu/android/common/r;

    .line 3111
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->c:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->e:Lcom/xueqiu/android/stock/a/l;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 3112
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->c:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/community/c/k$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/k$2;-><init>(Lcom/xueqiu/android/community/c/k;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3149
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_3

    .line 3150
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    .line 3151
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 3152
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5168\u90e8\u7c7b\u578b"

    aput-object v1, v0, v4

    const-string v1, "\u8ba4\u8d2d"

    aput-object v1, v0, v5

    const-string v1, "\u8ba4\u6cbd"

    aput-object v1, v0, v6

    const-string v1, "\u718a\u8bc1"

    aput-object v1, v0, v7

    const-string v1, "\u725b\u8bc1"

    aput-object v1, v0, v8

    .line 3153
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v2, v0, v4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3154
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v2, v0, v5

    const-string v3, "C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3155
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v2, v0, v6

    const-string v3, "P"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v2, v0, v7

    const-string v3, "PB"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v0, v0, v8

    const-string v2, "CB"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    :goto_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5168\u90e8\u65e5\u671f"

    aput-object v1, v0, v4

    const-string v1, "\u672c\u6708\u5230\u671f"

    aput-object v1, v0, v5

    const-string v1, "\u6700\u8fd13\u4e2a\u6708\u5230\u671f"

    aput-object v1, v0, v6

    const-string v1, "\u6700\u8fd16\u4e2a\u6708\u5230\u671f"

    aput-object v1, v0, v7

    const-string v1, "\u6700\u8fd112\u4e2a\u6708\u5230\u671f"

    aput-object v1, v0, v8

    .line 3166
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    .line 3167
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    aget-object v2, v0, v4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    aget-object v2, v0, v5

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    aget-object v2, v0, v6

    const-string v3, "3"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    aget-object v2, v0, v7

    const-string v3, "6"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3171
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    aget-object v0, v0, v8

    const-string v2, "12"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3174
    const-string v1, "bond_type"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    const-string v1, "due_date"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/k;->g:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3177
    new-instance v1, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/k;->w()Landroid/support/v7/a/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/a/a;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/c/k;->h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    .line 3178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    iget-object v2, p0, Lcom/xueqiu/android/community/c/k;->h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {v2, v0, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 3182
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    new-instance v1, Lcom/xueqiu/android/community/c/k$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/k$3;-><init>(Lcom/xueqiu/android/community/c/k;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->setOnFilterChangedListener(Lcom/xueqiu/android/cube/widget/b;)V

    .line 3194
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3195
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/k;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3196
    iget-object v2, p0, Lcom/xueqiu/android/community/c/k;->h:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {v0, v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3198
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3199
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/k;->f()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3200
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/k;->h()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3201
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3202
    invoke-virtual {v0, v2, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3123
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->c:Lcom/xueqiu/android/common/r;

    .line 3225
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 76
    return-void

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k;->ak:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/k;->a:Ljava/lang/String;

    goto/16 :goto_0

    .line 3159
    :cond_5
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u5168\u90e8\u7c7b\u578b"

    aput-object v1, v0, v4

    const-string v1, "\u8ba4\u8d2d"

    aput-object v1, v0, v5

    const-string v1, "\u8ba4\u6cbd"

    aput-object v1, v0, v6

    .line 3160
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v2, v0, v4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v2, v0, v5

    const-string v3, "C"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3162
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k;->f:Ljava/util/Map;

    aget-object v0, v0, v6

    const-string v2, "P"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method
