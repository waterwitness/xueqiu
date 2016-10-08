.class final Lcom/xueqiu/android/stock/e$2;
.super Lcom/xueqiu/android/base/b/p;
.source "FundRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/stock/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/e;Lcom/xueqiu/android/base/b/q;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xueqiu/android/stock/e$2;->b:Lcom/xueqiu/android/stock/e;

    iput-object p3, p0, Lcom/xueqiu/android/stock/e$2;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 118
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 115
    check-cast p1, Ljava/util/Map;

    .line 1123
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/FundType;

    .line 1124
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/FundType;->getType()I

    move-result v4

    .line 1126
    const/16 v1, 0xc

    if-ne v4, v1, :cond_0

    .line 1127
    const/16 v1, 0x20

    move v2, v1

    .line 1136
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/e$2;->b:Lcom/xueqiu/android/stock/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/e;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/xueqiu/android/stock/e$2;->b:Lcom/xueqiu/android/stock/e;

    invoke-static {v5}, Lcom/xueqiu/android/stock/e;->a(Lcom/xueqiu/android/stock/e;)I

    move-result v5

    invoke-static {v2, v1, v4, v5}, Lcom/xueqiu/android/stock/e;->a(ILandroid/content/Context;II)Lcom/xueqiu/android/stock/f;

    move-result-object v5

    .line 1137
    iget-object v1, p0, Lcom/xueqiu/android/stock/e$2;->b:Lcom/xueqiu/android/stock/e;

    invoke-static {v1}, Lcom/xueqiu/android/stock/e;->d(Lcom/xueqiu/android/stock/e;)Lcom/xueqiu/android/stock/a/u;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/FundType;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v5, v0}, Lcom/xueqiu/android/stock/a/u;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto :goto_0

    .line 1128
    :cond_0
    const/16 v1, 0xd

    if-ne v4, v1, :cond_1

    .line 1129
    const/16 v1, 0x21

    move v2, v1

    goto :goto_1

    .line 1130
    :cond_1
    const/16 v1, 0xb

    if-ne v4, v1, :cond_2

    .line 1131
    const/16 v1, 0x22

    move v2, v1

    goto :goto_1

    .line 1133
    :cond_2
    const/16 v1, 0x1f

    move v2, v1

    goto :goto_1

    .line 1140
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$2;->b:Lcom/xueqiu/android/stock/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/e;->z()V

    .line 1142
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$2;->b:Lcom/xueqiu/android/stock/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/e;->b(Lcom/xueqiu/android/stock/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1143
    iget-object v0, p0, Lcom/xueqiu/android/stock/e$2;->b:Lcom/xueqiu/android/stock/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/e;->c(Lcom/xueqiu/android/stock/e;)V

    .line 115
    :cond_4
    return-void
.end method
