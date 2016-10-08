.class public Lcom/xueqiu/android/common/model/OAuthBindResult;
.super Ljava/lang/Object;
.source "OAuthBindResult.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->expiresIn:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->accessToken:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setExpiresIn(J)V
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->expiresIn:J

    .line 29
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->refreshToken:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/xueqiu/android/common/model/OAuthBindResult;->scope:Ljava/lang/String;

    .line 37
    return-void
.end method
