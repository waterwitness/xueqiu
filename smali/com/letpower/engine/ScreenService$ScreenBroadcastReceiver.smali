.class Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenService.java"


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/letpower/engine/ScreenService;


# direct methods
.method private constructor <init>(Lcom/letpower/engine/ScreenService;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;->this$0:Lcom/letpower/engine/ScreenService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/letpower/engine/ScreenService;Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;-><init>(Lcom/letpower/engine/ScreenService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    .line 43
    const-string v0, "android.intent.action.SCREEN_ON"

    iget-object v1, p0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;->this$0:Lcom/letpower/engine/ScreenService;

    # getter for: Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;
    invoke-static {v0}, Lcom/letpower/engine/ScreenService;->access$0(Lcom/letpower/engine/ScreenService;)Lcom/letpower/engine/ScreenService$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letpower/engine/ScreenService$ScreenStateListener;->onScreenOn()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    iget-object v1, p0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/letpower/engine/ScreenService$ScreenBroadcastReceiver;->this$0:Lcom/letpower/engine/ScreenService;

    # getter for: Lcom/letpower/engine/ScreenService;->mScreenStateListener:Lcom/letpower/engine/ScreenService$ScreenStateListener;
    invoke-static {v0}, Lcom/letpower/engine/ScreenService;->access$0(Lcom/letpower/engine/ScreenService;)Lcom/letpower/engine/ScreenService$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letpower/engine/ScreenService$ScreenStateListener;->onScreenOff()V

    goto :goto_0
.end method
