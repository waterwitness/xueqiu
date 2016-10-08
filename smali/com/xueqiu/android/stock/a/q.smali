.class public final Lcom/xueqiu/android/stock/a/q;
.super Landroid/widget/BaseAdapter;
.source "PortfolioListAdapter.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/a/c;
.implements Lcom/nhaarman/listviewanimations/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;",
        "Lcom/nhaarman/listviewanimations/a/c",
        "<",
        "Lcom/xueqiu/android/stock/model/PortfolioStock;",
        ">;",
        "Lcom/nhaarman/listviewanimations/a/f;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/PortfolioStock;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/PortfolioStock;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/xueqiu/android/stock/a/t;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/Context;

.field private m:Landroid/view/LayoutInflater;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->d:Ljava/util/Set;

    .line 77
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->f:I

    .line 85
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 87
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 89
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->n:I

    .line 91
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->o:I

    .line 93
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->p:I

    .line 95
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->q:I

    .line 97
    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->r:I

    .line 99
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/a/q;->i:Z

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/stock/a/q;->j:I

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->k:Ljava/util/Map;

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->m:Landroid/view/LayoutInflater;

    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q;->l:Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/a/q;->a()V

    .line 109
    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 563
    if-ltz p0, :cond_0

    .line 564
    add-int/lit8 v0, p0, -0x1

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/xueqiu/android/stock/a/q;->f:I

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/a/q;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/xueqiu/android/stock/a/q;->f:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/a/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/xueqiu/android/stock/a/q;->h:I

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/a/q;I)I
    .locals 2

    .prologue
    .line 53
    .line 2555
    iget v0, p0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2556
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2558
    :cond_0
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/a/q;)Lcom/xueqiu/android/stock/a/t;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->e:Lcom/xueqiu/android/stock/a/t;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/a/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/xueqiu/android/stock/a/q;->j:I

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/a/q;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/a/q;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/a/q;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/xueqiu/android/stock/a/q;->g:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const v8, 0x7f020394

    const v7, 0x7f0200e2

    const v6, 0x7f0200e1

    const v5, 0x7f0200e0

    const v4, 0x7f0200df

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->l:Landroid/content/Context;

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/q;->l:Landroid/content/Context;

    const v3, 0x7f070570

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const v1, 0x7f020393

    iput v1, p0, Lcom/xueqiu/android/stock/a/q;->r:I

    .line 116
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->l:Landroid/content/Context;

    const v2, 0x7f070570

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iput v8, p0, Lcom/xueqiu/android/stock/a/q;->n:I

    .line 118
    const v0, 0x7f020395

    iput v0, p0, Lcom/xueqiu/android/stock/a/q;->o:I

    .line 120
    iput v4, p0, Lcom/xueqiu/android/stock/a/q;->p:I

    .line 121
    iput v6, p0, Lcom/xueqiu/android/stock/a/q;->q:I

    .line 122
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iput v5, p0, Lcom/xueqiu/android/stock/a/q;->p:I

    .line 124
    iput v7, p0, Lcom/xueqiu/android/stock/a/q;->q:I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const v0, 0x7f020395

    iput v0, p0, Lcom/xueqiu/android/stock/a/q;->n:I

    .line 128
    iput v8, p0, Lcom/xueqiu/android/stock/a/q;->o:I

    .line 130
    iput v6, p0, Lcom/xueqiu/android/stock/a/q;->p:I

    .line 131
    iput v4, p0, Lcom/xueqiu/android/stock/a/q;->q:I

    .line 132
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iput v7, p0, Lcom/xueqiu/android/stock/a/q;->p:I

    .line 134
    iput v5, p0, Lcom/xueqiu/android/stock/a/q;->q:I

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 665
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 666
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method public final synthetic a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 53
    check-cast p2, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 1671
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1672
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/PortfolioStock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    .line 576
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 577
    return-void
.end method

.method public final b(I)Lcom/xueqiu/android/stock/model/PortfolioStock;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 679
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    .line 457
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/a/q;->h:I

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    new-instance v1, Lcom/xueqiu/android/stock/a/q$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/a/q$5;-><init>(Lcom/xueqiu/android/stock/a/q;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 487
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/stock/a/q;->g:I

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    new-instance v1, Lcom/xueqiu/android/stock/a/q$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/a/q$6;-><init>(Lcom/xueqiu/android/stock/a/q;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 506
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 159
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 160
    :cond_0
    int-to-long v0, p1

    .line 164
    :goto_0
    return-wide v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 164
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 434
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 435
    iget-boolean v1, p0, Lcom/xueqiu/android/stock/a/q;->i:Z

    if-eqz v1, :cond_0

    .line 436
    const/4 v0, 0x1

    .line 441
    :cond_0
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p1}, Lcom/xueqiu/android/stock/a/q;->getItemViewType(I)I

    move-result v2

    .line 175
    if-nez v2, :cond_1d

    .line 176
    if-nez p2, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/a/q;->m:Landroid/view/LayoutInflater;

    const v3, 0x7f0301ae

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 178
    new-instance v3, Lcom/xueqiu/android/stock/a/s;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/xueqiu/android/stock/a/s;-><init>(Lcom/xueqiu/android/stock/a/q;B)V

    .line 179
    const v2, 0x7f0e063f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->a:Landroid/widget/TextView;

    .line 180
    const v2, 0x7f0e03d7

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->b:Landroid/widget/ImageView;

    .line 181
    const v2, 0x7f0e0642

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->c:Landroid/widget/TextView;

    .line 182
    const v2, 0x7f0e0643

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->d:Landroid/widget/TextView;

    .line 183
    const v2, 0x7f0e0645

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 184
    const v2, 0x7f0e0646

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 185
    const v2, 0x7f0e0644

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->g:Landroid/view/View;

    .line 186
    const v2, 0x7f0e0641

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    .line 187
    const v2, 0x7f0e01fb

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->i:Landroid/view/View;

    .line 188
    const v2, 0x7f0e063e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->j:Landroid/view/View;

    .line 189
    const v2, 0x7f0e0640

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/s;->k:Landroid/widget/ImageView;

    .line 190
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object v2, v3, Lcom/xueqiu/android/stock/a/s;->g:Landroid/view/View;

    new-instance v3, Lcom/xueqiu/android/stock/a/q$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xueqiu/android/stock/a/q$1;-><init>(Lcom/xueqiu/android/stock/a/q;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/stock/a/s;

    .line 212
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    if-nez v3, :cond_3

    .line 1304
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->d:Landroid/widget/TextView;

    const-string v5, "0.0"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->r:I

    invoke-virtual {v3, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setBackgroundResource(I)V

    .line 1306
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const-string v5, "0.0"

    invoke-virtual {v3, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setVisibility(I)V

    .line 221
    :cond_1
    :goto_0
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getStockName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_2
    :goto_1
    return-object p2

    .line 216
    :cond_3
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/stock/a/q;->d:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 217
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->c:Landroid/widget/TextView;

    const-string v6, "%s \u5ef6\u65f6"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :cond_4
    iget-object v6, v4, Lcom/xueqiu/android/stock/a/s;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/4 v6, 0x1

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v5, v6, v7}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setTextSize(IF)V

    .line 1315
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setVisibility(I)V

    .line 1316
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v5

    sget-object v6, Lcom/xueqiu/android/stock/model/StockStatus;->SUSPEND:Lcom/xueqiu/android/stock/model/StockStatus;

    invoke-virtual {v6}, Lcom/xueqiu/android/stock/model/StockStatus;->value()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 1317
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stock/a/q;->r:I

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setBackgroundResource(I)V

    .line 1318
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const v6, 0x7f070114

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(I)V

    .line 1319
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setVisibility(I)V

    .line 1365
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_18

    .line 1366
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/as;->c(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1367
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1368
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const v5, 0x7f020422

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1311
    :cond_5
    const-string v5, "%.4f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1312
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1320
    :cond_6
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v5

    sget-object v6, Lcom/xueqiu/android/stock/model/StockStatus;->DELIST:Lcom/xueqiu/android/stock/model/StockStatus;

    invoke-virtual {v6}, Lcom/xueqiu/android/stock/model/StockStatus;->value()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 1321
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stock/a/q;->r:I

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setBackgroundResource(I)V

    .line 1322
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const v6, 0x7f070110

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(I)V

    .line 1323
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setVisibility(I)V

    goto :goto_3

    .line 1325
    :cond_7
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setGravity(I)V

    .line 1327
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 1328
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_b

    .line 1329
    :cond_9
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stock/a/q;->n:I

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setBackgroundResource(I)V

    .line 1338
    :goto_4
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v6

    .line 1339
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/stock/a/q;->k:Ljava/util/Map;

    .line 1340
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/stock/a/q;->k:Ljava/util/Map;

    .line 1341
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_a

    .line 1342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/stock/a/q;->k:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->p:I

    .line 1343
    :goto_5
    iget-object v7, v4, Lcom/xueqiu/android/stock/a/s;->j:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1344
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->j:Landroid/view/View;

    .line 1409
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1410
    const-wide/16 v8, 0x190

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1411
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1412
    new-instance v8, Lcom/xueqiu/android/stock/a/q$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v5}, Lcom/xueqiu/android/stock/a/q$4;-><init>(Lcom/xueqiu/android/stock/a/q;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1429
    invoke-virtual {v5, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/stock/a/q;->k:Ljava/util/Map;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->f:I

    if-nez v5, :cond_12

    .line 1349
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v6

    .line 1350
    :goto_6
    iget-object v8, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const-string v9, "%s%.2f%%"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmpl-double v5, v6, v12

    if-lez v5, :cond_11

    const-string v5, "+"

    :goto_7
    aput-object v5, v10, v11

    const/4 v5, 0x1

    .line 1352
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v10, v5

    .line 1350
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    :goto_8
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->b()V

    goto/16 :goto_3

    .line 1330
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-ltz v5, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 1331
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_e

    .line 1332
    :cond_d
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stock/a/q;->o:I

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1334
    :cond_e
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stock/a/q;->r:I

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1342
    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->q:I

    goto/16 :goto_5

    .line 1349
    :cond_10
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v6

    goto :goto_6

    .line 1350
    :cond_11
    const-string v5, ""

    goto :goto_7

    .line 1353
    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->f:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    .line 1354
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v6

    .line 1355
    :goto_9
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Lcom/xueqiu/android/base/util/as;->a(DD)Ljava/lang/String;

    move-result-object v8

    .line 1356
    iget-object v9, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const-string v10, "%s%s"

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    cmpl-double v5, v6, v14

    if-lez v5, :cond_14

    const-string v5, "+"

    :goto_a
    aput-object v5, v11, v12

    const/4 v5, 0x1

    aput-object v8, v11, v5

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1354
    :cond_13
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v6

    goto :goto_9

    .line 1356
    :cond_14
    const-string v5, ""

    goto :goto_a

    .line 1360
    :cond_15
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->e:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1369
    :cond_16
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1370
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1371
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const v5, 0x7f020420

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1373
    :cond_17
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1376
    :cond_18
    const-string v5, "us"

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarket()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1377
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1378
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const v6, 0x7f020422

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1386
    :goto_b
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getBadgesExist()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1387
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->b:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1392
    :goto_c
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1393
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->k:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1399
    :goto_d
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getClosedAt()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getClosedAt()Ljava/util/Date;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1400
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stock/a/q;->r:I

    invoke-virtual {v3, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setBackgroundResource(I)V

    .line 1401
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const v5, 0x7f07010f

    invoke-virtual {v3, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(I)V

    .line 1402
    iget-object v3, v4, Lcom/xueqiu/android/stock/a/s;->f:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1379
    :cond_19
    const-string v5, "hk"

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarket()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1380
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1381
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const v6, 0x7f020420

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 1383
    :cond_1a
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->h:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 1389
    :cond_1b
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->b:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 1395
    :cond_1c
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/s;->k:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 222
    :cond_1d
    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 223
    if-nez p2, :cond_1e

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/a/q;->m:Landroid/view/LayoutInflater;

    const v3, 0x7f0301af

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 225
    new-instance v3, Lcom/xueqiu/android/stock/a/r;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/xueqiu/android/stock/a/r;-><init>(Lcom/xueqiu/android/stock/a/q;B)V

    .line 226
    const v2, 0x7f0e0647

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/r;->a:Landroid/widget/ImageButton;

    .line 227
    const v2, 0x7f0e063f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/r;->b:Landroid/widget/TextView;

    .line 228
    const v2, 0x7f0e0642

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/r;->c:Landroid/widget/TextView;

    .line 229
    const v2, 0x7f0e008f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/r;->d:Landroid/widget/ImageButton;

    .line 230
    const v2, 0x7f0e0648

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    .line 231
    const v2, 0x7f0e0640

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/r;->f:Landroid/widget/ImageView;

    .line 232
    const v2, 0x7f0e01fb

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lcom/xueqiu/android/stock/a/r;->g:Landroid/view/View;

    .line 233
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/stock/a/r;

    .line 238
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/r;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getStockName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v5, v4, Lcom/xueqiu/android/stock/a/r;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/stock/a/q;->j:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_22

    .line 242
    if-nez v3, :cond_1f

    .line 243
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    :goto_e
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->d:Landroid/widget/ImageButton;

    new-instance v3, Lcom/xueqiu/android/stock/a/q$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/xueqiu/android/stock/a/q$2;-><init>(Lcom/xueqiu/android/stock/a/q;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->a:Landroid/widget/ImageButton;

    new-instance v3, Lcom/xueqiu/android/stock/a/q$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/xueqiu/android/stock/a/q$3;-><init>(Lcom/xueqiu/android/stock/a/q;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 244
    :cond_1f
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/as;->c(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 245
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const v3, 0x7f020422

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 247
    :cond_20
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 248
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const v3, 0x7f020420

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 251
    :cond_21
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e

    .line 254
    :cond_22
    const-string v2, "us"

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 255
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const v5, 0x7f020422

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    :goto_f
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 265
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->f:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 257
    :cond_23
    const-string v2, "hk"

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 258
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const v5, 0x7f020420

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f

    .line 261
    :cond_24
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->e:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 267
    :cond_25
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/r;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 295
    :cond_26
    if-nez p2, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stock/a/q;->m:Landroid/view/LayoutInflater;

    const v3, 0x7f0301b0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method
