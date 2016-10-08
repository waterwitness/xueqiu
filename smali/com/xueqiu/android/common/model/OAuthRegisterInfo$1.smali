.class final Lcom/xueqiu/android/common/model/OAuthRegisterInfo$1;
.super Ljava/lang/Object;
.source "OAuthRegisterInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/model/OAuthRegisterInfo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xueqiu/android/common/model/OAuthRegisterInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/common/model/OAuthRegisterInfo;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->openid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$002(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->screenName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$102(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->profileImageUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$202(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$302(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oAuthExpiredIn:J
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$402(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;J)J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->oauthScreeName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$502(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->password:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$602(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->source:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo;->access$702(Lcom/xueqiu/android/common/model/OAuthRegisterInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/xueqiu/android/common/model/OAuthRegisterInfo;
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/OAuthRegisterInfo$1;->newArray(I)[Lcom/xueqiu/android/common/model/OAuthRegisterInfo;

    move-result-object v0

    return-object v0
.end method
