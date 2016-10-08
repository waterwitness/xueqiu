.class public Lcom/xueqiu/android/stock/model/Stock;
.super Ljava/lang/Object;
.source "Stock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_STOCK_CODE:Ljava/lang/String; = "code"


# instance fields
.field private code:Ljava/lang/String;

.field private enName:Ljava/lang/String;

.field private flag:Lcom/xueqiu/android/stock/model/StockStatus;

.field private hasExist:Z

.field private indColor:Ljava/lang/String;

.field private indId:J

.field private indName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private stockId:J

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/xueqiu/android/stock/model/Stock$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/Stock$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/Stock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->code:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->name:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->enName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/model/Stock;->hasExist:Z

    .line 28
    sget-object v0, Lcom/xueqiu/android/stock/model/StockStatus;->LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->flag:Lcom/xueqiu/android/stock/model/StockStatus;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->code:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->name:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->enName:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/model/Stock;->hasExist:Z

    .line 28
    sget-object v2, Lcom/xueqiu/android/stock/model/StockStatus;->LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->flag:Lcom/xueqiu/android/stock/model/StockStatus;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/Stock;->stockId:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/model/Stock;->indId:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->indName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->indColor:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->code:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->name:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/stock/model/Stock;->enName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/model/Stock;->hasExist:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockStatus;->fromInt(I)Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->flag:Lcom/xueqiu/android/stock/model/StockStatus;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->type:Ljava/lang/String;

    .line 54
    return-void

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/stock/model/Stock$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/model/Stock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getEnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->enName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Lcom/xueqiu/android/stock/model/StockStatus;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->flag:Lcom/xueqiu/android/stock/model/StockStatus;

    return-object v0
.end method

.method public getIndColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->indColor:Ljava/lang/String;

    return-object v0
.end method

.method public getIndId()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/Stock;->indId:J

    return-wide v0
.end method

.method public getIndName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->indName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStockId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/Stock;->stockId:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isHasExist()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/Stock;->hasExist:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Stock;->code:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setEnName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Stock;->enName:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setFlag(Lcom/xueqiu/android/stock/model/StockStatus;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Stock;->flag:Lcom/xueqiu/android/stock/model/StockStatus;

    .line 176
    return-void
.end method

.method public setHasExist(Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/model/Stock;->hasExist:Z

    .line 164
    return-void
.end method

.method public setIndColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Stock;->indColor:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setIndId(J)V
    .locals 1

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/Stock;->indId:J

    .line 100
    return-void
.end method

.method public setIndName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Stock;->indName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Stock;->name:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setStockId(J)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/Stock;->stockId:J

    .line 92
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/Stock;->type:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/stock/model/Stock;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/model/Stock;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/Stock;->stockId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/Stock;->indId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->indName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->indColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->enName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/model/Stock;->hasExist:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->flag:Lcom/xueqiu/android/stock/model/StockStatus;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockStatus;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/Stock;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
