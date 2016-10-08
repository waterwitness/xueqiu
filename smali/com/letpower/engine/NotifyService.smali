.class public Lcom/letpower/engine/NotifyService;
.super Landroid/app/Service;
.source "NotifyService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC"


# instance fields
.field private binder:Landroid/os/Binder;

.field private context_:Landroid/content/Context;

.field private isContected:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private onGetConnectState:Lcom/letpower/engine/NotifyService$GetConnectState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    new-instance v0, Lcom/letpower/engine/NotifyService$1;

    invoke-direct {v0, p0}, Lcom/letpower/engine/NotifyService$1;-><init>(Lcom/letpower/engine/NotifyService;)V

    iput-object v0, p0, Lcom/letpower/engine/NotifyService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    new-instance v0, Lcom/letpower/engine/NotifyService$MyBinder;

    invoke-direct {v0, p0}, Lcom/letpower/engine/NotifyService$MyBinder;-><init>(Lcom/letpower/engine/NotifyService;)V

    iput-object v0, p0, Lcom/letpower/engine/NotifyService;->binder:Landroid/os/Binder;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letpower/engine/NotifyService;->isContected:Z

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/letpower/engine/NotifyService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/letpower/engine/NotifyService;->context_:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1(Lcom/letpower/engine/NotifyService;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/letpower/engine/NotifyService;->isConnectNet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/letpower/engine/NotifyService;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/letpower/engine/NotifyService;->isContected:Z

    return-void
.end method

.method static synthetic access$3(Lcom/letpower/engine/NotifyService;)Lcom/letpower/engine/NotifyService$GetConnectState;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/letpower/engine/NotifyService;->onGetConnectState:Lcom/letpower/engine/NotifyService$GetConnectState;

    return-object v0
.end method

.method static synthetic access$4(Lcom/letpower/engine/NotifyService;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/letpower/engine/NotifyService;->isContected:Z

    return v0
.end method

.method private isConnectNet()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/letpower/engine/NotifyService;->context_:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 78
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/letpower/engine/NotifyService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/letpower/engine/NotifyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/letpower/engine/NotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/letpower/engine/NotifyService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/letpower/engine/NotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    return-void
.end method

.method public setOnGetConnectState(Lcom/letpower/engine/NotifyService$GetConnectState;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/letpower/engine/NotifyService;->onGetConnectState:Lcom/letpower/engine/NotifyService$GetConnectState;

    .line 40
    return-void
.end method
