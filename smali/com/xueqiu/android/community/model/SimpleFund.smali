.class public Lcom/xueqiu/android/community/model/SimpleFund;
.super Ljava/lang/Object;
.source "SimpleFund.java"


# instance fields
.field private manager:Ljava/lang/String;

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rate:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private strategy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private strutType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private typical:Ljava/lang/String;
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
.method public getManager()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/community/model/SimpleFund;->manager:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/community/model/SimpleFund;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/SimpleFund;->rate:D

    return-wide v0
.end method

.method public getStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/community/model/SimpleFund;->strategy:Ljava/lang/String;

    return-object v0
.end method

.method public getStrutType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/community/model/SimpleFund;->strutType:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/community/model/SimpleFund;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTypical()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/community/model/SimpleFund;->typical:Ljava/lang/String;

    return-object v0
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xueqiu/android/community/model/SimpleFund;->manager:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/model/SimpleFund;->name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setRate(D)V
    .locals 1

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/SimpleFund;->rate:D

    .line 71
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/community/model/SimpleFund;->strategy:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setStrutType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xueqiu/android/community/model/SimpleFund;->strutType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/community/model/SimpleFund;->symbol:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTypical(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/community/model/SimpleFund;->typical:Ljava/lang/String;

    .line 36
    return-void
.end method
