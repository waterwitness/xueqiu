.class public Lcom/xueqiu/android/trade/model/TradePosition;
.super Ljava/lang/Object;
.source "TradePosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/TradePosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private costBalance:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private costPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currentAmount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enableAmount:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private exchange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "etype"
    .end annotation
.end field

.field private incomeBalance:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private incomeRate:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lastPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private marketValue:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pos:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private scode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stockAccount:Ljava/lang/String;
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
    .line 103
    new-instance v0, Lcom/xueqiu/android/trade/model/TradePosition$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradePosition$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradePosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->stockAccount:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->scode:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->sname:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->symbol:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->currentAmount:D

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->enableAmount:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->lastPrice:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costPrice:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeBalance:D

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->marketValue:D

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costBalance:D

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeRate:D

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->pos:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->exchange:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/TradePosition$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/model/TradePosition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getCostBalance()D
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costBalance:D

    return-wide v0
.end method

.method public getCostPrice()D
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costPrice:D

    return-wide v0
.end method

.method public getCurrentAmount()D
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->currentAmount:D

    return-wide v0
.end method

.method public getEnableAmount()D
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->enableAmount:D

    return-wide v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomeBalance()D
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeBalance:D

    return-wide v0
.end method

.method public getIncomeRate()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeRate:D

    return-wide v0
.end method

.method public getLastPrice()D
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->lastPrice:D

    return-wide v0
.end method

.method public getMarketValue()D
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->marketValue:D

    return-wide v0
.end method

.method public getPos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->pos:Ljava/lang/String;

    return-object v0
.end method

.method public getScode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->scode:Ljava/lang/String;

    return-object v0
.end method

.method public getSname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->sname:Ljava/lang/String;

    return-object v0
.end method

.method public getStockAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->stockAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public setCostBalance(D)V
    .locals 1

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costBalance:D

    .line 192
    return-void
.end method

.method public setCostPrice(D)V
    .locals 1

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costPrice:D

    .line 168
    return-void
.end method

.method public setCurrentAmount(D)V
    .locals 1

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->currentAmount:D

    .line 144
    return-void
.end method

.method public setEnableAmount(D)V
    .locals 1

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->enableAmount:D

    .line 152
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->exchange:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setIncomeBalance(D)V
    .locals 1

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeBalance:D

    .line 176
    return-void
.end method

.method public setIncomeRate(D)V
    .locals 1

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeRate:D

    .line 200
    return-void
.end method

.method public setLastPrice(D)V
    .locals 1

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->lastPrice:D

    .line 160
    return-void
.end method

.method public setMarketValue(D)V
    .locals 1

    .prologue
    .line 183
    iput-wide p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->marketValue:D

    .line 184
    return-void
.end method

.method public setPos(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->pos:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setScode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->scode:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->sname:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setStockAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->stockAccount:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradePosition;->symbol:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->stockAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->scode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->sname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->currentAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 87
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->enableAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 88
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->lastPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 90
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeBalance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 91
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->marketValue:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 92
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->costBalance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 93
    iget-wide v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->incomeRate:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->pos:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradePosition;->exchange:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return-void
.end method
