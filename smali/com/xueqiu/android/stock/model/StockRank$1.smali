.class final Lcom/xueqiu/android/stock/model/StockRank$1;
.super Ljava/lang/Object;
.source "StockRank.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/model/StockRank;->formatNameAndSortForBuyBack(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/model/OldPortFolio;)I
    .locals 4

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 368
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 371
    sub-int/2addr v0, v1

    .line 375
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 362
    check-cast p1, Lcom/xueqiu/android/stock/model/OldPortFolio;

    check-cast p2, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/stock/model/StockRank$1;->compare(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/model/OldPortFolio;)I

    move-result v0

    return v0
.end method
