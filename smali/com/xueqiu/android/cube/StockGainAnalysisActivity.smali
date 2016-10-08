.class public Lcom/xueqiu/android/cube/StockGainAnalysisActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockGainAnalysisActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

.field private k:Landroid/widget/TextView;

.field private p:Lcom/xueqiu/android/cube/q;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/model/StockGain;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Ljava/lang/String;

.field private u:D

.field private v:D

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->q:Ljava/util/ArrayList;

    .line 71
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->v:D

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->w:I

    .line 75
    iput v2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->x:I

    .line 77
    iput v2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->y:I

    .line 79
    iput-boolean v2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->z:Z

    .line 298
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->x:I

    return p1
.end method

.method private a(Landroid/widget/TextView;D)V
    .locals 6

    .prologue
    const v4, 0x7f0d011a

    const v1, 0x7f0d0118

    const-wide/16 v2, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->z:Z

    if-eqz v0, :cond_1

    .line 280
    cmpl-double v0, p2, v2

    if-gtz v0, :cond_3

    .line 282
    cmpl-double v0, p2, v2

    if-nez v0, :cond_0

    .line 283
    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 288
    :cond_1
    cmpl-double v0, p2, v2

    if-lez v0, :cond_2

    .line 289
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 290
    :cond_2
    cmpl-double v0, p2, v2

    if-nez v0, :cond_3

    .line 291
    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 293
    :cond_3
    const v0, 0x7f0d011c

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    .line 2258
    iget v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->w:I

    iget v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->y:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->w:I

    if-eqz v0, :cond_1

    .line 2259
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->w:I

    if-nez v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    :cond_0
    return-void

    .line 2261
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;Landroid/widget/TextView;D)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Landroid/widget/TextView;D)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    .line 47
    .line 3239
    iget v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3240
    const-string v0, "max_benefit"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3241
    const-string v0, "max_benefit"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->v:D

    .line 3242
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->p:Lcom/xueqiu/android/cube/q;

    if-eqz v0, :cond_0

    .line 3243
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->p:Lcom/xueqiu/android/cube/q;

    iget-wide v2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->v:D

    .line 3408
    iput-wide v2, v0, Lcom/xueqiu/android/cube/q;->a:D

    .line 3248
    :cond_0
    const-string v0, "max_page"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3249
    const-string v0, "max_page"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->y:I

    .line 3252
    :cond_1
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3253
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->w:I

    .line 47
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)Lrx/a;
    .locals 1

    .prologue
    .line 47
    .line 3211
    new-instance v0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$4;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;I)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/a/a/a;->a(Landroid/app/Activity;Lrx/a;)Lrx/a;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/cube/q;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->p:Lcom/xueqiu/android/cube/q;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->x:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->y:I

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->w:I

    return v0
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->s:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->z:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f0700f9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_unit_value"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->u:D

    .line 88
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->t:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1273
    const v1, 0x7f0701ee

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1274
    const v2, 0x7f0702e0

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    const v1, 0x7f070571

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    iput-boolean v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->z:Z

    .line 2098
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 2099
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030114

    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2100
    const v0, 0x7f0e0456

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->r:Landroid/widget/TextView;

    .line 2101
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->r:Landroid/widget/TextView;

    const-string v2, "%.4f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->u:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2103
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->r:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->u:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->a(Landroid/widget/TextView;D)V

    .line 2104
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2106
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03021c

    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->s:Landroid/view/View;

    .line 2107
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->s:Landroid/view/View;

    const v1, 0x7f0e076c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2108
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2110
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->k:Landroid/widget/TextView;

    .line 2111
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0703c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2112
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2113
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 2115
    new-instance v0, Lcom/xueqiu/android/cube/q;

    invoke-direct {v0, p0, v6}, Lcom/xueqiu/android/cube/q;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;B)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->p:Lcom/xueqiu/android/cube/q;

    .line 2117
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$1;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 2152
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$2;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/xueqiu/android/common/widget/ptr/f;)V

    .line 2190
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->p:Lcom/xueqiu/android/cube/q;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2192
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;-><init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2207
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 2233
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/common/widget/ptr/d;->setRefreshing(Z)V

    goto/16 :goto_0
.end method
