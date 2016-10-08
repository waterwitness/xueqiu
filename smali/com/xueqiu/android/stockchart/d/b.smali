.class public final Lcom/xueqiu/android/stockchart/d/b;
.super Lcom/xueqiu/android/stockchart/d/a;
.source "BigChartFragment.java"


# instance fields
.field private aN:Landroid/widget/TextView;

.field private aO:Landroid/widget/TextView;

.field private aP:Landroid/widget/TextView;

.field private aQ:Landroid/widget/TextView;

.field private aR:Landroid/widget/TextView;

.field private aS:Landroid/widget/TextView;

.field private aT:Landroid/widget/TextView;

.field private aU:Landroid/widget/TextView;

.field private aV:Landroid/widget/TextView;

.field private aW:Landroid/widget/ImageView;

.field private aX:I

.field private aY:I

.field private aZ:I

.field private ba:I

.field private bb:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/stockchart/d/a;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/b;->bb:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/d/b;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/stockchart/d/b;->aX:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/d/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aV:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Lcom/xueqiu/android/stockchart/e/h;)V
    .locals 8

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aN:Landroid/widget/TextView;

    .line 4022
    iget-object v1, p1, Lcom/xueqiu/android/stockchart/e/h;->a:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4055
    iget v2, p1, Lcom/xueqiu/android/stockchart/e/h;->e:F

    .line 4063
    iget v1, p1, Lcom/xueqiu/android/stockchart/e/h;->f:F

    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aA:Lcom/xueqiu/android/stockchart/view/StockChartView;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/StockChartView;->a(F)I

    move-result v3

    .line 231
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 233
    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    float-to-double v6, v2

    invoke-static {v0, v1, v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aO:Landroid/widget/TextView;

    const-string v2, "%s(%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v4, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aO:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aP:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6210\u4ea4\u91cf\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5071
    iget-wide v2, p1, Lcom/xueqiu/android/stockchart/e/h;->g:D

    .line 242
    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->b(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aQ:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65f6\u95f4\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5079
    iget-object v2, p1, Lcom/xueqiu/android/stockchart/e/h;->h:Ljava/lang/String;

    .line 243
    const-string v3, "hh:mm"

    invoke-static {v2, v3}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void

    .line 4087
    :cond_1
    iget-wide v0, p1, Lcom/xueqiu/android/stockchart/e/h;->i:D

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/stockchart/d/b;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/xueqiu/android/stockchart/d/b;->bb:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/stockchart/d/b;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/stockchart/d/b;->aY:I

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/stockchart/d/b;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aU:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stockchart/d/b;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/stockchart/d/b;->aZ:I

    return p1
.end method

.method static synthetic c(Lcom/xueqiu/android/stockchart/d/b;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/b;->bb:Z

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stockchart/d/b;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aY:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stockchart/d/b;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/xueqiu/android/stockchart/d/b;->ba:I

    return p1
.end method

.method static synthetic e(Lcom/xueqiu/android/stockchart/d/b;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aX:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stockchart/d/b;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ba:I

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stockchart/d/b;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aZ:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/d/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->kline_type_before:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aR:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->kline_type_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aS:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->kline_type_after:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aT:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aS:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    .line 113
    :goto_0
    return-object v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aR:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aS:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aT:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->kline_indicator_volume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aU:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->kline_indicator_macd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aV:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->au:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aU:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aV:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->chart_stock_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aN:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->chart_stock_price:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aO:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->chart_stock_volume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aP:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->chart_stock_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aQ:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    sget v1, Lcom/xueqiu/android/stockchart/e;->big_chart_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aW:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aW:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/stockchart/d/b$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stockchart/d/b$1;-><init>(Lcom/xueqiu/android/stockchart/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stockchart/d/b;->a(Lcom/xueqiu/android/stockchart/e/h;)V

    .line 1154
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    new-instance v1, Lcom/xueqiu/android/stockchart/d/b$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stockchart/d/b$3;-><init>(Lcom/xueqiu/android/stockchart/d/b;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setOnScaleEventListener(Lcom/xueqiu/android/stockchart/a/d;)V

    .line 2117
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aF:Lcom/xueqiu/android/stockchart/view/EventView;

    new-instance v1, Lcom/xueqiu/android/stockchart/d/b$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stockchart/d/b$2;-><init>(Lcom/xueqiu/android/stockchart/d/b;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/EventView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aq:Ljava/lang/String;

    const-string v1, "1d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 3046
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/h;->c:I

    .line 104
    invoke-static {v0}, Lcom/xueqiu/android/stockchart/f/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/b;->w()V

    .line 112
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stockchart/d/b;->f(Z)V

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->f:Landroid/view/View;

    goto/16 :goto_0

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(FJ)V
    .locals 6

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/stockchart/d/a;->a(FJ)V

    .line 313
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/e/h;->c(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 7083
    iput-object v1, v0, Lcom/xueqiu/android/stockchart/e/h;->h:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 8038
    iget v0, v0, Lcom/xueqiu/android/stockchart/e/h;->d:F

    .line 315
    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 9038
    iget v1, v1, Lcom/xueqiu/android/stockchart/e/h;->d:F

    .line 315
    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 316
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/e/h;->d(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->ao:Lcom/xueqiu/android/stockchart/e/h;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stockchart/d/b;->a(Lcom/xueqiu/android/stockchart/e/h;)V

    .line 319
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->a(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-super {p0, p1}, Lcom/xueqiu/android/stockchart/d/a;->onClick(Landroid/view/View;)V

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "macd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->au:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aU:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 257
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aV:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 260
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 261
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aU:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setIndicator(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    .line 5258
    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->invalidate()V

    .line 269
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aE:Lcom/xueqiu/android/stockchart/view/PressInfoView;

    .line 6162
    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/view/PressInfoView;->invalidate()V

    .line 271
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->al:Lcom/xueqiu/android/stockchart/b/a;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->al:Lcom/xueqiu/android/stockchart/b/a;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/b;->as:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xueqiu/android/stockchart/b/a;->a(Ljava/lang/String;)V

    .line 276
    :cond_1
    const-string v1, "before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 277
    :cond_2
    iput-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->at:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aR:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 280
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aS:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 281
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aT:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 284
    const-string v1, "before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aR:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 288
    :cond_3
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aS:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 293
    :cond_4
    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aT:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->setKlineType(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->aB:Lcom/xueqiu/android/stockchart/view/KlineChartView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/KlineChartView;->c()V

    .line 300
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stockchart/d/b;->f(Z)V

    .line 302
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->al:Lcom/xueqiu/android/stockchart/b/a;

    if-eqz v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/b;->al:Lcom/xueqiu/android/stockchart/b/a;

    invoke-interface {v0}, Lcom/xueqiu/android/stockchart/b/a;->a()V

    .line 306
    :cond_6
    invoke-virtual {p0}, Lcom/xueqiu/android/stockchart/d/b;->u()V

    .line 307
    return-void

    .line 264
    :cond_7
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/b;->aV:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/xueqiu/android/stockchart/d/a;->q()V

    .line 148
    return-void
.end method
