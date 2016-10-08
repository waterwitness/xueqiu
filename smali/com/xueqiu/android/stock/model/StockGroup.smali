.class public Lcom/xueqiu/android/stock/model/StockGroup;
.super Ljava/lang/Object;
.source "StockGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private createAt:Ljava/util/Date;

.field private grouId:I

.field private name:Ljava/lang/String;

.field private orderId:I

.field private stockCodes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->name:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->stockCodes:[Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getCreateAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->createAt:Ljava/util/Date;

    return-object v0
.end method

.method public getGrouId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->grouId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->orderId:I

    return v0
.end method

.method public getStockCodes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->stockCodes:[Ljava/lang/String;

    return-object v0
.end method

.method public setCreateAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockGroup;->createAt:Ljava/util/Date;

    .line 66
    return-void
.end method

.method public setGrouId(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockGroup;->grouId:I

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockGroup;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOrderId(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/xueqiu/android/stock/model/StockGroup;->orderId:I

    .line 94
    return-void
.end method

.method public setStockCodes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockGroup;->stockCodes:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->grouId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->orderId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->stockCodes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->createAt:Ljava/util/Date;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockGroup;->createAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
