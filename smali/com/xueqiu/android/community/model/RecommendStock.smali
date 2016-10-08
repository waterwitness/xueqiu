.class public Lcom/xueqiu/android/community/model/RecommendStock;
.super Ljava/lang/Object;
.source "RecommendStock.java"


# instance fields
.field private change:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private current:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private exchange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hasExist:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private percentage:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private recommendReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:I
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
.method public getChange()D
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->change:D

    return-wide v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->current:D

    return-wide v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->percentage:D

    return-wide v0
.end method

.method public getRecommendReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->recommendReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStockId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->stockId:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->type:I

    return v0
.end method

.method public isHasExist()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/RecommendStock;->hasExist:Z

    return v0
.end method

.method public setChange(D)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->change:D

    .line 104
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->code:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCurrent(D)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->current:D

    .line 88
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->exchange:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setHasExist(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->hasExist:Z

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPercentage(D)V
    .locals 1

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->percentage:D

    .line 96
    return-void
.end method

.method public setRecommendReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->recommendReason:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setStockId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->stockId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->symbol:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/xueqiu/android/community/model/RecommendStock;->type:I

    .line 64
    return-void
.end method
