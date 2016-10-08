.class public Lcom/xueqiu/android/community/model/UserLogonData;
.super Ljava/lang/Object;
.source "UserLogonData.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expiresInByInMillis:J

.field private getTokenTime:J

.field private isAnonymousUser:Z

.field private isSpamUser:Z

.field private refreshToken:Ljava/lang/String;

.field private telephone:Ljava/lang/String;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->isSpamUser:Z

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresInByInMillis()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->expiresInByInMillis:J

    return-wide v0
.end method

.method public getFetchTokenTime()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->getTokenTime:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->userId:J

    return-wide v0
.end method

.method public isAnonymousUser()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->isAnonymousUser:Z

    return v0
.end method

.method public isSpamUser()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/xueqiu/android/community/model/UserLogonData;->isSpamUser:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->accessToken:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setAnonymousUser(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->isAnonymousUser:Z

    .line 46
    return-void
.end method

.method public setExpiresInByInMillis(J)V
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->expiresInByInMillis:J

    .line 54
    return-void
.end method

.method public setGetTokenTime(J)V
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->getTokenTime:J

    .line 70
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->refreshToken:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSpamUser(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->isSpamUser:Z

    .line 78
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->telephone:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/UserLogonData;->userId:J

    .line 30
    return-void
.end method
