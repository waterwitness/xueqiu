.class public Lcom/xueqiu/android/cube/model/StockGain;
.super Ljava/lang/Object;
.source "StockGain.java"


# instance fields
.field private avgPosition:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private holdingDuration:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isHolding:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockBenefit:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockSymbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transactionTimes:I
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
.method public getAvgPosition()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/StockGain;->avgPosition:D

    return-wide v0
.end method

.method public getHoldingDuration()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/xueqiu/android/cube/model/StockGain;->holdingDuration:I

    return v0
.end method

.method public getStockBenefit()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/xueqiu/android/cube/model/StockGain;->stockBenefit:D

    return-wide v0
.end method

.method public getStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/StockGain;->stockName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/StockGain;->stockSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionTimes()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/xueqiu/android/cube/model/StockGain;->transactionTimes:I

    return v0
.end method

.method public isHolding()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/model/StockGain;->isHolding:Z

    return v0
.end method

.method public setAvgPosition(D)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/StockGain;->avgPosition:D

    .line 77
    return-void
.end method

.method public setHoldingDuration(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/xueqiu/android/cube/model/StockGain;->holdingDuration:I

    .line 69
    return-void
.end method

.method public setIsHolding(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/model/StockGain;->isHolding:Z

    .line 61
    return-void
.end method

.method public setStockBenefit(D)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/xueqiu/android/cube/model/StockGain;->stockBenefit:D

    .line 53
    return-void
.end method

.method public setStockName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/StockGain;->stockName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStockSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/cube/model/StockGain;->stockSymbol:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTransactionTimes(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/xueqiu/android/cube/model/StockGain;->transactionTimes:I

    .line 85
    return-void
.end method
