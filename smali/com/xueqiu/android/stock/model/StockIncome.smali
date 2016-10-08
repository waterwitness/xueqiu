.class public Lcom/xueqiu/android/stock/model/StockIncome;
.super Ljava/lang/Object;
.source "StockIncome.java"


# instance fields
.field private avgPrice:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private current:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private floatAmount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private floatRate:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private marketValue:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private shares:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvgPrice()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->avgPrice:F

    return v0
.end method

.method public getCurrent()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->current:F

    return v0
.end method

.method public getFloatAmount()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->floatAmount:F

    return v0
.end method

.method public getFloatRate()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->floatRate:F

    return v0
.end method

.method public getMarketValue()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->marketValue:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShares()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->shares:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockIncome;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgPrice(F)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->avgPrice:F

    .line 79
    return-void
.end method

.method public setCurrent(F)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->current:F

    .line 71
    return-void
.end method

.method public setFloatAmount(F)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->floatAmount:F

    .line 87
    return-void
.end method

.method public setFloatRate(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->floatRate:F

    .line 95
    return-void
.end method

.method public setMarketValue(F)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->marketValue:F

    .line 55
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setShares(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->shares:I

    .line 63
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockIncome;->symbol:Ljava/lang/String;

    .line 47
    return-void
.end method
