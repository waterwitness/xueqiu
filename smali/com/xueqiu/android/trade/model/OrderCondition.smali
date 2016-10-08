.class public Lcom/xueqiu/android/trade/model/OrderCondition;
.super Ljava/lang/Object;
.source "OrderCondition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/OrderCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buyUnit:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enableAmount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enableBalance:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private entrustProp:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;",
            ">;"
        }
    .end annotation
.end field

.field private etype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isMargin:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private marginBuyingPower:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private nonMarginBuyingPower:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private priceStep:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private scode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/xueqiu/android/trade/model/OrderCondition$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/OrderCondition$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/OrderCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableAmount:D

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->buyUnit:D

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->priceStep:D

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->scode:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->etype:Ljava/lang/String;

    .line 53
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableBalance:Ljava/lang/Double;

    .line 54
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->nonMarginBuyingPower:Ljava/lang/Double;

    .line 55
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->marginBuyingPower:Ljava/lang/Double;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->isMargin:Ljava/lang/Boolean;

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getBuyUnit()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->buyUnit:D

    return-wide v0
.end method

.method public getEnableAmount()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableAmount:D

    return-wide v0
.end method

.method public getEnableBalance()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableBalance:Ljava/lang/Double;

    return-object v0
.end method

.method public getEntrustPropList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->entrustProp:Ljava/util/List;

    return-object v0
.end method

.method public getEtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->etype:Ljava/lang/String;

    return-object v0
.end method

.method public getMargin()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->isMargin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMarginBuyingPower()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->marginBuyingPower:Ljava/lang/Double;

    return-object v0
.end method

.method public getNonMarginBuyingPower()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->nonMarginBuyingPower:Ljava/lang/Double;

    return-object v0
.end method

.method public getPriceStep()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->priceStep:D

    return-wide v0
.end method

.method public getScode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->scode:Ljava/lang/String;

    return-object v0
.end method

.method public setBuyUnit(D)V
    .locals 1

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->buyUnit:D

    .line 103
    return-void
.end method

.method public setEnableAmount(D)V
    .locals 1

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableAmount:D

    .line 111
    return-void
.end method

.method public setEnableBalance(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableBalance:Ljava/lang/Double;

    .line 143
    return-void
.end method

.method public setEntrustPropList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->entrustProp:Ljava/util/List;

    .line 119
    return-void
.end method

.method public setEtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->etype:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setMargin(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->isMargin:Ljava/lang/Boolean;

    .line 207
    return-void
.end method

.method public setMarginBuyingPower(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->marginBuyingPower:Ljava/lang/Double;

    .line 191
    return-void
.end method

.method public setNonMarginBuyingPower(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->nonMarginBuyingPower:Ljava/lang/Double;

    .line 199
    return-void
.end method

.method public setPriceStep(D)V
    .locals 1

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->priceStep:D

    .line 95
    return-void
.end method

.method public setScode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->scode:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->buyUnit:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 80
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->priceStep:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->scode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->etype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->enableBalance:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->nonMarginBuyingPower:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->marginBuyingPower:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCondition;->isMargin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
