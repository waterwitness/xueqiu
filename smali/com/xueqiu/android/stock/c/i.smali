.class public final Lcom/xueqiu/android/stock/c/i;
.super Lcom/xueqiu/android/common/a/d;
.source "IndustryListItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/IndustryInStock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/xueqiu/android/stock/c/h;

.field private f:Lcom/xueqiu/android/base/util/ar;

.field private g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/c/h;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/i;->e:Lcom/xueqiu/android/stock/c/h;

    .line 132
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/i;->g:Landroid/view/LayoutInflater;

    .line 134
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/i;->f:Lcom/xueqiu/android/base/util/ar;

    .line 135
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 139
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/i;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0301a9

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1172
    new-instance v1, Lcom/xueqiu/android/stock/c/j;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/c/j;-><init>()V

    .line 1173
    const v0, 0x7f0e0213

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/c/j;->a:Landroid/widget/TextView;

    .line 1174
    const v0, 0x7f0e0617

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/c/j;->b:Landroid/widget/TextView;

    .line 1175
    const v0, 0x7f0e0618

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/c/j;->c:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/j;

    .line 146
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/c/i;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/IndustryInStock;

    .line 2152
    iget-object v2, v0, Lcom/xueqiu/android/stock/c/j;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    iget-object v2, v0, Lcom/xueqiu/android/stock/c/j;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getTopStockName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2155
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getPercent()Ljava/lang/Double;

    move-result-object v2

    .line 2157
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/j;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/i;->f:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2158
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2159
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 2160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2162
    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-object p2
.end method
