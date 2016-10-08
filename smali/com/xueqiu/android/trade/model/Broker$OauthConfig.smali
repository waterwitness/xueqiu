.class public Lcom/xueqiu/android/trade/model/Broker$OauthConfig;
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
            "Lcom/xueqiu/android/trade/model/Broker$OauthConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private oauthAuthorizeUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private oauthCaptchaUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private oauthRefreshTokenUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/Broker$OauthConfig$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->accountLabel:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/Broker$1;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->accountLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthAuthorizeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthCaptchaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthRefreshTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->accountLabel:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setOauthAuthorizeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setOauthCaptchaUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setOauthRefreshTokenUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->accountLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/Broker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    return-void
.end method
