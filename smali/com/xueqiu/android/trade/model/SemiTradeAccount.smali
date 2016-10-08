.class public Lcom/xueqiu/android/trade/model/SemiTradeAccount;
.super Lcom/xueqiu/android/trade/model/TradeAccount;
.source "SemiTradeAccount.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/SemiTradeAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mobileId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mid"
    .end annotation
.end field

.field private openingUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private statusMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private statusName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private statusTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/model/TradeAccount;-><init>(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->mobileId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusTitle:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusMsg:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->openingUrl:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->readStatusFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->status:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 43
    return-void
.end method

.method private static readStatusFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->safeValueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeStatusParcel(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;)V
    .locals 1

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMobileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->mobileId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->openingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->status:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    return-object v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessBondStatus()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public setMobileId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->mobileId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setOpeningUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->openingUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setStatus(Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->status:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    .line 114
    return-void
.end method

.method public setStatusMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusMsg:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setStatusName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setStatusTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusTitle:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/trade/model/TradeAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->mobileId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->statusMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->openingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->status:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    invoke-static {p1, v0}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->writeStatusParcel(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;)V

    .line 54
    return-void
.end method
