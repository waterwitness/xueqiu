.class public Lcom/xueqiu/android/trade/model/BrokerAccountToken;
.super Ljava/lang/Object;
.source "BrokerAccountToken.java"


# instance fields
.field private aid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createTime:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private writeToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->createTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->createTime:Ljava/util/Date;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->writeToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->aid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->createTime:Ljava/util/Date;

    .line 58
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->tid:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setWriteToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->writeToken:Ljava/lang/String;

    .line 47
    return-void
.end method
