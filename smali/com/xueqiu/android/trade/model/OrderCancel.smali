.class public Lcom/xueqiu/android/trade/model/OrderCancel;
.super Ljava/lang/Object;
.source "OrderCancel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/OrderCancel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cancelOid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cancel_oid"
    .end annotation
.end field

.field private cur:Ljava/lang/String;

.field private etype:Ljava/lang/String;

.field private initDate:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "init_date"
    .end annotation
.end field

.field private oid:Ljava/lang/String;

.field private ostatus:Ljava/lang/String;

.field private reportNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "report_no"
    .end annotation
.end field

.field private seatNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seat_no"
    .end annotation
.end field

.field private stockAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stock_account"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/xueqiu/android/trade/model/OrderCancel$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/OrderCancel$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/OrderCancel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->initDate:Ljava/lang/Long;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cancelOid:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->oid:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->etype:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->stockAccount:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cur:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->ostatus:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->reportNo:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->seatNo:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getCancelOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cancelOid:Ljava/lang/String;

    return-object v0
.end method

.method public getCur()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cur:Ljava/lang/String;

    return-object v0
.end method

.method public getEtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->etype:Ljava/lang/String;

    return-object v0
.end method

.method public getInitDate()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->initDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getOstatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->ostatus:Ljava/lang/String;

    return-object v0
.end method

.method public getReportNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->reportNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSeatNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->seatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getStockAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->stockAccount:Ljava/lang/String;

    return-object v0
.end method

.method public setCancelOid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cancelOid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCur(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cur:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setEtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->etype:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setInitDate(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->initDate:Ljava/lang/Long;

    .line 42
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->oid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setOstatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->ostatus:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setReportNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->reportNo:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSeatNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->seatNo:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setStockAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->stockAccount:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->initDate:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cancelOid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->etype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->stockAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->cur:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->ostatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->reportNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/OrderCancel;->seatNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
