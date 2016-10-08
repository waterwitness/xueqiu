.class public Lcom/xueqiu/android/trade/model/TradeAccount;
.super Ljava/lang/Object;
.source "TradeAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_TRADE_TID:Ljava/lang/String; = "DYZQ"

.field public static final IB_TID:Ljava/lang/String; = "IB"

.field public static final PAGE_H5:I = 0x1

.field public static final PAGE_NATIVE:I = 0x2

.field public static final PAMID:Ljava/lang/String; = "PAMID"

.field public static final PINGAN_TID:Ljava/lang/String; = "PINGAN"


# instance fields
.field private accessTokenExpiredAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private aid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bindUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isCreateByMyself:Z

.field private oauthParams:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private realAccountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private refreshUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tradeBroker:Lcom/xueqiu/android/trade/model/TradeBroker;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeAccount$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradeAccount$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tid:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->aid:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->realAccountId:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->oauthParams:Ljava/util/Map;

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->oauthParams:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->accessTokenExpiredAt:Ljava/lang/String;

    .line 65
    const-class v0, Lcom/xueqiu/android/trade/model/TradeBroker;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeBroker;

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tradeBroker:Lcom/xueqiu/android/trade/model/TradeBroker;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->refreshUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->isCreateByMyself:Z

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessTokenExpiredAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->accessTokenExpiredAt:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getBindUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->bindUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->oauthParams:Ljava/util/Map;

    return-object v0
.end method

.method public getRealAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->realAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->refreshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tradeBroker:Lcom/xueqiu/android/trade/model/TradeBroker;

    return-object v0
.end method

.method public isCreateByMyself()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->isCreateByMyself:Z

    return v0
.end method

.method public isFirstTrade()Z
    .locals 2

    .prologue
    .line 172
    const-string v0, "DYZQ"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIB()Z
    .locals 2

    .prologue
    .line 168
    const-string v0, "IB"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccessBondStatus()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public isUSType()Z
    .locals 2

    .prologue
    .line 164
    const-string v0, "IB"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DYZQ"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessTokenExpiredAt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->accessTokenExpiredAt:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->aid:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setBindUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->bindUrl:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setCreateByMyself(Z)V
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->isCreateByMyself:Z

    .line 185
    return-void
.end method

.method public setOauthParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->oauthParams:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public setRealAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->realAccountId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setRefreshUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->refreshUrl:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tid:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTradeBroker(Lcom/xueqiu/android/trade/model/TradeBroker;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tradeBroker:Lcom/xueqiu/android/trade/model/TradeBroker;

    .line 145
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->aid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->realAccountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->oauthParams:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->accessTokenExpiredAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->tradeBroker:Lcom/xueqiu/android/trade/model/TradeBroker;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->refreshUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/TradeAccount;->isCreateByMyself:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
