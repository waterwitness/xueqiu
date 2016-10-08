.class public final Lcom/xueqiu/android/stock/a/l;
.super Lcom/xueqiu/android/common/a/d;
.source "OptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/StockOption;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0xb

    iput v0, p0, Lcom/xueqiu/android/stock/a/l;->f:I

    .line 26
    iput p2, p0, Lcom/xueqiu/android/stock/a/l;->f:I

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/l;->e:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const/16 v5, 0x8

    const-wide v10, 0x40c3880000000000L    # 10000.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 37
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/l;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301b4

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v0, Lcom/xueqiu/android/stock/a/m;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/a/m;-><init>()V

    .line 1057
    new-instance v1, Lcom/xueqiu/android/stock/a/m;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/m;-><init>()V

    .line 1058
    const v0, 0x7f0e01e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/m;->a:Landroid/widget/TextView;

    .line 1059
    const v0, 0x7f0e064e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/m;->b:Landroid/widget/TextView;

    .line 1060
    const v0, 0x7f0e064c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/m;->c:Landroid/widget/TextView;

    .line 1061
    const v0, 0x7f0e0617

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/m;->d:Landroid/widget/TextView;

    .line 1062
    const v0, 0x7f0e064d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/m;->e:Landroid/widget/TextView;

    .line 1063
    const v0, 0x7f0e064f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/m;->f:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/m;

    .line 43
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockOption;

    .line 44
    iget v2, p0, Lcom/xueqiu/android/stock/a/l;->f:I

    .line 1068
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/m;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/m;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    invoke-static {v2}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1071
    const/16 v2, 0x14

    if-lt p1, v2, :cond_2

    .line 1072
    iget-object v2, v0, Lcom/xueqiu/android/stock/a/m;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    :goto_0
    iget-object v2, v0, Lcom/xueqiu/android/stock/a/m;->c:Landroid/widget/TextView;

    const-string v3, "%.3f"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getCurrent()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    :goto_1
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getVolume()D

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_4

    .line 1083
    const-string v2, "%.2f\u4e07"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getVolume()D

    move-result-wide v4

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1087
    :goto_2
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/m;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v2

    .line 1089
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getPercent()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v2

    .line 1090
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/m;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    iget-object v3, v0, Lcom/xueqiu/android/stock/a/m;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1092
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getPercent()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 1093
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/m;->d:Landroid/widget/TextView;

    const-string v2, "%+.2f%%"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getPercent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_3
    return-object p2

    .line 1074
    :cond_2
    iget-object v2, v0, Lcom/xueqiu/android/stock/a/m;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1078
    :cond_3
    iget-object v2, v0, Lcom/xueqiu/android/stock/a/m;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1079
    iget-object v2, v0, Lcom/xueqiu/android/stock/a/m;->c:Landroid/widget/TextView;

    const-string v3, "%.4f"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getCurrent()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1085
    :cond_4
    const-string v2, "%.0f"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getVolume()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1095
    :cond_5
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/m;->d:Landroid/widget/TextView;

    const-string v2, "%.2f%%"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockOption;->getPercent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
