.class public final Lcom/xueqiu/android/cube/b/h;
.super Lcom/xueqiu/android/common/c;
.source "RebalanceFragment.java"


# instance fields
.field public a:Z

.field private aA:I

.field private aB:I

.field private ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;"
        }
    .end annotation
.end field

.field private al:Lcom/xueqiu/android/cube/b/i;

.field private am:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private an:Landroid/view/View;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/widget/EditText;

.field private aq:Landroid/widget/TextView;

.field private ar:Landroid/widget/Button;

.field private as:Landroid/widget/Button;

.field private at:Landroid/widget/TextView;

.field private au:Landroid/widget/TextView;

.field private av:Landroid/view/View;

.field private aw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private ax:I

.field private ay:Landroid/widget/TextView;

.field private az:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/xueqiu/android/cube/model/Cube;

.field public c:Lcom/xueqiu/android/cube/a/d;

.field public d:Z

.field private final e:I

.field private f:Z

.field private g:Ljava/lang/Double;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 91
    iput v0, p0, Lcom/xueqiu/android/cube/b/h;->e:I

    .line 105
    iput-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    .line 107
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->aw:Ljava/util/Map;

    .line 147
    new-instance v0, Lcom/xueqiu/android/cube/b/h$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/b/h$1;-><init>(Lcom/xueqiu/android/cube/b/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->az:Ljava/util/Comparator;

    .line 526
    const-string v0, "#44CC00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/b/h;->aA:I

    .line 528
    const-string v0, "#444444"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/b/h;->aB:I

    .line 773
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/b/h;->d:Z

    .line 182
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const-string v1, "/cubes/create"

    new-instance v2, Lcom/xueqiu/android/cube/b/h$8;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/cube/b/h$8;-><init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->i(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 231
    return-void
.end method

.method private G()Z
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastSuccessRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 589
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastSuccessRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->USER_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 590
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastSuccessRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 591
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastSuccessRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 595
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 596
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 16227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 596
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 597
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastSuccessRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 601
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/xueqiu/android/cube/b/h$2;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/cube/b/h$2;-><init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 630
    return-void
.end method

.method private I()Z
    .locals 6

    .prologue
    .line 786
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 23227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 786
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 787
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x0

    .line 791
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private J()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 833
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 835
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCash()D

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/a/d;->b()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 857
    :goto_0
    if-nez v0, :cond_5

    .line 858
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/a/k;->setResult(I)V

    .line 859
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 902
    :goto_1
    return-void

    .line 839
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 840
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 841
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move v3, v4

    .line 844
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 26227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 844
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 845
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 27227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 845
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 846
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 847
    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 27231
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    .line 847
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 28231
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    .line 847
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 848
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v10

    cmpl-double v1, v6, v10

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v0

    cmpl-double v0, v6, v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v5

    .line 852
    goto/16 :goto_0

    .line 847
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v6

    goto :goto_4

    .line 844
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 864
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 28351
    iget-boolean v0, v0, Lcom/xueqiu/android/cube/a/d;->e:Z

    .line 864
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getInitialCapital()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    .line 865
    const v0, 0x7f07043b

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_1

    .line 868
    :cond_6
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->y()Landroid/app/Dialog;

    .line 869
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 29351
    iget-boolean v0, v0, Lcom/xueqiu/android/cube/a/d;->e:Z

    .line 869
    if-eqz v0, :cond_8

    .line 870
    :goto_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 30227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 870
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 871
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 31227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 871
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 872
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 31231
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    .line 872
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 873
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 32231
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    .line 873
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Holding;->setVolume(D)V

    .line 870
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 877
    :cond_8
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 33227
    iget-object v4, v4, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 877
    iget-object v5, p0, Lcom/xueqiu/android/cube/b/h;->ak:Ljava/util/List;

    iget-object v6, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 878
    invoke-virtual {v6}, Lcom/xueqiu/android/cube/a/d;->b()D

    move-result-wide v6

    iget-object v8, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/xueqiu/android/cube/b/h$5;

    invoke-direct {v9, p0, p0}, Lcom/xueqiu/android/cube/b/h$5;-><init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V

    .line 33458
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual/range {v0 .. v9}, Lcom/xueqiu/android/base/b/c;->a(JLjava/lang/String;Ljava/util/List;Ljava/util/List;DLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_1

    :cond_9
    move v0, v4

    goto/16 :goto_0
.end method

.method private K()V
    .locals 10

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->y()Landroid/app/Dialog;

    .line 906
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 33564
    iget-object v1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 906
    const-string v2, "arg_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 34564
    iget-object v1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 907
    const-string v4, "arg_market"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 35227
    iget-object v5, v1, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 908
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/a/d;->b()D

    move-result-wide v6

    iget-object v8, p0, Lcom/xueqiu/android/cube/b/h;->h:Ljava/lang/String;

    new-instance v9, Lcom/xueqiu/android/cube/b/h$6;

    invoke-direct {v9, p0, p0}, Lcom/xueqiu/android/cube/b/h$6;-><init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V

    .line 35410
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual/range {v1 .. v9}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;DLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 931
    return-void
.end method

.method private L()Z
    .locals 4

    .prologue
    .line 981
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 982
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ZZLcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/b/h;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/xueqiu/android/cube/b/h;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/b/h;-><init>()V

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v2, "arg_is_create"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string v2, "arg_readonly"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v2, "arg_cube"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    const-string v2, "arg_market"

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/b/h;->e(Landroid/os/Bundle;)V

    .line 177
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/cube/model/Rebalancing;)Ljava/lang/Double;
    .locals 8

    .prologue
    .line 38633
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCashValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 38634
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 38635
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 39347
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/d;->h:Ljava/util/Map;

    .line 38635
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 38636
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 38637
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v2, v0

    .line 38638
    goto :goto_0

    .line 38636
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 81
    :cond_1
    return-object v2
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/h;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h;->g:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/h;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->aw:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/stock/model/Stock;Z)V
    .locals 4

    .prologue
    .line 35558
    if-eqz p2, :cond_2

    .line 35559
    new-instance v1, Lcom/xueqiu/android/cube/model/Holding;

    invoke-direct {v1}, Lcom/xueqiu/android/cube/model/Holding;-><init>()V

    .line 35560
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/model/Holding;->setStockName(Ljava/lang/String;)V

    .line 35561
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/model/Holding;->setStockSymbol(Ljava/lang/String;)V

    .line 35562
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getIndId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/cube/model/Holding;->setSegmentId(J)V

    .line 35563
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getIndName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/model/Holding;->setSegmentName(Ljava/lang/String;)V

    .line 35564
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getIndColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/model/Holding;->setSegmentColor(Ljava/lang/String;)V

    .line 35565
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getStockId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/cube/model/Holding;->setStockId(J)V

    .line 35566
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 36227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 35566
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35567
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 36339
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    .line 35567
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getStockId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35568
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 37227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 35568
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->az:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35569
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->H()V

    .line 35582
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->notifyDataSetChanged()V

    .line 35583
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->u()V

    .line 35584
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->C()V

    .line 81
    return-void

    .line 35563
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getIndName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35571
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 37339
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    .line 35571
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getStockId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35572
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 38227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 35572
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35573
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 35575
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35576
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->u()V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->C()V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/b/h;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/xueqiu/android/cube/b/h;->ax:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/b/h;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/b/h;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->aq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/cube/b/h;)Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->G()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/cube/b/h;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->g:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/cube/b/h;)Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->I()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->J()V

    return-void
.end method

.method static synthetic m(Lcom/xueqiu/android/cube/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->F()V

    return-void
.end method

.method static synthetic o(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->K()V

    return-void
.end method

.method static synthetic p(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->H()V

    return-void
.end method

.method static synthetic q(Lcom/xueqiu/android/cube/b/h;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    return-object v0
.end method

.method private refresh()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 402
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->aw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 403
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 407
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v3

    .line 408
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->aw:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->aw:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->aw:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v0

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->aw:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->az:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 415
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v1

    .line 13247
    iput-object v1, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 416
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->notifyDataSetChanged()V

    .line 417
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->C()V

    .line 434
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-nez v0, :cond_4

    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 436
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    const v1, 0x7f07019b

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/b/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 440
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 442
    new-instance v0, Lcom/xueqiu/android/base/util/u;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/util/u;-><init>(I)V

    .line 443
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/cube/b/h$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/b/h$14;-><init>(Lcom/xueqiu/android/cube/b/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v0

    .line 14069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 14077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 462
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 464
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 465
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 466
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-eq v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->au:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->au:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->au:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Rebalancing;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    const v1, 0x7f07019a

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/b/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final C()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 534
    iget v0, p0, Lcom/xueqiu/android/cube/b/h;->ax:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 535
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCash()D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-nez v1, :cond_0

    .line 537
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ay:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u8d44\u4ea7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-wide v0, v2

    .line 546
    :goto_0
    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v0, v1, v7}, Lcom/xueqiu/android/base/util/au;->a(DI)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 548
    iget-object v5, p0, Lcom/xueqiu/android/cube/b/h;->at:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    const/4 v0, 0x0

    .line 550
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->av:Landroid/view/View;

    new-instance v2, Lcom/xueqiu/android/common/widget/d;

    iget v3, p0, Lcom/xueqiu/android/cube/b/h;->aA:I

    iget v4, p0, Lcom/xueqiu/android/cube/b/h;->aB:I

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    invoke-direct {v2, v3, v4, v0}, Lcom/xueqiu/android/common/widget/d;-><init>(IIF)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 551
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->b()D

    move-result-wide v0

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->b()D

    move-result-wide v0

    goto :goto_0

    .line 549
    :cond_2
    double-to-float v0, v0

    goto :goto_1
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final E()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 816
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 24227
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 816
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v4

    .line 829
    :goto_0
    return v0

    .line 819
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 820
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 821
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 25227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 823
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 824
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 825
    :goto_2
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 826
    goto :goto_0

    .line 824
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 829
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final F_()V
    .locals 1

    .prologue
    .line 946
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->F_()V

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->al:Lcom/xueqiu/android/cube/b/i;

    .line 948
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 236
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/cube/b/h;->e_(Z)V

    .line 237
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-eqz v0, :cond_6

    .line 238
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->w()Landroid/support/v7/a/a;

    move-result-object v0

    const v3, 0x7f0700e3

    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->b(I)V

    .line 242
    :goto_0
    const v0, 0x7f030135

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 243
    const v0, 0x7f0e0175

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->am:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 245
    const v0, 0x7f03010d

    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->am:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 246
    const v0, 0x7f0e043d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ao:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f0e043e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    .line 248
    const v0, 0x7f0e043f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->aq:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0e0443

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->av:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->am:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 252
    const v0, 0x7f0e0445

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->at:Landroid/widget/TextView;

    .line 253
    iget v0, p0, Lcom/xueqiu/android/cube/b/h;->ax:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 254
    const v0, 0x7f0e0444

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ay:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ay:Landroid/widget/TextView;

    const-string v5, "\u73b0\u91d1\u7b49\u8d44\u4ea7"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->am:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 258
    const v0, 0x7f0e0440

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->an:Landroid/view/View;

    .line 259
    const v0, 0x7f0e0441

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ar:Landroid/widget/Button;

    .line 260
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-nez v0, :cond_7

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->an:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ar:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ar:Landroid/widget/Button;

    new-instance v5, Lcom/xueqiu/android/cube/b/h$9;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/cube/b/h$9;-><init>(Lcom/xueqiu/android/cube/b/h;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v0, 0x7f0e043c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->au:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0e0442

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->as:Landroid/widget/Button;

    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->as:Landroid/widget/Button;

    new-instance v4, Lcom/xueqiu/android/cube/b/h$10;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/b/h$10;-><init>(Lcom/xueqiu/android/cube/b/h;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v0, Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/xueqiu/android/cube/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 310
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    iget-boolean v4, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    .line 7327
    iput-boolean v4, v0, Lcom/xueqiu/android/cube/a/d;->d:Z

    .line 311
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->refresh()V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->am:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 315
    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->as:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-eqz v0, :cond_8

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-nez v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ar:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    :cond_3
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-eqz v0, :cond_5

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    new-instance v1, Lcom/xueqiu/android/cube/b/h$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/b/h$11;-><init>(Lcom/xueqiu/android/cube/b/h;)V

    .line 8319
    iput-object v1, v0, Lcom/xueqiu/android/cube/a/d;->c:Lcom/xueqiu/android/cube/a/f;

    .line 356
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->u()V

    .line 357
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->C()V

    .line 359
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-nez v0, :cond_a

    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 9227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 360
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 10227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 361
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 11227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 362
    :goto_3
    array-length v0, v1

    if-ge v2, v0, :cond_9

    .line 363
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 12227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 363
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 240
    :cond_6
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->w()Landroid/support/v7/a/a;

    move-result-object v0

    const v3, 0x7f0702da

    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->b(I)V

    goto/16 :goto_0

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->an:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ar:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 315
    goto :goto_2

    .line 365
    :cond_9
    iget v0, p0, Lcom/xueqiu/android/cube/b/h;->ax:I

    if-ne v0, v6, :cond_b

    .line 366
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/cube/b/h$12;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/cube/b/h$12;-><init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V

    .line 12421
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->a([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 394
    :goto_4
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->H()V

    .line 398
    :cond_a
    return-object v3

    .line 380
    :cond_b
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/cube/b/h$13;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/cube/b/h$13;-><init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V

    .line 12425
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->b([Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_4
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 777
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(IILandroid/content/Intent;)V

    .line 778
    if-ne p2, v1, :cond_0

    if-ne p1, v0, :cond_0

    .line 779
    iput-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->d:Z

    .line 780
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/a/k;->setResult(ILandroid/content/Intent;)V

    .line 781
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 783
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 935
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/app/Activity;)V

    .line 937
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/cube/b/i;

    move-object v1, v0

    iput-object v1, p0, Lcom/xueqiu/android/cube/b/h;->al:Lcom/xueqiu/android/cube/b/i;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    return-void

    .line 939
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnFragmentInteractionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 187
    if-eqz v0, :cond_1

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 188
    const-string v1, "arg_is_create"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 189
    const-string v1, "arg_readonly"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 190
    const-string v1, "extra_page_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/b/h;->ax:I

    .line 191
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-nez v0, :cond_1

    .line 6564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 192
    const-string v1, "arg_cube"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ak:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getViewRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getHoldings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/cube/model/Holding;->setProactive(Z)V

    .line 197
    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h;->ak:Ljava/util/List;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->copy()Lcom/xueqiu/android/cube/model/Holding;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getInitialCapital()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/h;->g:Ljava/lang/Double;

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-eqz v0, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->F()V

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "broadcast_stock"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/b/h$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/b/h$7;-><init>(Lcom/xueqiu/android/cube/b/h;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/b/h;->a(Lrx/j;)V

    .line 216
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 653
    iget v0, p0, Lcom/xueqiu/android/cube/b/h;->ax:I

    if-ne v0, v6, :cond_0

    .line 654
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->a:Z

    if-nez v0, :cond_2

    .line 655
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-eqz v0, :cond_1

    .line 656
    const v0, 0x7f0700c5

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 660
    :goto_0
    invoke-static {v0, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 671
    :cond_0
    :goto_1
    return-void

    .line 658
    :cond_1
    const/4 v0, 0x3

    const v1, 0x7f070127

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    .line 17069
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 17077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 661
    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->L()Z

    move-result v0

    if-nez v0, :cond_3

    .line 662
    const v0, 0x7f0702da

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 663
    invoke-static {v0, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    goto :goto_1

    .line 18069
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 18077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 664
    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getOwnerId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    .line 665
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    const/4 v0, 0x4

    const v1, 0x7f07015f

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 668
    invoke-static {v0, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    goto :goto_1
.end method

.method public final a(Lcom/xueqiu/android/cube/model/Holding;I)V
    .locals 6

    .prologue
    .line 482
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 14227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 482
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 483
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 484
    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/cube/model/Holding;->setWeight(D)V

    .line 485
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->C()V

    .line 486
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->notifyDataSetChanged()V

    .line 490
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 677
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/cube/RebalanceActivity;

    const-string v3, "extra_cube"

    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v0, v2, v3, v4}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 679
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/cube/b/h;->a(Landroid/content/Intent;I)V

    move v0, v1

    .line 770
    :goto_0
    return v0

    .line 683
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 684
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    if-nez v0, :cond_1

    move v0, v2

    .line 685
    goto :goto_0

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 19053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 688
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x57b

    invoke-direct {v2, v3, v5}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v0, v1

    .line 690
    goto :goto_0

    .line 693
    :cond_2
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-nez v0, :cond_6

    .line 694
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->E()Z

    move-result v0

    if-nez v0, :cond_3

    .line 695
    const v0, 0x7f07043a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    move v0, v1

    .line 696
    goto :goto_0

    .line 699
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->D()Z

    move-result v0

    if-nez v0, :cond_4

    .line 700
    const v0, 0x7f07042c

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    move v0, v1

    .line 701
    goto :goto_0

    .line 704
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19811
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->ap:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 19812
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_5

    move v0, v1

    .line 704
    :goto_1
    if-nez v0, :cond_6

    .line 705
    const v0, 0x7f07042e

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    move v0, v1

    .line 706
    goto :goto_0

    :cond_5
    move v0, v2

    .line 19812
    goto :goto_1

    .line 710
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 20227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 710
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 21227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 710
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 711
    :cond_7
    const v0, 0x7f070434

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    move v0, v1

    .line 712
    goto/16 :goto_0

    .line 21796
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 22227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 21796
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 21797
    iget-object v4, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 22339
    iget-object v4, v4, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    .line 21797
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 21798
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getFlag()Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v0

    sget-object v4, Lcom/xueqiu/android/stock/model/StockStatus;->LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    if-eq v0, v4, :cond_9

    move v0, v2

    .line 714
    :goto_2
    if-nez v0, :cond_b

    .line 715
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07044d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0700be

    new-instance v3, Lcom/xueqiu/android/cube/b/h$4;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/cube/b/h$4;-><init>(Lcom/xueqiu/android/cube/b/h;Landroid/view/MenuItem;)V

    .line 716
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070420

    new-instance v3, Lcom/xueqiu/android/cube/b/h$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/cube/b/h$3;-><init>(Lcom/xueqiu/android/cube/b/h;)V

    .line 742
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 749
    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 21802
    goto :goto_2

    .line 751
    :cond_b
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->I()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 752
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    .line 753
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->J()V

    move v0, v1

    .line 754
    goto/16 :goto_0

    .line 756
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v5, :cond_f

    .line 757
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 758
    :cond_d
    const-string v0, "\u8bf7\u6c42token\u5931\u8d25\uff0c\u8bf7\u8fd4\u56de\u91cd\u65b0\u521b\u5efa"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    move v0, v1

    .line 759
    goto/16 :goto_0

    .line 23053
    :cond_e
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 761
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x581

    invoke-direct {v2, v3, v8}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 763
    invoke-direct {p0}, Lcom/xueqiu/android/cube/b/h;->K()V

    move v0, v1

    .line 764
    goto/16 :goto_0

    .line 767
    :cond_f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070421

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07015b

    const/4 v3, 0x0

    .line 768
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v2

    .line 770
    goto/16 :goto_0
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/b/h;->f:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 15227
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 518
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->an:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h;->an:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
