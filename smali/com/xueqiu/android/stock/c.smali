.class final Lcom/xueqiu/android/stock/c;
.super Landroid/widget/BaseAdapter;
.source "FundNvHistoryActivity.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 126
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->a(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->a(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 111
    if-nez p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030106

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 113
    new-instance v0, Lcom/xueqiu/android/stock/d;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/stock/d;-><init>(Lcom/xueqiu/android/stock/c;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->a(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/HistoryValue;

    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/d;

    .line 117
    iget-object v2, v1, Lcom/xueqiu/android/stock/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, v1, Lcom/xueqiu/android/stock/d;->d:Landroid/widget/TextView;

    const-string v3, "%.4f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/HistoryValue;->getValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->b(Lcom/xueqiu/android/stock/FundNvHistoryActivity;)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 120
    iget-object v2, v1, Lcom/xueqiu/android/stock/d;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    .line 121
    invoke-virtual {v4}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    .line 120
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iget-object v0, v1, Lcom/xueqiu/android/stock/d;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    return-object p2
.end method
