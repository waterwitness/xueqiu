.class public Lcom/xueqiu/android/trade/model/MarketIncome;
.super Ljava/lang/Object;
.source "MarketIncome.java"


# instance fields
.field private dayFloatAmount:F
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

.field private sign:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalAmount:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalRate:F
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
.method public getDayFloatAmount()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->dayFloatAmount:F

    return v0
.end method

.method public getFloatAmount()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->floatAmount:F

    return v0
.end method

.method public getFloatRate()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->floatRate:F

    return v0
.end method

.method public getMarketValue()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->marketValue:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->sign:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->sign:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTotalAmount()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->totalAmount:F

    return v0
.end method

.method public getTotalRate()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->totalRate:F

    return v0
.end method

.method public setDayFloatAmount(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->dayFloatAmount:F

    .line 95
    return-void
.end method

.method public setFloatAmount(F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->floatAmount:F

    .line 63
    return-void
.end method

.method public setFloatRate(F)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->floatRate:F

    .line 71
    return-void
.end method

.method public setMarketValue(F)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->marketValue:F

    .line 55
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->sign:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTotalAmount(F)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->totalAmount:F

    .line 79
    return-void
.end method

.method public setTotalRate(F)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/xueqiu/android/trade/model/MarketIncome;->totalRate:F

    .line 87
    return-void
.end method
