.class public Lcom/xueqiu/android/common/model/OAuthRegisterInfo;
.super Ljava/lang/Object;
.source "OAuthRegisterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/common/model/OAuthRegisterInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private oAuthExpiredIn:J

.field private oAuthToken:Ljava/lang/String;

.field private oauthScreeName:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo$1;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->openid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->screenName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->profileImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;J)J
    .locals 1

    .prologue
    .line 10
    iput-wide p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthExpiredIn:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oauthScreeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->source:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getOauthScreeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oauthScreeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getoAuthExpiredIn()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthExpiredIn:J

    return-wide v0
.end method

.method public getoAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public setOauthScreeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oauthScreeName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->openid:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->password:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->profileImageUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->screenName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->source:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setoAuthExpiredIn(J)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthExpiredIn:J

    .line 104
    return-void
.end method

.method public setoAuthToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthToken:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->openid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->screenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-wide v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthExpiredIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oauthScreeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
