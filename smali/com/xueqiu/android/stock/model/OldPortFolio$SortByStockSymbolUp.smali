.class public Lcom/xueqiu/android/stock/model/OldPortFolio$SortByStockSymbolUp;
.super Ljava/lang/Object;
.source "OldPortFolio.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/model/OldPortFolio;)I
    .locals 2

    .prologue
    .line 965
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 962
    check-cast p1, Lcom/xueqiu/android/stock/model/OldPortFolio;

    check-cast p2, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/stock/model/OldPortFolio$SortByStockSymbolUp;->compare(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/model/OldPortFolio;)I

    move-result v0

    return v0
.end method
