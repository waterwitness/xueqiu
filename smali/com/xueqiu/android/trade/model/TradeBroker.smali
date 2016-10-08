.class public Lcom/xueqiu/android/trade/model/TradeBroker;
.super Ljava/lang/Object;
.source "TradeBroker.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeBroker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private etype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private oauthConfig:Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pageType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private renewUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private switchExchangeMantaince:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private switchExchangeMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private traderLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private traderName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeBroker$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradeBroker$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeBroker;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderName:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderLogo:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->pageType:I

    .line 219
    const-class v0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->oauthConfig:Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->renewUrl:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMantaince:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMsg:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->etype:Ljava/lang/String;

    .line 224
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getEtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->etype:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthConfig()Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->oauthConfig:Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    return-object v0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->pageType:I

    return v0
.end method

.method public getRenewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->renewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallTraderLogo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderLogo:Ljava/lang/String;

    .line 1197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 186
    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderLogo:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 195
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v2, "/small"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSwitchExchangeMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTraderLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTraderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderName:Ljava/lang/String;

    return-object v0
.end method

.method public isSwitchExchangeMantaince()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMantaince:Z

    return v0
.end method

.method public setEtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->etype:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setOauthConfig(Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->oauthConfig:Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    .line 159
    return-void
.end method

.method public setPageType(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->pageType:I

    .line 151
    return-void
.end method

.method public setRenewUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->renewUrl:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setSwitchExchangeMantaince(Z)V
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMantaince:Z

    .line 175
    return-void
.end method

.method public setSwitchExchangeMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMsg:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setTraderLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderLogo:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setTraderName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->traderLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->pageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->oauthConfig:Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->renewUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMantaince:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->switchExchangeMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker;->etype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
