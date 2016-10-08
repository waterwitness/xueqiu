.class public Lcom/xueqiu/android/stock/model/StockSearchKeyword;
.super Ljava/lang/Object;
.source "StockSearchKeyword.java"


# instance fields
.field private code:Ljava/lang/String;

.field private enName:Ljava/lang/String;

.field private exchange:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private searchName:Ljava/lang/String;

.field private symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->symbol:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->code:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->exchange:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->name:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->enName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->searchName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->enName:Ljava/lang/String;

    return-object v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->searchName:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->code:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setEnName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->enName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->exchange:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSearchName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->searchName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockSearchKeyword;->symbol:Ljava/lang/String;

    .line 33
    return-void
.end method
