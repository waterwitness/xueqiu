.class public Lcom/letpower/engine/ScreenService;
.super Ljava/lang/Object;
.source "ScreenService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC"

.field private static mReflectScreenState:Ljava/lang/reflect/Method;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenReceiver:Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;

.field private mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/letpower/engine/ScreenService;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;-><init>(Lcom/letpower/engine/ScreenService;Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;)V

    iput-object v0, p0, Lcom/letpower/engine/ScreenService;->mScreenReceiver:Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;

    .line 28
    :try_start_0
    const-class v0, Landroid/os/PowerManager;

    const-string v1, "isScreenOn"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/letpower/engine/ScreenService;->mReflectScreenState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "WEBRTC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API < 7,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/letpower/engine/ScreenService;)Lcom/letpower/engine/ScreenService$ScreenStateListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;

    return-object v0
.end method

.method private firstGetScreenState()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letpower/engine/ScreenService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 66
    invoke-static {v0}, Lcom/letpower/engine/ScreenService;->isScreenOn(Landroid/os/PowerManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;

    invoke-interface {v0}, Lcom/letpower/engine/ScreenService$ScreenStateListener;->onScreenOn()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;

    invoke-interface {v0}, Lcom/letpower/engine/ScreenService$ScreenStateListener;->onScreenOff()V

    goto :goto_0
.end method

.method private static isScreenOn(Landroid/os/PowerManager;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 103
    :try_start_0
    sget-object v0, Lcom/letpower/engine/ScreenService;->mReflectScreenState:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private startScreenBroadcastReceiver()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/letpower/engine/ScreenService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letpower/engine/ScreenService;->mScreenReceiver:Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method


# virtual methods
.method public requestScreenStateUpdate(Lcom/letpower/engine/ScreenService$ScreenStateListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;

    .line 58
    invoke-direct {p0}, Lcom/letpower/engine/ScreenService;->startScreenBroadcastReceiver()V

    .line 59
    invoke-direct {p0}, Lcom/letpower/engine/ScreenService;->firstGetScreenState()V

    .line 60
    return-void
.end method

.method public stopScreenStateUpdate()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/letpower/engine/ScreenService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letpower/engine/ScreenService;->mScreenReceiver:Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method
