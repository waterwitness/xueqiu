.class public Lcom/xueqiu/android/stockchart/view/KlineChartView;
.super Lcom/xueqiu/android/stockchart/view/ChartView;
.source "KlineChartView.java"


# instance fields
.field b:F

.field c:F

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:F

.field public h:F

.field private i:F

.field private j:F

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/xueqiu/android/stockchart/e/h;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;)V

    .line 28
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->i:F

    .line 29
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->i:F

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    .line 31
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->j:F

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    .line 40
    const-string v0, "volume"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->q:Ljava/lang/String;

    .line 41
    const-string v0, "before"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->r:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    .line 45
    iput v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    .line 46
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->w:Z

    .line 47
    iput v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/view/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->i:F

    .line 29
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->i:F

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    .line 31
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->j:F

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    .line 40
    const-string v0, "volume"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->q:Ljava/lang/String;

    .line 41
    const-string v0, "before"

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->r:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    .line 45
    iput v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    .line 46
    iput-boolean v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->w:Z

    .line 47
    iput v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    .line 213
    return-void
.end method

.method private a(Ljava/lang/String;FFLandroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v0

    add-float v1, p2, v0

    .line 792
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    .line 793
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    .line 794
    add-float v2, v1, v4

    .line 796
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 798
    add-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v5

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartWidth()F

    move-result v6

    add-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 799
    sub-float v2, v1, v4

    .line 801
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v6, v0

    move v7, v2

    move v3, v2

    .line 804
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 805
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p4

    move v2, p3

    move v4, p3

    .line 806
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 808
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v6}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(FLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v0

    .line 809
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p3

    .line 810
    invoke-virtual {p4, p1, v7, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 811
    return-void

    :cond_0
    move-object v6, v0

    move v7, v2

    move v3, v2

    goto :goto_0
.end method

.method private b(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 342
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    if-ge v1, v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 8068
    iget-object v4, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 348
    const-string v0, "mm"

    invoke-static {v4, v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 349
    const-string v0, "hh:mm"

    invoke-static {v4, v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    const/16 v6, 0xf

    if-ne p1, v6, :cond_2

    .line 352
    rem-int/2addr v5, p1

    if-nez v5, :cond_1

    const-string v5, "15:00"

    .line 353
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "13:00"

    .line 354
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    const-string v5, "09:30"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "MM-DD"

    invoke-static {v4, v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_0
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 357
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleGap()F

    move-result v0

    iget v4, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v0, v4

    add-float/2addr v2, v0

    .line 345
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_2
    const-string v5, "09:35"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "11:00"

    .line 361
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "14:00"

    .line 362
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 363
    :cond_3
    const-string v5, "09:35"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "MM-DD"

    invoke-static {v4, v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_4
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 372
    :cond_5
    return-object v3
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 560
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 564
    invoke-direct {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowData()V

    .line 565
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 567
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/util/List;)[F

    move-result-object v0

    .line 568
    const/4 v1, 0x0

    aget v9, v0, v1

    .line 569
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getBottomChartHeight()F

    move-result v0

    div-float v10, v0, v9

    .line 571
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 572
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 573
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 575
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 576
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v1

    add-float/2addr v1, v0

    .line 577
    const/4 v6, 0x0

    .line 578
    const/4 v0, 0x0

    move v7, v0

    move-object v3, v6

    :goto_1
    if-ge v7, v8, :cond_3

    .line 579
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/j;

    .line 580
    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/xueqiu/android/stockchart/e/f;

    .line 582
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v2

    .line 9008
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/j;->a:F

    .line 582
    mul-float/2addr v0, v10

    sub-float/2addr v2, v0

    .line 9028
    iget v4, v6, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 10008
    iget v0, v6, Lcom/xueqiu/android/stockchart/e/f;->a:F

    .line 586
    sub-float v0, v4, v0

    .line 588
    const/4 v11, 0x0

    cmpl-float v11, v0, v11

    if-nez v11, :cond_2

    .line 589
    if-eqz v3, :cond_1

    .line 10028
    iget v0, v3, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 590
    sub-float v0, v4, v0

    .line 593
    :cond_1
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 594
    const/high16 v0, 0x3f800000    # 1.0f

    .line 598
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v0

    .line 600
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 602
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v0, v3

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 604
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleGap()F

    move-result v0

    iget v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 578
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v3, v6

    goto :goto_1

    .line 608
    :cond_3
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v1

    .line 609
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 611
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v0

    .line 612
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopBottomGap()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    .line 614
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "big"

    if-ne v3, v4, :cond_4

    .line 615
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 616
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    sub-float/2addr v0, v3

    .line 621
    :goto_2
    float-to-int v3, v9

    invoke-static {v3}, Lcom/xueqiu/android/stockchart/f/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 618
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_2
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->k:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 696
    :goto_0
    return-void

    .line 629
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getShowData()V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    invoke-static {v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/util/List;)[F

    move-result-object v2

    .line 634
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 635
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 637
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 638
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v16, v15, v2

    .line 639
    sub-float v2, v15, v16

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getBottomChartHeight()F

    move-result v3

    div-float v17, v3, v2

    .line 642
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 643
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 647
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v8, v2, v3

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getBottomChartHeight()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v4, v2, v3

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartWidth()F

    move-result v5

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 654
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v2

    add-float v9, v8, v2

    .line 656
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v14, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stockchart/e/e;

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v5

    .line 11012
    iget v6, v2, Lcom/xueqiu/android/stockchart/e/e;->a:F

    .line 658
    sub-float v6, v6, v16

    mul-float v6, v6, v17

    sub-float/2addr v5, v6

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v6

    .line 11020
    iget v8, v2, Lcom/xueqiu/android/stockchart/e/e;->b:F

    .line 659
    sub-float v8, v8, v16

    mul-float v8, v8, v17

    sub-float/2addr v6, v8

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v8

    .line 11028
    iget v10, v2, Lcom/xueqiu/android/stockchart/e/e;->c:F

    .line 660
    sub-float v10, v10, v16

    mul-float v10, v10, v17

    sub-float v10, v8, v10

    .line 12028
    iget v2, v2, Lcom/xueqiu/android/stockchart/e/e;->c:F

    .line 662
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v2

    .line 663
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v8, p1

    move v11, v9

    move v12, v4

    move-object v13, v7

    .line 664
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 666
    if-nez v3, :cond_1

    .line 667
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 668
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 674
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleGap()F

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v2, v5

    add-float/2addr v9, v2

    .line 656
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 670
    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 671
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 677
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_dif_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 680
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xueqiu/android/stockchart/c;->chart_dea_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 685
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(Landroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v2

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v3, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    sub-float/2addr v3, v5

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getBottomChartHeight()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v6

    add-float/2addr v5, v6

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewHeight()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v7

    sub-float/2addr v6, v7

    .line 692
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 693
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 694
    const-string v5, "0.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 756
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 13016
    iget v3, v0, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 13020
    iget v2, v0, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 766
    const/4 v0, 0x1

    move v4, v2

    move v5, v3

    move v3, v1

    move v2, v1

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    if-ge v1, v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 14016
    iget v6, v0, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 769
    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    .line 15016
    iget v5, v0, Lcom/xueqiu/android/stockchart/e/f;->b:F

    move v3, v1

    .line 15020
    :cond_1
    iget v6, v0, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 774
    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 16020
    iget v4, v0, Lcom/xueqiu/android/stockchart/e/f;->c:F

    move v2, v1

    .line 766
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 780
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    div-float/2addr v0, v7

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    iget v6, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v1, v6

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 781
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v1

    iget v3, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float v3, v5, v3

    iget v6, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    .line 783
    iget v3, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    div-float/2addr v3, v7

    iget v6, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    iget v7, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v6, v7

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v3

    .line 784
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v3

    iget v6, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float v6, v4, v6

    iget v7, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    mul-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 786
    iget-object v6, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->o:Lcom/xueqiu/android/stockchart/e/h;

    .line 16087
    iget-wide v6, v6, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 786
    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0, v1, p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    .line 787
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->o:Lcom/xueqiu/android/stockchart/e/h;

    .line 17087
    iget-wide v0, v0, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 787
    float-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getShowData()V
    .locals 3

    .prologue
    .line 553
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    :goto_0
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    if-ge v0, v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/xueqiu/android/stockchart/e/f;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    return-object v0
.end method

.method public final b(F)I
    .locals 3

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v0

    sub-float v0, p1, v0

    .line 815
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    iget v2, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 816
    if-gez v0, :cond_0

    .line 817
    const/4 v0, 0x0

    .line 819
    :cond_0
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    if-lt v0, v1, :cond_1

    .line 820
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    add-int/lit8 v0, v0, -0x1

    .line 823
    :cond_1
    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 860
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setOHLCMAArray(Ljava/util/ArrayList;)V

    .line 861
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setVolumeArray(Ljava/util/ArrayList;)V

    .line 862
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setMacdArray(Ljava/util/ArrayList;)V

    .line 863
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->i:F

    invoke-static {v0, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    .line 864
    return-void
.end method

.method public getCandleCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->s:I

    return v0
.end method

.method public getCandleGap()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    return v0
.end method

.method public getCandleWidth()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    return v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getKlineType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getMacdArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->t:I

    return v0
.end method

.method public getOHLCMAArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginCandleWidth()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->j:F

    return v0
.end method

.method public getShowMACDArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    return-object v0
.end method

.method public getShowOHLCMAArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    return-object v0
.end method

.method public getShowVolumeArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->e:Ljava/util/List;

    return-object v0
.end method

.method public getSplitTimesListByDay()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 320
    const-string v2, ""

    .line 321
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    .line 322
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 324
    const/4 v0, 0x0

    move-object v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    if-ge v1, v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 7068
    iget-object v0, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 327
    const-string v4, "MM-DD"

    invoke-static {v0, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleGap()F

    move-result v0

    iget v3, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 324
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v3, v4

    goto :goto_0

    .line 338
    :cond_1
    return-object v5
.end method

.method public getSplitTimesListByMonth()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 283
    const-string v2, ""

    .line 287
    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 289
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move-object v4, v2

    move v1, v0

    move v2, v0

    .line 291
    :goto_0
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    if-ge v2, v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/f;

    .line 6068
    iget-object v7, v0, Lcom/xueqiu/android/stockchart/e/f;->j:Ljava/lang/String;

    .line 294
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 295
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 297
    if-lez v2, :cond_4

    .line 298
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 299
    add-int/lit8 v0, v1, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getPeriod()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1day"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getPeriod()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1week"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getPeriod()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1month"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    rem-int/lit8 v1, v0, 0x18

    if-nez v1, :cond_2

    .line 305
    :cond_1
    const-string v1, "YYYY-MM"

    invoke-static {v7, v1}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleGap()F

    move-result v1

    iget v4, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v1, v4

    add-float/2addr v3, v1

    .line 291
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v4, v5

    move v1, v0

    goto :goto_0

    .line 316
    :cond_3
    return-object v6

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    return v0
.end method

.method public getStock()Lcom/xueqiu/android/stockchart/e/h;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->o:Lcom/xueqiu/android/stockchart/e/h;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    .prologue
    .line 233
    invoke-super/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/ChartView;->onDraw(Landroid/graphics/Canvas;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a()V

    .line 236
    invoke-virtual/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(Landroid/graphics/Canvas;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->o:Lcom/xueqiu/android/stockchart/e/h;

    if-nez v4, :cond_4

    .line 241
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "big"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d(Landroid/graphics/Canvas;)V

    .line 245
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->q:Ljava/lang/String;

    const-string v5, "volume"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b(Landroid/graphics/Canvas;)V

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->q:Ljava/lang/String;

    const-string v5, "macd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    invoke-direct/range {p0 .. p1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c(Landroid/graphics/Canvas;)V

    .line 252
    :cond_3
    return-void

    .line 1421
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "small"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1422
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->j:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    .line 1423
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->w:Z

    if-nez v4, :cond_6

    .line 1427
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setCandleWidth(F)V

    .line 1430
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v13

    .line 2266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->t:I

    .line 2268
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    if-nez v4, :cond_7

    .line 2269
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->t:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    .line 2270
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->s:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    .line 2273
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->t:I

    if-le v4, v5, :cond_8

    .line 2274
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->t:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    .line 2277
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    if-gez v4, :cond_9

    .line 2278
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    .line 1433
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1434
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    if-ge v4, v5, :cond_a

    .line 1435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1434
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1437
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 1438
    move-object/from16 v0, p0

    iput v14, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->f:I

    .line 1440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-static {v4}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/util/List;)[F

    move-result-object v4

    .line 1441
    const/4 v5, 0x0

    aget v5, v4, v5

    .line 1442
    const/4 v6, 0x1

    aget v4, v4, v6

    .line 1443
    sub-float v6, v5, v4

    .line 1444
    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    .line 1445
    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    .line 1447
    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    .line 1448
    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    .line 1449
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float v4, v5, v4

    .line 1450
    div-float v4, v13, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    .line 1452
    const/4 v4, 0x4

    .line 1454
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "small"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1455
    const/4 v4, 0x2

    .line 1458
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    .line 2723
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v16

    .line 2725
    invoke-static {v5, v12, v4}, Lcom/xueqiu/android/stockchart/f/a;->a(FFI)Ljava/util/ArrayList;

    move-result-object v17

    .line 2726
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 2730
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v9

    .line 2731
    const/high16 v4, 0x41200000    # 10.0f

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(FLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v19

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    sub-float/2addr v4, v5

    .line 2733
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "small"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2734
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    add-float/2addr v4, v5

    .line 2735
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_c
    move v10, v4

    .line 2738
    const/4 v4, 0x0

    move v11, v4

    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_e

    .line 2739
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 2741
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->o:Lcom/xueqiu/android/stockchart/e/h;

    .line 3087
    iget-wide v6, v6, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 2741
    invoke-static {v6, v7, v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v20

    .line 2743
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v6

    double-to-float v4, v4

    sub-float/2addr v4, v12

    mul-float/2addr v4, v15

    sub-float/2addr v6, v4

    .line 2745
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v4

    .line 2746
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v5, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v5

    .line 2748
    sub-float v5, v16, v5

    cmpg-float v5, v6, v5

    if-gez v5, :cond_d

    cmpl-float v4, v6, v4

    if-lez v4, :cond_d

    .line 2749
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getViewWidth()F

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v4, v7

    move-object/from16 v4, p1

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2750
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v10, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2738
    :cond_d
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_2

    .line 3376
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getSplitLinePaint()Landroid/graphics/Paint;

    move-result-object v9

    .line 3377
    const/high16 v4, 0x41200000    # 10.0f

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(FLandroid/graphics/Paint$Align;)Landroid/graphics/Paint;

    move-result-object v15

    .line 3380
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getPeriod()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_f
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 3393
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getSplitTimesListByMonth()Ljava/util/ArrayList;

    move-result-object v4

    move-object v11, v4

    .line 3397
    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 3398
    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x41000000    # 8.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v17, v0

    .line 3400
    const/4 v4, 0x0

    move v12, v4

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_11

    .line 3401
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 3402
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 3403
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v5

    add-float/2addr v5, v4

    .line 3405
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 3407
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v4, v6

    sub-float v6, v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartWidth()F

    move-result v7

    add-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_10

    .line 3408
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v4, v7

    move-object/from16 v4, p1

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3409
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getTopChartHeight()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v6

    add-float/2addr v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v5, v4, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3400
    :cond_10
    add-int v4, v12, v17

    move v12, v4

    goto :goto_5

    .line 3380
    :sswitch_0
    const-string v6, "1minute"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v4, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "5m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v4, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "15m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v4, 0x2

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "30m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v4, 0x3

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "60m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v4, 0x4

    goto/16 :goto_3

    .line 3382
    :pswitch_0
    const/16 v4, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b(I)Ljava/util/ArrayList;

    move-result-object v4

    move-object v11, v4

    .line 3383
    goto/16 :goto_4

    .line 3385
    :pswitch_1
    const/16 v4, 0x3c

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b(I)Ljava/util/ArrayList;

    move-result-object v4

    move-object v11, v4

    .line 3386
    goto/16 :goto_4

    .line 3390
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getSplitTimesListByDay()Ljava/util/ArrayList;

    move-result-object v4

    move-object v11, v4

    .line 3391
    goto/16 :goto_4

    .line 1460
    :cond_11
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1461
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1462
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1463
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1465
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1466
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1467
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1469
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 1470
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 1471
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 1472
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 1474
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 1475
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartStartX()F

    move-result v5

    add-float/2addr v5, v4

    .line 1477
    const/4 v10, 0x0

    .line 1478
    const/4 v4, 0x0

    move v11, v4

    move-object v7, v10

    :goto_6
    if-ge v11, v14, :cond_16

    .line 1479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->m:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/xueqiu/android/stockchart/e/f;

    .line 4008
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->a:F

    .line 1481
    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    mul-float/2addr v4, v6

    sub-float v6, v13, v4

    .line 4016
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->b:F

    .line 1482
    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    mul-float/2addr v4, v8

    sub-float v19, v13, v4

    .line 4020
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->c:F

    .line 1483
    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    mul-float/2addr v4, v8

    sub-float v20, v13, v4

    .line 4028
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 1484
    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    sub-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    mul-float/2addr v4, v8

    sub-float v8, v13, v4

    .line 4036
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->e:F

    .line 1485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    move/from16 v21, v0

    sub-float v4, v4, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    move/from16 v21, v0

    mul-float v4, v4, v21

    sub-float v21, v13, v4

    .line 4044
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->f:F

    .line 1486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    move/from16 v22, v0

    sub-float v4, v4, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    move/from16 v22, v0

    mul-float v4, v4, v22

    sub-float v22, v13, v4

    .line 4052
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->g:F

    .line 1487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    move/from16 v23, v0

    sub-float v4, v4, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    move/from16 v23, v0

    mul-float v4, v4, v23

    sub-float v23, v13, v4

    .line 4060
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->h:F

    .line 1488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->g:F

    move/from16 v24, v0

    sub-float v4, v4, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->h:F

    move/from16 v24, v0

    mul-float v4, v4, v24

    sub-float v24, v13, v4

    .line 5028
    iget v0, v10, Lcom/xueqiu/android/stockchart/e/f;->d:F

    move/from16 v25, v0

    .line 6008
    iget v4, v10, Lcom/xueqiu/android/stockchart/e/f;->a:F

    .line 1492
    sub-float v4, v25, v4

    .line 1493
    const/16 v26, 0x0

    cmpl-float v26, v4, v26

    if-nez v26, :cond_13

    .line 1494
    if-eqz v7, :cond_12

    .line 6028
    iget v4, v7, Lcom/xueqiu/android/stockchart/e/f;->d:F

    .line 1495
    sub-float v4, v25, v4

    .line 1498
    :cond_12
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-nez v7, :cond_13

    .line 1499
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1503
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->a(F)I

    move-result v4

    .line 1504
    if-nez v11, :cond_15

    .line 1505
    move/from16 v0, v21

    invoke-virtual {v15, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1506
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1507
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1508
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1516
    :goto_7
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1518
    cmpl-float v4, v6, v8

    if-nez v4, :cond_14

    .line 1519
    const/high16 v4, 0x3f800000    # 1.0f

    add-float v8, v6, v4

    .line 1523
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v4, p1

    move v7, v5

    .line 1524
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1527
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v4, p1

    move/from16 v6, v19

    move v7, v5

    move/from16 v8, v20

    .line 1528
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1530
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getCandleGap()F

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    add-float/2addr v4, v6

    add-float/2addr v5, v4

    .line 1478
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move-object v7, v10

    goto/16 :goto_6

    .line 1510
    :cond_15
    move/from16 v0, v21

    invoke-virtual {v15, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1511
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1512
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1513
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    .line 1534
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xueqiu/android/stockchart/c;->chart_ma5_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/xueqiu/android/stockchart/c;->chart_ma10_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1536
    invoke-virtual/range {p0 .. p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/xueqiu/android/stockchart/c;->chart_ma20_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 1539
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1540
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1542
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1543
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1545
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1546
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 3380
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1ff3027b -> :sswitch_0
        0x6d8 -> :sswitch_1
        0xbec9 -> :sswitch_2
        0xc5b0 -> :sswitch_3
        0xd0f3 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setCandleWidth(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 104
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartWidth()F

    move-result v0

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->s:I

    .line 105
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->getChartWidth()F

    move-result v0

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->s:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->b:F

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->w:Z

    .line 107
    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    .line 200
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->q:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setKlineType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->r:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setMacdArray(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->k:Ljava/util/ArrayList;

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->k:Ljava/util/ArrayList;

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method public setOHLCMAArray(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    .line 137
    iput v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    .line 151
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 142
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->t:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->t:I

    .line 148
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    .line 149
    iget v1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->v:I

    goto :goto_0
.end method

.method public setShowMACDArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->n:Ljava/util/List;

    .line 76
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->u:I

    .line 192
    return-void
.end method

.method public setStock(Lcom/xueqiu/android/stockchart/e/h;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->o:Lcom/xueqiu/android/stockchart/e/h;

    .line 176
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->p:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setVolumeArray(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->l:Ljava/util/ArrayList;

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->l:Ljava/util/ArrayList;

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/KlineChartView;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method
