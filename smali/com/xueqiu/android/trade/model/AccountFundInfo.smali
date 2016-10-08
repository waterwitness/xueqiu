.class public Lcom/xueqiu/android/trade/model/AccountFundInfo;
.super Ljava/lang/Object;
.source "AccountFundInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/AccountFundInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private assetBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private availableFund:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private beginBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private buyFrozenBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private buyPower:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cashBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cur:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currentBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dayIncomeBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dayIncomeRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enableBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private equityValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private excessLiquidity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fetchBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private foregiftBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private frozenBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fundBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private initMargin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private maintMargin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private marginBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private marginBuyingPower:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private marketValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private moneyLockedByPendingOrders:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mortgageBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private netLiquidation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private nonMarginBuyingPower:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sma:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tipInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tipType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalIncomeBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private totalIncomeRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private unfrozenBalance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private unrealizedPnl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private unrealizedPnlRate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/xueqiu/android/trade/model/AccountFundInfo$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/AccountFundInfo$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->cur:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->currentBalance:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->beginBalance:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->enableBalance:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->foregiftBalance:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->mortgageBalance:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->frozenBalance:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unfrozenBalance:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fetchBalance:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->buyFrozenBalance:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marketValue:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->assetBalance:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fundBalance:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnl:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnlRate:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipType:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipInfo:Ljava/lang/String;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/AccountFundInfo$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/model/AccountFundInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getAssetBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->assetBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableFund()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->availableFund:Ljava/lang/String;

    return-object v0
.end method

.method public getBeginBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->beginBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyFrozenBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->buyFrozenBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->buyPower:Ljava/lang/String;

    return-object v0
.end method

.method public getCashBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->cashBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getCur()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->cur:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->currentBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getDayIncomeBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->dayIncomeBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getDayIncomeRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->dayIncomeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->enableBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getEquityValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->equityValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExcessLiquidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->excessLiquidity:Ljava/lang/String;

    return-object v0
.end method

.method public getFetchBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fetchBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getForegiftBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->foregiftBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getFrozenBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->frozenBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getFundBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fundBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getInitMargin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->initMargin:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintMargin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->maintMargin:Ljava/lang/String;

    return-object v0
.end method

.method public getMarginBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marginBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getMarginBuyingPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marginBuyingPower:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marketValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMoneyLockedByPendingOrders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->moneyLockedByPendingOrders:Ljava/lang/String;

    return-object v0
.end method

.method public getMortgageBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->mortgageBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getNetLiquidation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->netLiquidation:Ljava/lang/String;

    return-object v0
.end method

.method public getNonMarginBuyingPower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->nonMarginBuyingPower:Ljava/lang/String;

    return-object v0
.end method

.method public getSma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->sma:Ljava/lang/String;

    return-object v0
.end method

.method public getTipInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTipType()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipType:I

    return v0
.end method

.method public getTotalIncomeBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->totalIncomeBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalIncomeRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->totalIncomeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getUnfrozenBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unfrozenBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getUnrealizedPnl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnl:Ljava/lang/String;

    return-object v0
.end method

.method public getUnrealizedPnlRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnlRate:Ljava/lang/String;

    return-object v0
.end method

.method public hasTip()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 389
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/AccountFundInfo;->getTipType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAssetBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->assetBalance:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setAvailableFund(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->availableFund:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setBeginBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->beginBalance:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setBuyFrozenBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->buyFrozenBalance:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setBuyPower(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->buyPower:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setCashBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->cashBalance:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setCur(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->cur:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setCurrentBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->currentBalance:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setDayIncomeBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->dayIncomeBalance:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setDayIncomeRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->dayIncomeRate:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setEnableBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->enableBalance:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setEquityValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->equityValue:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setExcessLiquidity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->excessLiquidity:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setFetchBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fetchBalance:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setForegiftBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->foregiftBalance:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setFrozenBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->frozenBalance:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setFundBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fundBalance:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setInitMargin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->initMargin:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMaintMargin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->maintMargin:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setMarginBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marginBalance:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setMarginBuyingPower(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marginBuyingPower:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setMarketValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marketValue:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setMoneyLockedByPendingOrders(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->moneyLockedByPendingOrders:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setMortgageBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->mortgageBalance:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setNetLiquidation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->netLiquidation:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setNonMarginBuyingPower(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->nonMarginBuyingPower:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setSma(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->sma:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setTipInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipInfo:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setTipType(I)V
    .locals 0

    .prologue
    .line 385
    iput p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipType:I

    .line 386
    return-void
.end method

.method public setTotalIncomeBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->totalIncomeBalance:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setTotalIncomeRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->totalIncomeRate:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public setUnfrozenBalance(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unfrozenBalance:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setUnrealizedPnl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnl:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setUnrealizedPnlRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnlRate:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->cur:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->currentBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->beginBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->enableBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->foregiftBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->mortgageBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->frozenBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unfrozenBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fetchBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->buyFrozenBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->marketValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->assetBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->fundBalance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->unrealizedPnlRate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/AccountFundInfo;->tipInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return-void
.end method
