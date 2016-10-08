.class public Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;
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
            "Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;",
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
    .line 79
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->accountLabel:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xueqiu/android/trade/model/TradeBroker$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->accountLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthAuthorizeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthCaptchaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthRefreshTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->accountLabel:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setOauthAuthorizeUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setOauthCaptchaUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setOauthRefreshTokenUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->accountLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthAuthorizeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthRefreshTokenUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/TradeBroker$OauthConfig;->oauthCaptchaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
