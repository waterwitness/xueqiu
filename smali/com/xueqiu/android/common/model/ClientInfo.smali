.class public Lcom/xueqiu/android/common/model/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# static fields
.field private static final VERSION_TAG_MONKEY:Ljava/lang/String; = "monkey"


# instance fields
.field private buglyAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private buildNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private channelEvent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private flurryApiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gaApiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private miId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private miKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private umengKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private versionTag:Ljava/lang/String;
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
.method public getBuglyAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->buglyAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->buildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->channelEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlurryApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->flurryApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGaApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->gaApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->miId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->miKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUmengKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->umengKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/common/model/ClientInfo;->versionTag:Ljava/lang/String;

    return-object v0
.end method

.method public isMonkeyTestVersion()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "monkey"

    iget-object v1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->versionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBuglyAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->buglyAppId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setBuildNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->buildNumber:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setChannelEvent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->channelEvent:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->channelId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setFlurryApiKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->flurryApiKey:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setGaApiKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->gaApiKey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setMiId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->miId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMiKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->miKey:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setUmengKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->umengKey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setVersionTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/common/model/ClientInfo;->versionTag:Ljava/lang/String;

    .line 121
    return-void
.end method
