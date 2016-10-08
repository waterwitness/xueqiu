.class public Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeGainAnalysisActivity.java"


# instance fields
.field private A:D

.field private B:F

.field private C:Z

.field private j:Lcom/xueqiu/android/common/widget/SNBScrollView;

.field private k:Lcom/xueqiu/android/common/widget/RotateImageView;

.field private p:Lcom/xueqiu/chart/view/LineChart;

.field private q:Lcom/xueqiu/chart/view/BarChart;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/LinearLayout;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->C:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;D)D
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->A:D

    return-wide p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Lcom/google/gson/JsonObject;)V
    .locals 2

    .prologue
    .line 9218
    const-string v0, "volatility_name"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9219
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->r:Landroid/widget/TextView;

    const-string v1, "volatility_name"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9221
    :cond_0
    const-string v0, "volatility_rate"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "max_volatility"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9222
    const-string v0, "volatility_rate"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    const-string v1, "max_volatility"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->B:F

    .line 9223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->d(Z)V

    .line 9229
    :goto_0
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9230
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->s:Landroid/widget/TextView;

    const-string v1, "description"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_1
    return-void

    .line 9225
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->d(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Ljava/util/List;)V
    .locals 14

    .prologue
    .line 9245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Z)V

    .line 9306
    :goto_0
    return-void

    .line 9249
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavDailyList;->getList()Ljava/util/List;

    move-result-object v6

    .line 9250
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavDailyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavDailyList;->getList()Ljava/util/List;

    move-result-object v2

    .line 9252
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 9253
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Z)V

    goto :goto_0

    .line 9256
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Z)V

    .line 9259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 9260
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9261
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 9262
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 9263
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 9264
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getPercent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 9267
    :cond_3
    const/4 v2, 0x0

    .line 9268
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 9269
    const/4 v0, 0x1

    move-object v4, v1

    move v1, v2

    move-object v2, v3

    move v3, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v3, v0, :cond_5

    .line 9270
    add-int/lit8 v0, v3, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 9271
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v10

    .line 9272
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getPercent()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v11

    .line 9273
    new-instance v5, Lcom/xueqiu/chart/a/c;

    invoke-direct {v5, v10, v11}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9275
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9276
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v5, v1

    .line 9279
    :goto_3
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->y:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 9280
    new-instance v4, Lcom/xueqiu/chart/a/c;

    invoke-direct {v4, v10, v11}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    .line 9281
    new-instance v12, Lcom/xueqiu/chart/b/j;

    invoke-direct {v12}, Lcom/xueqiu/chart/b/j;-><init>()V

    .line 9282
    sget v13, Lcom/xueqiu/chart/b/k;->a:I

    .line 10028
    iput v13, v12, Lcom/xueqiu/chart/b/j;->f:I

    .line 10036
    const/4 v13, 0x4

    iput v13, v12, Lcom/xueqiu/chart/b/j;->g:I

    .line 9284
    const-string v13, "#eeae00"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    .line 10044
    iput v13, v12, Lcom/xueqiu/chart/b/j;->i:I

    .line 10047
    iput-object v12, v4, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 9287
    :cond_4
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v0

    iget-object v12, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9288
    new-instance v0, Lcom/xueqiu/chart/a/c;

    invoke-direct {v0, v10, v11}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    .line 9289
    new-instance v2, Lcom/xueqiu/chart/b/j;

    invoke-direct {v2}, Lcom/xueqiu/chart/b/j;-><init>()V

    .line 9290
    sget v11, Lcom/xueqiu/chart/b/k;->a:I

    .line 11028
    iput v11, v2, Lcom/xueqiu/chart/b/j;->f:I

    .line 11036
    const/4 v11, 0x4

    iput v11, v2, Lcom/xueqiu/chart/b/j;->g:I

    .line 9292
    const-string v11, "#eeae00"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    .line 11044
    iput v11, v2, Lcom/xueqiu/chart/b/j;->i:I

    .line 11047
    iput-object v2, v0, Lcom/xueqiu/chart/a/c;->b:Lcom/xueqiu/chart/b/j;

    .line 9295
    :goto_4
    new-instance v2, Lcom/xueqiu/chart/a/c;

    invoke-direct {v2, v10, v1}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9269
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    move v1, v5

    goto/16 :goto_2

    .line 9298
    :cond_5
    new-instance v0, Lcom/xueqiu/chart/a/b;

    const-string v1, "\u7ec4\u5408"

    invoke-direct {v0, v1, v8}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 9299
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 11075
    iput-object v4, v0, Lcom/xueqiu/chart/a/b;->e:Lcom/xueqiu/chart/a/c;

    .line 11083
    iput-object v2, v0, Lcom/xueqiu/chart/a/b;->f:Lcom/xueqiu/chart/a/c;

    .line 12067
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/chart/a/b;->d:Z

    .line 9303
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Z)V

    .line 13059
    const/4 v1, 0x1

    iput v1, v0, Lcom/xueqiu/chart/a/b;->c:I

    .line 9309
    new-instance v1, Lcom/xueqiu/chart/a/b;

    const-string v2, "\u6caa\u6df1300"

    invoke-direct {v1, v2, v7}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 14055
    iget v2, v0, Lcom/xueqiu/chart/a/b;->c:I

    .line 14059
    iput v2, v1, Lcom/xueqiu/chart/a/b;->c:I

    .line 9311
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 15051
    iput v2, v0, Lcom/xueqiu/chart/a/b;->b:I

    .line 9312
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 16051
    iput v2, v1, Lcom/xueqiu/chart/a/b;->b:I

    .line 9313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9314
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9315
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9316
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    new-instance v1, Lcom/xueqiu/chart/a/a;

    invoke-direct {v1, v2}, Lcom/xueqiu/chart/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/LineChart;->setData(Lcom/xueqiu/chart/a/a;)V

    .line 9317
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/LineChart;->setReverseDrawing(Z)V

    .line 9318
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/g;->c(I)V

    .line 9319
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/g;->a(I)V

    .line 9320
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 16077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 9320
    sget v1, Lcom/xueqiu/chart/b/k;->b:I

    .line 17028
    iput v1, v0, Lcom/xueqiu/chart/b/j;->f:I

    .line 9321
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 17077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 18052
    const/4 v1, 0x2

    iput v1, v0, Lcom/xueqiu/chart/b/j;->h:I

    .line 9322
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 19049
    const/4 v1, 0x5

    iput v1, v0, Lcom/xueqiu/chart/b/g;->h:I

    .line 9323
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 19077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 9323
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/j;->a(I)V

    .line 9324
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    sget v1, Lcom/xueqiu/chart/b/c;->a:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/g;->d(I)V

    .line 9325
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 20031
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/chart/b/d;->a:Z

    .line 9326
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 20035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 9326
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9327
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 21035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 9327
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9328
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 22035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 9328
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ea8f5c3    # 0.33f

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9329
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 22047
    const/4 v1, 0x3

    iput v1, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 9330
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/b/e;->d()V

    .line 9331
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 9332
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    sget v1, Lcom/xueqiu/chart/b/c;->c:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->d(I)V

    .line 9333
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 23047
    const/4 v1, 0x3

    iput v1, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 9334
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 23063
    const v1, 0x3d75c28f    # 0.06f

    iput v1, v0, Lcom/xueqiu/chart/b/d;->d:F

    .line 9335
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 23071
    const v1, 0x3df5c28f    # 0.12f

    iput v1, v0, Lcom/xueqiu/chart/b/d;->e:F

    .line 9336
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 9337
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->b(I)V

    .line 9338
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->A:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/chart/view/LineChart;->setMaxDraw(D)V

    .line 9339
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V

    .line 24046
    iput-object v1, v0, Lcom/xueqiu/chart/b/e;->h:Lcom/xueqiu/chart/c/d;

    .line 9345
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/LineChart;->postInvalidate()V

    goto/16 :goto_0

    .line 9305
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Z)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    goto/16 :goto_4

    :cond_8
    move v5, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->C:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Lcom/xueqiu/android/common/widget/RotateImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->k:Lcom/xueqiu/android/common/widget/RotateImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Ljava/util/List;)V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 24350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_0

    .line 24351
    invoke-direct {p0, v10}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->c(Z)V

    .line 24359
    :goto_0
    return-void

    .line 24355
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavMonthlyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavMonthlyList;->getList()Ljava/util/List;

    move-result-object v3

    .line 24356
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavMonthlyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavMonthlyList;->getList()Ljava/util/List;

    move-result-object v4

    .line 24357
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 24358
    :cond_1
    invoke-direct {p0, v10}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->c(Z)V

    goto :goto_0

    .line 24361
    :cond_2
    invoke-direct {p0, v2}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->c(Z)V

    .line 24365
    const v0, 0x7f0e03b2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 24366
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x6

    if-gt v1, v5, :cond_3

    .line 24367
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24371
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24372
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 24375
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 24376
    :goto_2
    if-ge v2, v1, :cond_5

    .line 24377
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    mul-float v7, v0, v12

    .line 24378
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    mul-float v8, v0, v12

    .line 24379
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 24380
    new-instance v9, Lcom/xueqiu/chart/a/c;

    invoke-direct {v9, v0, v7}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24381
    new-instance v7, Lcom/xueqiu/chart/a/c;

    invoke-direct {v7, v0, v8}, Lcom/xueqiu/chart/a/c;-><init>(Ljava/lang/String;F)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24376
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 24369
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 24375
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 24383
    :cond_5
    new-instance v1, Lcom/xueqiu/chart/a/b;

    const-string v0, "\u7ec4\u5408"

    invoke-direct {v1, v0, v5}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 24384
    new-instance v2, Lcom/xueqiu/chart/a/b;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/NavMonthlyList;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/NavMonthlyList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v6}, Lcom/xueqiu/chart/a/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 24385
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 25051
    iput v0, v1, Lcom/xueqiu/chart/a/b;->b:I

    .line 24386
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0061

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 26051
    iput v0, v2, Lcom/xueqiu/chart/a/b;->b:I

    .line 24387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24388
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24389
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24390
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    new-instance v3, Lcom/xueqiu/chart/a/a;

    invoke-direct {v3, v0}, Lcom/xueqiu/chart/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/xueqiu/chart/view/BarChart;->setData(Lcom/xueqiu/chart/a/a;)V

    .line 24391
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0, v10}, Lcom/xueqiu/chart/view/BarChart;->setReverseDrawing(Z)V

    .line 24392
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/b/g;->c(I)V

    .line 24393
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/b/g;->a(I)V

    .line 24394
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 26077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 24394
    sget v2, Lcom/xueqiu/chart/b/k;->b:I

    .line 27028
    iput v2, v0, Lcom/xueqiu/chart/b/j;->f:I

    .line 24395
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 27077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 28052
    iput v11, v0, Lcom/xueqiu/chart/b/j;->h:I

    .line 24396
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 29049
    iput v13, v0, Lcom/xueqiu/chart/b/g;->h:I

    .line 24397
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getLegend()Lcom/xueqiu/chart/b/g;

    move-result-object v0

    .line 29077
    iget-object v0, v0, Lcom/xueqiu/chart/b/g;->j:Lcom/xueqiu/chart/b/j;

    .line 24397
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/b/j;->a(I)V

    .line 24398
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 30031
    iput-boolean v10, v0, Lcom/xueqiu/chart/b/d;->a:Z

    .line 24399
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 30035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 24399
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24400
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 31035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 24400
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24401
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 32035
    iget-object v0, v0, Lcom/xueqiu/chart/b/d;->b:Landroid/graphics/Paint;

    .line 24401
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24402
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 32047
    const/4 v2, 0x3

    iput v2, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 24403
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/chart/b/e;->d()V

    .line 24404
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 24405
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    sget v2, Lcom/xueqiu/chart/b/c;->c:I

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/b/e;->d(I)V

    .line 24406
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 33039
    iget-object v1, v1, Lcom/xueqiu/chart/a/b;->g:Ljava/util/List;

    .line 24406
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 33047
    iput v1, v0, Lcom/xueqiu/chart/b/d;->c:I

    .line 24407
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 33063
    const v1, 0x3d75c28f    # 0.06f

    iput v1, v0, Lcom/xueqiu/chart/b/d;->d:F

    .line 24408
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getXGrid()Lcom/xueqiu/chart/b/d;

    move-result-object v0

    .line 33071
    const v1, 0x3df5c28f    # 0.12f

    iput v1, v0, Lcom/xueqiu/chart/b/d;->e:F

    .line 24409
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/b/e;->c(I)V

    .line 24410
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getXLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/xueqiu/chart/b/e;->b(I)V

    .line 24411
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/BarChart;->setBarSpace(F)V

    .line 24412
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/BarChart;->setGroupSpace(F)V

    .line 24413
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/BarChart;->setBarWidth(F)V

    .line 24414
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->getYLabel()Lcom/xueqiu/chart/b/e;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$6;-><init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V

    .line 34046
    iput-object v1, v0, Lcom/xueqiu/chart/b/e;->h:Lcom/xueqiu/chart/c/d;

    .line 24420
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0}, Lcom/xueqiu/chart/view/BarChart;->postInvalidate()V

    goto/16 :goto_0
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/view/LineChart;->setVisibility(I)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/LineChart;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 8235
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3d4c0000    # -90.0f

    iget v2, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->B:F

    const/high16 v4, 0x3f000000    # 0.5f

    const v6, 0x3f63d70a    # 0.89f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 8236
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 8237
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 8238
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    .line 8239
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->k:Lcom/xueqiu/android/common/widget/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    return-void
.end method

.method private c(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0, v2}, Lcom/xueqiu/chart/view/BarChart;->setVisibility(I)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    invoke-virtual {v0, v1}, Lcom/xueqiu/chart/view/BarChart;->setVisibility(I)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->C:Z

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->d(Z)V

    return-void
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Z)V

    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->c(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v0, "\u6536\u76ca\u5206\u6790"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    const v0, 0x7f0300f6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cube_symbol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->x:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 3267
    :cond_0
    iput-boolean v4, p0, Lcom/xueqiu/android/common/b;->m:Z

    .line 4093
    const v0, 0x7f0e015e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBScrollView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/SNBScrollView;

    .line 4094
    const v0, 0x7f0e03b7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->k:Lcom/xueqiu/android/common/widget/RotateImageView;

    .line 4095
    const v0, 0x7f0e03b4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/view/LineChart;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->p:Lcom/xueqiu/chart/view/LineChart;

    .line 4096
    const v0, 0x7f0e03b1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/chart/view/BarChart;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->q:Lcom/xueqiu/chart/view/BarChart;

    .line 4097
    const v0, 0x7f0e03b8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->r:Landroid/widget/TextView;

    .line 4098
    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->s:Landroid/widget/TextView;

    .line 4099
    const v0, 0x7f0e03b3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->t:Landroid/widget/TextView;

    .line 4100
    const v0, 0x7f0e03b5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->u:Landroid/widget/TextView;

    .line 4101
    const v0, 0x7f0e03b6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->w:Landroid/widget/LinearLayout;

    .line 4102
    const v0, 0x7f0e03ba

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->v:Landroid/widget/TextView;

    .line 4104
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 4107
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->j:Lcom/xueqiu/android/common/widget/SNBScrollView;

    new-instance v2, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;I)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/SNBScrollView;->setScrollChangedListener(Lcom/xueqiu/android/common/widget/af;)V

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4125
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->x:Ljava/lang/String;

    const-string v2, "volatility"

    new-instance v3, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$2;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4140
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->x:Ljava/lang/String;

    const-string v2, "max_draw"

    new-instance v3, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 7180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4172
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->x:Ljava/lang/String;

    new-instance v2, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$4;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 7454
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/c;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0
.end method
