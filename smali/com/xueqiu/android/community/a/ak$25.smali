.class final Lcom/xueqiu/android/community/a/ak$25;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/RecommendStock;

.field final synthetic b:Lcom/xueqiu/android/community/model/RecommendCard;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/RecommendStock;Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$25;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$25;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$25;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1748
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$25;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak$25;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 1749
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1751
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$25;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$25;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$25;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendCard;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$25;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak$25;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RecommendCard;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/a/ak$25;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/RecommendCard;->getLocation()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/community/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1754
    :cond_0
    return-void
.end method
