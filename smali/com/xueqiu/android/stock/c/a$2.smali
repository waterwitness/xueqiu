.class final Lcom/xueqiu/android/stock/c/a$2;
.super Lcom/xueqiu/android/base/b/p;
.source "BondBuyBackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/a$2;->a:Lcom/xueqiu/android/stock/c/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 82
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/16 v6, 0x2c

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    .line 1087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/OldPortFolio;

    .line 1090
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SZ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1091
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1097
    invoke-static {v1}, Lcom/xueqiu/android/stock/model/StockRank;->formatNameAndSortForBuyBack(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/a$2;->a:Lcom/xueqiu/android/stock/c/a;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/a;->a(Lcom/xueqiu/android/stock/c/a;)Lcom/xueqiu/android/stock/a/u;

    move-result-object v1

    invoke-static {v0, v6}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/stock/c/a;->C()Lcom/xueqiu/android/stock/m;

    move-result-object v3

    const v4, 0x7f070055

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/xueqiu/android/stock/a/u;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 1100
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1101
    invoke-static {v2}, Lcom/xueqiu/android/stock/model/StockRank;->formatNameAndSortForBuyBack(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/a$2;->a:Lcom/xueqiu/android/stock/c/a;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/a;->a(Lcom/xueqiu/android/stock/c/a;)Lcom/xueqiu/android/stock/a/u;

    move-result-object v1

    invoke-static {v0, v6}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/stock/c/a;->C()Lcom/xueqiu/android/stock/m;

    move-result-object v2

    const v3, 0x7f070053

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/xueqiu/android/stock/a/u;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 79
    :cond_3
    return-void
.end method
