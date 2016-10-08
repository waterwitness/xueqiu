.class public Lcom/xueqiu/android/trade/model/Broker;
.super Ljava/lang/Object;
.source "Broker.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/model/Broker;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_TRADE_TID:Ljava/lang/String; = "DYZQ"

.field public static final GJ_TID:Ljava/lang/String; = "GJZQ"

.field public static final GL_TID:Ljava/lang/String; = "GLZQ"

.field public static final IB_TID:Ljava/lang/String; = "IB"

.field public static final PAGE_H5:I = 0x1

.field public static final PAGE_NATIVE:I = 0x2

.field public static final PAMID:Ljava/lang/String; = "PAMID"

.field public static final PINGAN_TID:Ljava/lang/String; = "PINGAN"


# instance fields
.field private aid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bankTrans:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private bindUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private etype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isDefault:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private oauthConfig:Lcom/xueqiu/android/trade/model/Broker$OauthConfig;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

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

.field private openingUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pageType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
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

.field private status:Lcom/xueqiu/android/trade/model/Broker$Status;
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

.field private switchExchangeMantaince:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private switchExchangeMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private traderDesc:Ljava/lang/String;
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
    .line 162
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/Broker$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->tid:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderLogo:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderDesc:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->aid:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthParams:Ljava/util/Map;

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthParams:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 125
    const-class v0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthConfig:Lcom/xueqiu/android/trade/model/Broker$OauthConfig;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->refreshUrl:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/xueqiu/android/trade/model/Broker;->readStatusFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/Broker$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->status:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/model/Broker;->pageType:I

    .line 129
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/model/Broker;->bankTrans:Z

    .line 130
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ab;->b(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/model/Broker;->isDefault:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->statusMsg:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->openingUrl:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->etype:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->realAccountId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/Broker$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/model/Broker;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static readStatusFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/trade/model/Broker$Status;
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 423
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/model/Broker$Status;->valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/Broker$Status;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeStatusParcel(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/Broker$Status;)V
    .locals 1

    .prologue
    .line 431
    if-eqz p1, :cond_0

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/Broker$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getBindUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->bindUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->etype:Ljava/lang/String;

    return-object v0
.end method

.method public getEtypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/xueqiu/android/trade/model/Broker;->etype:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->etype:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/model/Broker;->etype:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOauthConfig()Lcom/xueqiu/android/trade/model/Broker$OauthConfig;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthConfig:Lcom/xueqiu/android/trade/model/Broker$OauthConfig;

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
    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthParams:Ljava/util/Map;

    return-object v0
.end method

.method public getOpeningUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->openingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/xueqiu/android/trade/model/Broker;->pageType:I

    return v0
.end method

.method public getRealAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->realAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->refreshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallTraderLogo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/xueqiu/android/trade/model/Broker;->traderLogo:Ljava/lang/String;

    .line 1197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 195
    if-eqz v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xueqiu/android/trade/model/Broker;->traderLogo:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 204
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

.method public getStatus()Lcom/xueqiu/android/trade/model/Broker$Status;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->status:Lcom/xueqiu/android/trade/model/Broker$Status;

    return-object v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->statusMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->statusTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchExchangeMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->switchExchangeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTraderDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTraderLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTraderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderName:Ljava/lang/String;

    return-object v0
.end method

.method public isBankTrans()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/Broker;->bankTrans:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/Broker;->isDefault:Z

    return v0
.end method

.method public isFirstTrade()Z
    .locals 2

    .prologue
    .line 448
    const-string v0, "DYZQ"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGJGL()Z
    .locals 2

    .prologue
    .line 452
    const-string v0, "GJZQ"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GLZQ"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getTid()Ljava/lang/String;

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

.method public isIB()Z
    .locals 2

    .prologue
    .line 444
    const-string v0, "IB"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccessBondStatus()Z
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getStatus()Lcom/xueqiu/android/trade/model/Broker$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getStatus()Lcom/xueqiu/android/trade/model/Broker$Status;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/trade/model/Broker$Status;->SUCCESS:Lcom/xueqiu/android/trade/model/Broker$Status;

    if-eq v0, v1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getStatus()Lcom/xueqiu/android/trade/model/Broker$Status;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/trade/model/Broker$Status;->BOUND:Lcom/xueqiu/android/trade/model/Broker$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchExchangeMantaince()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/Broker;->switchExchangeMantaince:Z

    return v0
.end method

.method public isUSType()Z
    .locals 2

    .prologue
    .line 440
    const-string v0, "IB"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DYZQ"

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/Broker;->getTid()Ljava/lang/String;

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

.method public setAid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->aid:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setBankTrans(Z)V
    .locals 0

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/model/Broker;->bankTrans:Z

    .line 273
    return-void
.end method

.method public setBindUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->bindUrl:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setEtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->etype:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setIsDefault(Z)V
    .locals 0

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/model/Broker;->isDefault:Z

    .line 404
    return-void
.end method

.method public setOauthConfig(Lcom/xueqiu/android/trade/model/Broker$OauthConfig;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthConfig:Lcom/xueqiu/android/trade/model/Broker$OauthConfig;

    .line 233
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
    .line 224
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthParams:Ljava/util/Map;

    .line 225
    return-void
.end method

.method public setOpeningUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->openingUrl:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setPageType(I)V
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Lcom/xueqiu/android/trade/model/Broker;->pageType:I

    .line 265
    return-void
.end method

.method public setRealAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->realAccountId:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setRefreshUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->refreshUrl:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setStatus(Lcom/xueqiu/android/trade/model/Broker$Status;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->status:Lcom/xueqiu/android/trade/model/Broker$Status;

    .line 249
    return-void
.end method

.method public setStatusMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->statusMsg:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setStatusName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->statusName:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setStatusTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->statusTitle:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setSwitchExchangeMantaince(Z)V
    .locals 0

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/xueqiu/android/trade/model/Broker;->switchExchangeMantaince:Z

    .line 491
    return-void
.end method

.method public setSwitchExchangeMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->switchExchangeMsg:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->tid:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setTraderDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->traderDesc:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setTraderLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->traderLogo:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setTraderName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker;->traderName:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->tid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->traderDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->aid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthParams:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->oauthConfig:Lcom/xueqiu/android/trade/model/Broker$OauthConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->refreshUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->status:Lcom/xueqiu/android/trade/model/Broker$Status;

    invoke-static {p1, v0}, Lcom/xueqiu/android/trade/model/Broker;->writeStatusParcel(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/Broker$Status;)V

    .line 148
    iget v0, p0, Lcom/xueqiu/android/trade/model/Broker;->pageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/Broker;->bankTrans:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 150
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/model/Broker;->isDefault:Z

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/ab;->a(Landroid/os/Parcel;Z)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->statusMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->openingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->etype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker;->realAccountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return-void
.end method
