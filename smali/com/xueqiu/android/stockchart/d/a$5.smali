.class final Lcom/xueqiu/android/stockchart/d/a$5;
.super Lcom/xueqiu/android/stockchart/c/a;
.source "BaseChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/stockchart/c/a",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/a;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Lcom/xueqiu/android/stockchart/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1695
    const-string v0, "stock"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 1692
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 2700
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2701
    :cond_0
    :goto_0
    return-void

    .line 2704
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 2705
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 3068
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 2706
    const-string v3, "hh:mm"

    invoke-static {v0, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2709
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v4, "chartlist"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    move v0, v1

    .line 2710
    :goto_1
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 2711
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 2712
    new-instance v6, Lcom/xueqiu/android/stockchart/e/f;

    invoke-direct {v6}, Lcom/xueqiu/android/stockchart/e/f;-><init>()V

    .line 2713
    new-instance v7, Lcom/xueqiu/android/stockchart/e/j;

    invoke-direct {v7}, Lcom/xueqiu/android/stockchart/e/j;-><init>()V

    .line 2714
    new-instance v8, Lcom/xueqiu/android/stockchart/e/e;

    invoke-direct {v8}, Lcom/xueqiu/android/stockchart/e/e;-><init>()V

    .line 2716
    const-string v9, "open"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 4012
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->a:F

    .line 2717
    const-string v9, "high"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 4076
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 2718
    const-string v9, "low"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 5024
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 2719
    const-string v9, "close"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 5032
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 2720
    const-string v9, "ma5"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 5040
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->e:F

    .line 2721
    const-string v9, "ma10"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 5048
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->f:F

    .line 2722
    const-string v9, "ma20"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 5056
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->g:F

    .line 2723
    const-string v9, "ma30"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 5064
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->h:F

    .line 2724
    const-string v9, "percent"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 5093
    iput v9, v6, Lcom/xueqiu/android/stockchart/e/f;->i:F

    .line 2725
    const-string v9, "time"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 6072
    iput-object v9, v6, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 2727
    const-string v9, "volume"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/xueqiu/android/stockchart/e/j;->a(Ljava/lang/String;)V

    .line 2729
    const-string v9, "dif"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 7016
    iput v9, v8, Lcom/xueqiu/android/stockchart/e/e;->a:F

    .line 2730
    const-string v9, "dea"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v9

    .line 7024
    iput v9, v8, Lcom/xueqiu/android/stockchart/e/e;->b:F

    .line 2731
    const-string v9, "macd"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    .line 7032
    iput v5, v8, Lcom/xueqiu/android/stockchart/e/e;->c:F

    .line 7068
    iget-object v5, v6, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 2733
    const-string v9, "hh:mm"

    invoke-static {v5, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2734
    if-ne v5, v3, :cond_2

    .line 2735
    iget-object v9, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v9, v9, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v9}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2736
    iget-object v9, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v9, v9, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v9}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getVolumeArray()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2737
    iget-object v9, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v9, v9, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v9}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getMacdArray()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2739
    iget-object v9, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v9, v9, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v9}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    iget-object v9, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v9, v9, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v9}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getVolumeArray()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    iget-object v9, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v9, v9, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v9}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getMacdArray()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2744
    :cond_2
    if-le v5, v3, :cond_3

    .line 2745
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v5, v5, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v5}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getOHLCMAArray()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2746
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v5, v5, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v5}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getVolumeArray()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2747
    iget-object v5, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v5, v5, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v5}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getMacdArray()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2748
    add-int/lit8 v1, v1, 0x1

    .line 2710
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2752
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getEndIndex()I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_5

    .line 2753
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getStartIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setStartIndex(I)V

    .line 2754
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getEndIndex()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setEndIndex(I)V

    .line 2757
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$5;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 7258
    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    goto/16 :goto_0
.end method
