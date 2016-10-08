.class public final Lcom/xueqiu/android/stock/a/b;
.super Lcom/xueqiu/android/common/a/d;
.source "BuyBackRankListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public static a(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/a/c;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/c;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/c;->c:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%.2f%%"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getCurrent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p1, Lcom/xueqiu/android/stock/a/c;->d:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getNetProfit()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 36
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0301be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    invoke-static {p2}, Lcom/xueqiu/android/stock/a/c;->a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/c;

    move-result-object v0

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/c;

    .line 43
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 44
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/a/b;->a(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/a/c;)V

    .line 45
    return-object p2
.end method
