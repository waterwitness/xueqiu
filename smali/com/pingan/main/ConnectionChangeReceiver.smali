.class public Lcom/pingan/main/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# static fields
.field private static mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private sdkMg:Lcom/pingan/main/PAVideoSdkApiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/pingan/main/ConnectionChangeReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const-string v0, "ConnectionChangeReceiver"

    iput-object v0, p0, Lcom/pingan/main/ConnectionChangeReceiver;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingan/main/ConnectionChangeReceiver;->sdkMg:Lcom/pingan/main/PAVideoSdkApiManager;

    .line 12
    return-void
.end method

.method private outputAVCallStatus(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/letpower/engine/PAEngine;->getIAVCallStatusListener()Lcom/pingan/main/IAVCallStatusListener;

    move-result-object v0

    sput-object v0, Lcom/pingan/main/ConnectionChangeReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    .line 49
    const-string v0, "LDSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pingan/main/ConnectionChangeReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-outputAVCallStatus mAvCallStatusListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pingan/main/ConnectionChangeReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/pingan/main/ConnectionChangeReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "LDSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pingan/main/ConnectionChangeReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-outputAVCallStatus mAvCallStatusListener  in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/pingan/main/ConnectionChangeReceiver;->mAvCallStatusListener:Lcom/pingan/main/IAVCallStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/pingan/main/IAVCallStatusListener;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pingan/main/ConnectionChangeReceiver;->sdkMg:Lcom/pingan/main/PAVideoSdkApiManager;

    if-nez v0, :cond_0

    .line 22
    invoke-static {p1}, Lcom/pingan/main/PAVideoSdkApiManager;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoSdkApiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/main/ConnectionChangeReceiver;->sdkMg:Lcom/pingan/main/PAVideoSdkApiManager;

    .line 24
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 27
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 31
    iget-object v1, p0, Lcom/pingan/main/ConnectionChangeReceiver;->TAG:Ljava/lang/String;

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u6210\u529f"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/pingan/main/ConnectionChangeReceiver;->sdkMg:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v1}, Lcom/pingan/main/PAVideoSdkApiManager;->isIpChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/letpower/engine/PAEngine;->isRegister:Z

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/pingan/main/ConnectionChangeReceiver;->TAG:Ljava/lang/String;

    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u6210\u529f--\u8fdb\u5165\u6ce8\u518c"

    invoke-static {v1, v2}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/pingan/main/ConnectionChangeReceiver;->sdkMg:Lcom/pingan/main/PAVideoSdkApiManager;

    invoke-virtual {v1}, Lcom/pingan/main/PAVideoSdkApiManager;->checkIP()Z

    .line 35
    sget-object v1, Lcom/letpower/engine/PAEngine;->LDVoiceEngAndroidAPI:Lcom/letpower/engine/AndroidJavaAPI;

    invoke-virtual {v1}, Lcom/letpower/engine/AndroidJavaAPI;->registeracc()I

    .line 37
    :cond_1
    const/16 v1, 0x385

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/pingan/main/ConnectionChangeReceiver;->outputAVCallStatus(ILjava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/pingan/main/ConnectionChangeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v0, 0x386

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pingan/main/ConnectionChangeReceiver;->outputAVCallStatus(ILjava/lang/Object;)V

    goto :goto_0
.end method
