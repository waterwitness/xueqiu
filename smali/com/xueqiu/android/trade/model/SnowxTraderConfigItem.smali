.class public Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;
.super Ljava/lang/Object;
.source "SnowxTraderConfigItem.java"


# instance fields
.field private configMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private configValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->configMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->configValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public setConfigMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->configMessage:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->configValue:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->tid:Ljava/lang/String;

    .line 25
    return-void
.end method
