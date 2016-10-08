.class public Lcom/xueqiu/android/stock/model/AHStockQuote;
.super Ljava/lang/Object;
.source "AHStockQuote.java"


# instance fields
.field private currentCn:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currentHkCny:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currentHkHkd:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private nameCn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private nameHk:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private peTtmCn:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private percentCn:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private percentHk:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private priceRatio:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbolCn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbolHk:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private timeCn:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentCn()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->currentCn:Ljava/lang/Double;

    return-object v0
.end method

.method public getCurrentHkCny()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->currentHkCny:Ljava/lang/Double;

    return-object v0
.end method

.method public getCurrentHkHkd()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->currentHkHkd:Ljava/lang/Double;

    return-object v0
.end method

.method public getNameCn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->nameCn:Ljava/lang/String;

    return-object v0
.end method

.method public getNameHk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->nameHk:Ljava/lang/String;

    return-object v0
.end method

.method public getPeTtmCn()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->peTtmCn:Ljava/lang/Double;

    return-object v0
.end method

.method public getPercentCn()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->percentCn:Ljava/lang/Double;

    return-object v0
.end method

.method public getPercentHk()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->percentHk:Ljava/lang/Double;

    return-object v0
.end method

.method public getPriceRatio()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->priceRatio:Ljava/lang/Double;

    return-object v0
.end method

.method public getSymbolCn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->symbolCn:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolHk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->symbolHk:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCn()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->timeCn:J

    return-wide v0
.end method

.method public setCurrentCn(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->currentCn:Ljava/lang/Double;

    .line 90
    return-void
.end method

.method public setCurrentHkCny(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->currentHkCny:Ljava/lang/Double;

    .line 106
    return-void
.end method

.method public setCurrentHkHkd(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->currentHkHkd:Ljava/lang/Double;

    .line 98
    return-void
.end method

.method public setNameCn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->nameCn:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setNameHk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->nameHk:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPeTtmCn(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->peTtmCn:Ljava/lang/Double;

    .line 50
    return-void
.end method

.method public setPercentCn(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->percentCn:Ljava/lang/Double;

    .line 122
    return-void
.end method

.method public setPercentHk(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->percentHk:Ljava/lang/Double;

    .line 114
    return-void
.end method

.method public setPriceRatio(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->priceRatio:Ljava/lang/Double;

    .line 130
    return-void
.end method

.method public setSymbolCn(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->symbolCn:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSymbolHk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->symbolHk:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTimeCn(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/AHStockQuote;->timeCn:J

    .line 42
    return-void
.end method
