.class public Lcom/xueqiu/android/common/model/LoginResult;
.super Ljava/lang/Object;
.source "LoginResult.java"


# static fields
.field public static final USER_STATE_SPAM:J = 0x1adb2L


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private expiresIn:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private scope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private telephoneBinded:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private user:Lcom/xueqiu/android/community/model/User;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userState:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->expiresIn:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephoneBinded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->telephoneBinded:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->telephoneBinded:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUser()Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->user:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method public getUserState()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/xueqiu/android/common/model/LoginResult;->userState:J

    return-wide v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/common/model/LoginResult;->accessToken:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setExpiresIn(J)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/xueqiu/android/common/model/LoginResult;->expiresIn:J

    .line 50
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/common/model/LoginResult;->refreshToken:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/common/model/LoginResult;->scope:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTelephoneBinded(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/xueqiu/android/common/model/LoginResult;->telephoneBinded:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setUser(Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/common/model/LoginResult;->user:Lcom/xueqiu/android/community/model/User;

    .line 66
    return-void
.end method

.method public setUserState(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/xueqiu/android/common/model/LoginResult;->userState:J

    .line 82
    return-void
.end method
