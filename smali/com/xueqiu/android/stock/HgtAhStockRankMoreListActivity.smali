.class public Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;
.super Lcom/xueqiu/android/common/b;
.source "HgtAhStockRankMoreListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/stock/model/AHStockQuote;",
        ">;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/xueqiu/android/stock/a/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    .line 39
    iput-object v1, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    .line 40
    iput-object v1, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->p:Lcom/xueqiu/android/stock/a/f;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method private c(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 106
    const-string v1, "price_ratio"

    const-string v2, "desc"

    iget v3, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    .line 3626
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/xueqiu/android/base/b/ak;->b(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 106
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    .line 96
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    .line 82
    iget v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    if-gtz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    .line 87
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 90
    :cond_1
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/AHStockQuote;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->j:I

    .line 102
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->c(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0301bc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0702c0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->setTitle(I)V

    .line 2052
    new-instance v0, Lcom/xueqiu/android/stock/a/f;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->p:Lcom/xueqiu/android/stock/a/f;

    .line 2053
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 2054
    new-instance v1, Lcom/xueqiu/android/common/r;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    .line 2055
    iget-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->p:Lcom/xueqiu/android/stock/a/f;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 2056
    iget-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity$1;-><init>(Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2067
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 2068
    const v0, 0x7f0e066d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/xueqiu/android/stock/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2069
    const v0, 0x7f0e066e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/xueqiu/android/stock/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2070
    const v0, 0x7f0e066f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/xueqiu/android/stock/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    const v0, 0x7f0e0670

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v1, Lcom/xueqiu/android/stock/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->k:Lcom/xueqiu/android/common/r;

    .line 2225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 49
    return-void
.end method
