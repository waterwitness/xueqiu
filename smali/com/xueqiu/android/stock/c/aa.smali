.class public final Lcom/xueqiu/android/stock/c/aa;
.super Lcom/xueqiu/android/common/c;
.source "USETFRankFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field public a:Z

.field private b:Lcom/xueqiu/android/stock/model/USETFCategory;

.field private c:Lcom/xueqiu/android/stock/a/u;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/OldPortFolio;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 39
    iput v0, p0, Lcom/xueqiu/android/stock/c/aa;->e:I

    .line 40
    iput v0, p0, Lcom/xueqiu/android/stock/c/aa;->f:I

    .line 41
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/aa;->g:Z

    .line 42
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/aa;->a:Z

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/aa;)I
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/xueqiu/android/stock/c/aa;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/stock/c/aa;->e:I

    return v0
.end method

.method public static a(Lcom/xueqiu/android/stock/model/USETFCategory;)Lcom/xueqiu/android/stock/c/aa;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/xueqiu/android/stock/c/aa;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/aa;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    const-string v2, "arg_etf_category"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/aa;->e(Landroid/os/Bundle;)V

    .line 57
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/aa;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xueqiu/android/stock/c/aa;->e:I

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/aa;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xueqiu/android/stock/c/aa;->f:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/aa;)V
    .locals 11

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 34
    .line 3140
    iput-boolean v8, p0, Lcom/xueqiu/android/stock/c/aa;->g:Z

    .line 3141
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->b:Lcom/xueqiu/android/stock/model/USETFCategory;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/USETFCategory;->getTypes()[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 3142
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/stock/c/aa;->f:I

    if-ge v1, v0, :cond_1

    .line 3143
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3147
    aget-object v4, v3, v1

    .line 3148
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%s-%s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/xueqiu/android/stock/c/aa;->b:Lcom/xueqiu/android/stock/model/USETFCategory;

    invoke-virtual {v7}, Lcom/xueqiu/android/stock/model/USETFCategory;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v4, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3149
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/aa;->f()Landroid/content/Context;

    move-result-object v5

    .line 3169
    const v6, 0x7f070099

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3170
    new-instance v6, Lcom/xueqiu/android/stock/c/ab;

    invoke-direct {v6}, Lcom/xueqiu/android/stock/c/ab;-><init>()V

    .line 3171
    aget-object v7, v5, v2

    iput-object v7, v6, Lcom/xueqiu/android/stock/c/ab;->c:Ljava/lang/String;

    .line 3172
    aget-object v7, v5, v8

    iput-object v7, v6, Lcom/xueqiu/android/stock/c/ab;->d:Ljava/lang/String;

    .line 3173
    aget-object v5, v5, v9

    iput-object v5, v6, Lcom/xueqiu/android/stock/c/ab;->e:Ljava/lang/String;

    .line 3174
    iput v10, v6, Lcom/xueqiu/android/stock/c/ab;->g:I

    .line 3175
    iput-object v0, v6, Lcom/xueqiu/android/stock/c/ab;->a:Ljava/lang/String;

    .line 3150
    iget-object v5, p0, Lcom/xueqiu/android/stock/c/aa;->c:Lcom/xueqiu/android/stock/a/u;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, v10}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0, v6, v4}, Lcom/xueqiu/android/stock/a/u;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 3142
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/c/aa;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private u()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 88
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/aa;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/aa;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->b:Lcom/xueqiu/android/stock/model/USETFCategory;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/USETFCategory;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->b:Lcom/xueqiu/android/stock/model/USETFCategory;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/USETFCategory;->getTypes()[Ljava/lang/String;

    move-result-object v13

    .line 94
    array-length v0, v13

    iput v0, p0, Lcom/xueqiu/android/stock/c/aa;->f:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/xueqiu/android/stock/c/aa;->f:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->d:Ljava/util/ArrayList;

    move v10, v11

    .line 97
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/stock/c/aa;->f:I

    if-ge v10, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    aget-object v0, v13, v10

    .line 100
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v11

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    const-string v3, "ETF"

    .line 102
    const-string v2, "US"

    .line 105
    new-instance v1, Lcom/xueqiu/android/stock/c/aa$1;

    invoke-direct {v1, p0, p0, v10}, Lcom/xueqiu/android/stock/c/aa$1;-><init>(Lcom/xueqiu/android/stock/c/aa;Lcom/xueqiu/android/base/b/q;I)V

    .line 125
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/aa;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const-string v5, "desc"

    const-string v6, "percent"

    const/4 v7, 0x5

    new-instance v9, Lcom/xueqiu/android/stock/c/aa$2;

    invoke-direct {v9, p0}, Lcom/xueqiu/android/stock/c/aa$2;-><init>(Lcom/xueqiu/android/stock/c/aa;)V

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/ai;->a(Lcom/xueqiu/android/base/b/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/common/model/parser/Parser;)Lcom/xueqiu/android/base/b/x;

    .line 97
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0
.end method


# virtual methods
.method public final C_()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/aa;->u()V

    .line 157
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f0301b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 63
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 64
    const-string v1, "arg_etf_category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/USETFCategory;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/aa;->b:Lcom/xueqiu/android/stock/model/USETFCategory;

    .line 66
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0e064b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/aa;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 80
    new-instance v1, Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/aa;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/stock/a/u;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/aa;->c:Lcom/xueqiu/android/stock/a/u;

    .line 81
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/aa;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/aa;->a:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/aa;->u()V

    .line 85
    :cond_0
    return-void
.end method
