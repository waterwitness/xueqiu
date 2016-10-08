.class public Lcom/xueqiu/android/stock/model/StockOption;
.super Ljava/lang/Object;
.source "StockOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/stock/model/StockOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bondType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private chg:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private current:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private high:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private low:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private percent:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private symbol:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private time:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private volume:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/stock/model/StockOption$1;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockOption$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/stock/model/StockOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->symbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/xueqiu/android/stock/model/StockOption;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->time:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/stock/model/StockOption;D)D
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->current:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->bondType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/stock/model/StockOption;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->dueDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/stock/model/StockOption;D)D
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->percent:D

    return-wide p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/stock/model/StockOption;D)D
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->chg:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/stock/model/StockOption;D)D
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->high:D

    return-wide p1
.end method

.method static synthetic access$802(Lcom/xueqiu/android/stock/model/StockOption;D)D
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->low:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/xueqiu/android/stock/model/StockOption;D)D
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->volume:D

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getBondType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->bondType:Ljava/lang/String;

    return-object v0
.end method

.method public getChg()D
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->chg:D

    return-wide v0
.end method

.method public getCurrent()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->current:D

    return-wide v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->dueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHigh()D
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->high:D

    return-wide v0
.end method

.method public getLow()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->low:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()D
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->percent:D

    return-wide v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->time:Ljava/util/Calendar;

    return-object v0
.end method

.method public getVolume()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->volume:D

    return-wide v0
.end method

.method public setBondType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->bondType:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setChg(D)V
    .locals 1

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->chg:D

    .line 146
    return-void
.end method

.method public setCurrent(D)V
    .locals 1

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->current:D

    .line 114
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->dueDate:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setHigh(D)V
    .locals 1

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->high:D

    .line 154
    return-void
.end method

.method public setLow(D)V
    .locals 1

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->low:D

    .line 162
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->name:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPercent(D)V
    .locals 1

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->percent:D

    .line 138
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->symbol:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTime(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->time:Ljava/util/Calendar;

    .line 178
    return-void
.end method

.method public setVolume(D)V
    .locals 1

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/xueqiu/android/stock/model/StockOption;->volume:D

    .line 170
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->current:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 58
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->bondType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->dueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->percent:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 61
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->chg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 62
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->high:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 63
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->low:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 64
    iget-wide v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->volume:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/stock/model/StockOption;->time:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
