.class public Lcom/xueqiu/android/stock/model/PortfolioStock;
.super Ljava/lang/Object;
.source "PortfolioStock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/PortfolioStock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buyPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buyPrice"
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createAt"
    .end annotation
.end field

.field private exchange:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isNotice:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNotice"
    .end annotation
.end field

.field private portfolioIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "portfolioIds"
    .end annotation
.end field

.field private sellPrice:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sellPrice"
    .end annotation
.end field

.field private stockName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stockName"
    .end annotation
.end field

.field private targetPercent:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "targetPercent"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/xueqiu/android/stock/model/PortfolioStock$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/PortfolioStock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->sellPrice:D

    .line 35
    iput-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->buyPrice:D

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->stockName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->comment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->portfolioIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/stock/model/PortfolioStock;D)D
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->sellPrice:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/stock/model/PortfolioStock;D)D
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->buyPrice:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->createAt:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/stock/model/PortfolioStock;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->isNotice:I

    return p1
.end method

.method static synthetic access$802(Lcom/xueqiu/android/stock/model/PortfolioStock;D)D
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->targetPercent:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/xueqiu/android/stock/model/PortfolioStock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->exchange:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getBuyPrice()D
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->buyPrice:D

    return-wide v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->createAt:Ljava/util/Date;

    return-object v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNotice()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->isNotice:I

    return v0
.end method

.method public getPortfolioIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->portfolioIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSellPrice()D
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->sellPrice:D

    return-wide v0
.end method

.method public getStockName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->stockName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPercent()D
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->targetPercent:D

    return-wide v0
.end method

.method public setBuyPrice(D)V
    .locals 1

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->buyPrice:D

    .line 142
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->code:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->comment:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCreateAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->createAt:Ljava/util/Date;

    .line 150
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->exchange:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setIsNotice(I)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->isNotice:I

    .line 158
    return-void
.end method

.method public setPortfolioIds(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->portfolioIds:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSellPrice(D)V
    .locals 1

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->sellPrice:D

    .line 134
    return-void
.end method

.method public setStockName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->stockName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTargetPercent(D)V
    .locals 1

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->targetPercent:D

    .line 166
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->stockName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->portfolioIds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->sellPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 66
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->buyPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->createAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->isNotice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->targetPercent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->exchange:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/PortfolioStock;->createAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
