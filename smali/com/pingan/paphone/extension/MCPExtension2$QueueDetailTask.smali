.class Lcom/pingan/paphone/extension/MCPExtension2$QueueDetailTask;
.super Ljava/util/TimerTask;
.source "MCPExtension2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 745
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$600()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$700()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$600()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$700()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/extension/MCPExtension2;->getQueueInfo(Landroid/content/Context;Landroid/os/Handler;)V

    .line 749
    :cond_0
    return-void
.end method
