.class public final Lcom/xueqiu/android/common/search/b;
.super Lcom/xueqiu/android/common/a/d;
.source "StockSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/b;->e:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030207

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 49
    new-instance v1, Lcom/xueqiu/android/common/search/c;

    invoke-direct {v1, p0, v4}, Lcom/xueqiu/android/common/search/c;-><init>(Lcom/xueqiu/android/common/search/b;B)V

    .line 50
    const v0, 0x7f0e01e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/search/c;->a:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0e06c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/common/search/c;->c:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0e064e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/search/c;->b:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/search/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/search/c;

    .line 57
    iget-object v2, v1, Lcom/xueqiu/android/common/search/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/as;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, v1, Lcom/xueqiu/android/common/search/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v2, v1, Lcom/xueqiu/android/common/search/c;->c:Landroid/widget/ImageView;

    const v3, 0x7f020422

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/xueqiu/android/common/search/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object p2

    .line 62
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, v1, Lcom/xueqiu/android/common/search/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v2, v1, Lcom/xueqiu/android/common/search/c;->c:Landroid/widget/ImageView;

    const v3, 0x7f020420

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v2, v1, Lcom/xueqiu/android/common/search/c;->c:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
