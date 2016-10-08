.class public Lcom/xueqiu/android/trade/model/TakingPosition;
.super Ljava/lang/Object;
.source "TakingPosition.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/TakingPosition;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_MARKET:I = 0x2

.field public static final TYPE_STOCK:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accumAmount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accumAmount"
    .end annotation
.end field

.field private accumRate:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accumRate"
    .end annotation
.end field

.field private avgPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avgPrice"
    .end annotation
.end field

.field private cost:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dayFloatAmount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dayfloatAmount"
    .end annotation
.end field

.field private dayfloatRate:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dayfloatRate"
    .end annotation
.end field

.field private floatAmount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "floatAmount"
    .end annotation
.end field

.field private floatRate:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "floatRate"
    .end annotation
.end field

.field private marketValue:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "marketValue"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private quotePrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quotePrice"
    .end annotation
.end field

.field private shares:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/xueqiu/android/trade/model/TakingPosition$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TakingPosition$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/TakingPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->name:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->symbol:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->name:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->symbol:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->name:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->symbol:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->shares:D

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->avgPrice:D

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatAmount:D

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatRate:D

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumRate:D

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumAmount:D

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->marketValue:D

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->cost:D

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayFloatAmount:D

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayfloatRate:D

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->quotePrice:D

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/TakingPosition$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/model/TakingPosition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getAccumAmount()D
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumAmount:D

    return-wide v0
.end method

.method public getAccumRate()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumRate:D

    return-wide v0
.end method

.method public getAvgPricel()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->avgPrice:D

    return-wide v0
.end method

.method public getCost()D
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->cost:D

    return-wide v0
.end method

.method public getDayFloatAmount()D
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayFloatAmount:D

    return-wide v0
.end method

.method public getDayfloatRate()D
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayfloatRate:D

    return-wide v0
.end method

.method public getFloatAmount()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatAmount:D

    return-wide v0
.end method

.method public getFloatRate()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatRate:D

    return-wide v0
.end method

.method public getMarketValue()D
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->marketValue:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotePrice()D
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->quotePrice:D

    return-wide v0
.end method

.method public getShares()D
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->shares:D

    return-wide v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public setAccumAmount(D)V
    .locals 1

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumAmount:D

    .line 194
    return-void
.end method

.method public setAccumRate(D)V
    .locals 1

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumRate:D

    .line 186
    return-void
.end method

.method public setAvgPrice(D)V
    .locals 1

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->avgPrice:D

    .line 162
    return-void
.end method

.method public setCost(D)V
    .locals 1

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->cost:D

    .line 210
    return-void
.end method

.method public setDayFloatAmount(D)V
    .locals 1

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayFloatAmount:D

    .line 226
    return-void
.end method

.method public setDayfloatRate(D)V
    .locals 1

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayfloatRate:D

    .line 234
    return-void
.end method

.method public setFloatAmount(D)V
    .locals 1

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatAmount:D

    .line 170
    return-void
.end method

.method public setFloatRate(D)V
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatRate:D

    .line 178
    return-void
.end method

.method public setMarketValue(D)V
    .locals 1

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->marketValue:D

    .line 202
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->name:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setQuotePrice(D)V
    .locals 1

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->quotePrice:D

    .line 218
    return-void
.end method

.method public setShares(D)V
    .locals 1

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->shares:D

    .line 154
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->symbol:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->symbol:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 102
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->shares:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 103
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->avgPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 104
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 105
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->floatRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 106
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 107
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->accumAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 108
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->marketValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 109
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->cost:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayFloatAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 111
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->dayfloatRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 112
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TakingPosition;->quotePrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 113
    return-void
.end method
