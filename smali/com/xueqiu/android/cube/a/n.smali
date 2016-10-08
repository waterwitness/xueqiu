.class public final Lcom/xueqiu/android/cube/a/n;
.super Landroid/widget/BaseExpandableListAdapter;
.source "RbHistoryExpandableAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Rebalancing;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/xueqiu/android/cube/a/n;->b:Z

    .line 40
    iput-boolean v0, p0, Lcom/xueqiu/android/cube/a/n;->c:Z

    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/n;->d:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/n;->e:Landroid/view/LayoutInflater;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getChildId(II)J
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getChildType(II)I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 134
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getChildTypeCount()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x2

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 144
    if-nez p4, :cond_f

    .line 145
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p2, :cond_2

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/n;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f030100

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 147
    new-instance v2, Lcom/xueqiu/android/cube/a/o;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/a/o;-><init>(Lcom/xueqiu/android/cube/a/n;)V

    .line 148
    const v1, 0x7f0e00a1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/cube/a/o;->a:Landroid/widget/TextView;

    .line 149
    const v1, 0x7f0e0404

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/cube/a/o;->b:Landroid/widget/TextView;

    .line 150
    const v1, 0x7f0e0128

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/cube/a/o;->c:Landroid/widget/TextView;

    .line 151
    const v1, 0x7f0e0402

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/xueqiu/android/cube/a/o;->d:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f0e03f6

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/xueqiu/android/cube/a/o;->e:Landroid/widget/LinearLayout;

    .line 153
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez p2, :cond_e

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    :goto_1
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/RebalancingHistory;

    .line 169
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/o;

    .line 170
    iget-object v4, v2, Lcom/xueqiu/android/cube/a/o;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, v2, Lcom/xueqiu/android/cube/a/o;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevWeightAdjusted()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetWeight()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    .line 173
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/a/n;->c:Z

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/o;->c:Landroid/widget/TextView;

    const v4, 0x7f070042

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :goto_2
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/a/n;->c:Z

    if-eqz v0, :cond_a

    .line 190
    iget-object v4, v2, Lcom/xueqiu/android/cube/a/o;->d:Landroid/widget/TextView;

    const-string v5, "\u6210\u4ea4\u4ef7 %s"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrice()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "--.--"

    :goto_3
    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_4
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockLabel()Ljava/util/List;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 197
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/o;->e:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/o;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_d

    .line 199
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/o;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/n;->e:Landroid/view/LayoutInflater;

    const v5, 0x7f030101

    iget-object v6, v2, Lcom/xueqiu/android/cube/a/o;->e:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/o;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 155
    :cond_2
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    const v1, 0x7f020107

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 158
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    .line 159
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    .line 160
    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 161
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 162
    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    const/4 v1, 0x0

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_0

    .line 167
    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_1

    .line 176
    :cond_4
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/o;->c:Landroid/widget/TextView;

    const v4, 0x7f0702ef

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 179
    :cond_5
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v4

    sget-object v5, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_REBALANCING:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-ne v4, v5, :cond_6

    .line 180
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/o;->c:Landroid/widget/TextView;

    const-string v4, "\u5206\u7ea2\u9001\u914d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 181
    :cond_6
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v4

    sget-object v5, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-eq v4, v5, :cond_7

    .line 182
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v4

    sget-object v5, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->USER_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-eq v4, v5, :cond_7

    .line 183
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getCategory()Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    move-result-object v0

    sget-object v4, Lcom/xueqiu/android/cube/model/Rebalancing$Category;->SYS_VOL_RB:Lcom/xueqiu/android/cube/model/Rebalancing$Category;

    if-ne v0, v4, :cond_8

    .line 184
    :cond_7
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/o;->c:Landroid/widget/TextView;

    const-string v4, "%.0f\u80a1 --> %.0f\u80a1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevVolume()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetVolume()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 186
    :cond_8
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/o;->c:Landroid/widget/TextView;

    const-string v4, "%s%% --> %s%%"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevWeightAdjusted()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetWeight()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 190
    :cond_9
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_3

    .line 192
    :cond_a
    iget-object v4, v2, Lcom/xueqiu/android/cube/a/o;->d:Landroid/widget/TextView;

    const-string v5, "\u53c2\u8003\u6210\u4ea4\u4ef7 %s"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrice()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "--.--"

    :goto_6
    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6

    .line 207
    :cond_c
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/o;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    :cond_d
    :goto_7
    return-object v3

    .line 210
    :cond_e
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, "\u8c03\u4ed3\u8bf4\u660e\uff1a%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 212
    const/4 v2, 0x0

    const/4 v4, 0x5

    const/16 v5, 0x11

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v3

    .line 213
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_f
    move-object v3, p4

    goto/16 :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const/4 v1, 0x1

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 78
    :cond_1
    return v1
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroupId(I)J
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    if-nez p3, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03010b

    invoke-virtual {v0, v1, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 120
    const v1, 0x7f0e0130

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1225
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getUpdatedAt()Ljava/util/Date;

    move-result-object v3

    const-string v4, "yyyy\u5e74MM\u6708dd\u65e5  HH:mm:ss"

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1226
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v3

    sget-object v4, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->SUCCESS:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-eq v3, v4, :cond_1

    .line 1227
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1228
    const-string v4, " (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    if-lez p1, :cond_2

    const-string v0, "\u5df2\u53d6\u6d88"

    :goto_0
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1229
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v0, p0, Lcom/xueqiu/android/cube/a/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-lez p1, :cond_3

    const v0, 0x7f0d007c

    :goto_1
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1230
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v5, 0x21

    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 120
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    check-cast p4, Landroid/widget/ExpandableListView;

    .line 122
    invoke-virtual {p4, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 123
    return-object p3

    .line 1228
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1229
    :cond_3
    const v0, 0x7f0d00ba

    goto :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method
