.class Lcom/letpower/engine/NotifyService$1;
.super Landroid/content/BroadcastReceiver;
.source "NotifyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letpower/engine/NotifyService;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letpower/engine/NotifyService;


# direct methods
.method constructor <init>(Lcom/letpower/engine/NotifyService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    iget-object v1, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    invoke-virtual {v1}, Lcom/letpower/engine/NotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letpower/engine/NotifyService;->access$0(Lcom/letpower/engine/NotifyService;Landroid/content/Context;)V

    .line 25
    iget-object v0, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    iget-object v1, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    # invokes: Lcom/letpower/engine/NotifyService;->isConnectNet()Z
    invoke-static {v1}, Lcom/letpower/engine/NotifyService;->access$1(Lcom/letpower/engine/NotifyService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/letpower/engine/NotifyService;->access$2(Lcom/letpower/engine/NotifyService;Z)V

    .line 26
    iget-object v0, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    # getter for: Lcom/letpower/engine/NotifyService;->onGetConnectState:Lcom/letpower/engine/NotifyService$GetConnectState;
    invoke-static {v0}, Lcom/letpower/engine/NotifyService;->access$3(Lcom/letpower/engine/NotifyService;)Lcom/letpower/engine/NotifyService$GetConnectState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    # getter for: Lcom/letpower/engine/NotifyService;->onGetConnectState:Lcom/letpower/engine/NotifyService$GetConnectState;
    invoke-static {v0}, Lcom/letpower/engine/NotifyService;->access$3(Lcom/letpower/engine/NotifyService;)Lcom/letpower/engine/NotifyService$GetConnectState;

    move-result-object v0

    iget-object v1, p0, Lcom/letpower/engine/NotifyService$1;->this$0:Lcom/letpower/engine/NotifyService;

    # getter for: Lcom/letpower/engine/NotifyService;->isContected:Z
    invoke-static {v1}, Lcom/letpower/engine/NotifyService;->access$4(Lcom/letpower/engine/NotifyService;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/letpower/engine/NotifyService$GetConnectState;->GetState(Z)V

    .line 31
    :cond_0
    return-void
.end method
