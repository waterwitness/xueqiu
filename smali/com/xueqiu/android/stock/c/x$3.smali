.class final Lcom/xueqiu/android/stock/c/x$3;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x;->a(Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/x$3;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 888
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 889
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->p(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/trade/c/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/trade/c/e;->f(Z)V

    .line 892
    :cond_0
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 893
    :goto_0
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 894
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v0

    .line 897
    :cond_1
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 901
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 904
    const/4 v0, 0x4

    if-ne v4, v0, :cond_5

    move v0, v1

    .line 905
    :goto_1
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->v(Lcom/xueqiu/android/stock/c/x;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0e0684

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 906
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 907
    new-instance v0, Lcom/xueqiu/android/stock/c/x$3$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/x$3$1;-><init>(Lcom/xueqiu/android/stock/c/x$3;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0, v2}, Lcom/xueqiu/android/stock/c/x;->b(Lcom/xueqiu/android/stock/c/x;I)I

    .line 915
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/c/x;->c(Lcom/xueqiu/android/stock/c/x;I)I

    .line 917
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->w(Lcom/xueqiu/android/stock/c/x;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 918
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x640

    const/16 v5, 0xa

    invoke-direct {v0, v3, v5}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 919
    const-string v3, "symbol"

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v3, "name"

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v3, "type"

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v3

    .line 922
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 924
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v0

    const-string v3, "stock_tab_selected"

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->x(Lcom/xueqiu/android/stock/c/x;)I

    move-result v5

    invoke-static {v0, v3, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 926
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->y(Lcom/xueqiu/android/stock/c/x;)Z

    .line 929
    if-ne v2, v4, :cond_6

    .line 930
    const/4 v0, 0x5

    if-eq v4, v0, :cond_4

    .line 931
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->z(Lcom/xueqiu/android/stock/c/x;)V

    .line 932
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->h(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Z)V

    .line 938
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v0, v3

    .line 904
    goto/16 :goto_1

    .line 937
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->A(Lcom/xueqiu/android/stock/c/x;)V

    goto :goto_2
.end method
