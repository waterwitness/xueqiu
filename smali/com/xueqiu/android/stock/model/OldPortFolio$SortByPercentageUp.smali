.class public Lcom/xueqiu/android/stock/model/OldPortFolio$SortByPercentageUp;
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
    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/model/OldPortFolio;)I
    .locals 4

    .prologue
    .line 1027
    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1030
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getPercentage()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1024
    check-cast p1, Lcom/xueqiu/android/stock/model/OldPortFolio;

    check-cast p2, Lcom/xueqiu/android/stock/model/OldPortFolio;

    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/stock/model/OldPortFolio$SortByPercentageUp;->compare(Lcom/xueqiu/android/stock/model/OldPortFolio;Lcom/xueqiu/android/stock/model/OldPortFolio;)I

    move-result v0

    return v0
.end method
