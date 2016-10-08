.class public Lcom/letpower/engine/NotifyService$MyBinder;
.super Landroid/os/Binder;
.source "NotifyService.java"


# instance fields
.field final synthetic this$0:Lcom/letpower/engine/NotifyService;


# direct methods
.method public constructor <init>(Lcom/letpower/engine/NotifyService;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/letpower/engine/NotifyService$MyBinder;->this$0:Lcom/letpower/engine/NotifyService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionStatus()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/letpower/engine/NotifyService$MyBinder;->this$0:Lcom/letpower/engine/NotifyService;

    # getter for: Lcom/letpower/engine/NotifyService;->isContected:Z
    invoke-static {v0}, Lcom/letpower/engine/NotifyService;->access$4(Lcom/letpower/engine/NotifyService;)Z

    move-result v0

    return v0
.end method

.method public getService()Lcom/letpower/engine/NotifyService;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/letpower/engine/NotifyService$MyBinder;->this$0:Lcom/letpower/engine/NotifyService;

    return-object v0
.end method
