.class final Lcom/pingan/paphone/extension/MCPExtension2$6;
.super Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;
.source "MCPExtension2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/MCPExtension2;->getQueueInfo(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field private ceil:Ljava/lang/Double;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 619
    const-string v0, "-------\u83b7\u53d6\u6392\u961f\u4eba\u6570\u5931\u8d25"

    invoke-static {v0}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;)V

    .line 620
    # ++operator for: Lcom/pingan/paphone/extension/MCPExtension2;->callDoCount:I
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$504()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 623
    const-string v0, "MCPExtension"

    const-string v1, "MCPExtension---getQueueInfo\u4e09\u6b21\u91cd\u8bd5\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_0
    const-string v0, "MCPExtension"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    return-void
.end method

.method public final onSuccess(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 559
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6\u6392\u961f\u4eba\u6570--response -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    # setter for: Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;
    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->access$002(Lcom/google/gson/Gson;)Lcom/google/gson/Gson;

    .line 562
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/pingan/domain/ExtensionDateBean;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/domain/ExtensionDateBean;

    .line 564
    if-nez v0, :cond_1

    .line 567
    const-string v0, "MCPExtension"

    const-string v1, "getQueueInfo-->Json\u6570\u636e\u89e3\u6790\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->message:Ljava/lang/String;

    .line 571
    const-string v2, "MCPExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getQueueInfo--->message="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    const-string v2, "null"

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    const-string v2, ""

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    :cond_2
    const-string v0, "MCPExtension"

    const-string v1, "getQueueInfo-->Json\u6570\u636e--->data\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_3
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getQueueInfo--flag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v3, v3, Lcom/pingan/domain/ExtensionDateBean$LdData;->flag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v3, v3, Lcom/pingan/domain/ExtensionDateBean$LdData;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getQueueInfo---queueInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v3, v3, Lcom/pingan/domain/ExtensionDateBean$LdData;->queueInfo:Lcom/pingan/domain/ExtensionDateBean$QueueInfo;

    invoke-virtual {v3}, Lcom/pingan/domain/ExtensionDateBean$QueueInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$LdData;->queueInfo:Lcom/pingan/domain/ExtensionDateBean$QueueInfo;

    iget-object v3, v1, Lcom/pingan/domain/ExtensionDateBean$QueueInfo;->queuePosition:Ljava/lang/String;

    .line 585
    if-eqz v3, :cond_0

    const-string v1, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "S"

    iget-object v2, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v2, v2, Lcom/pingan/domain/ExtensionDateBean$LdData;->flag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->val$context:Landroid/content/Context;

    const-string v2, "15-\u89c6\u9891\u8ba4\u8bc1\u9875\u9762"

    const-string v4, "1506-\u83b7\u53d6\u6392\u961f\u4f4d\u7f6e"

    invoke-static {v1, v2, v4}, Lcom/pingan/paphone/utils/CommonUtil;->TDOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v2, 0x0

    .line 590
    :try_start_0
    iget-object v1, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$LdData;->queueInfo:Lcom/pingan/domain/ExtensionDateBean$QueueInfo;

    iget-object v1, v1, Lcom/pingan/domain/ExtensionDateBean$QueueInfo;->watingTime:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 595
    :goto_1
    :try_start_1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 596
    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean;->data:Lcom/pingan/domain/ExtensionDateBean$LdData;

    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean$LdData;->queueInfo:Lcom/pingan/domain/ExtensionDateBean$QueueInfo;

    iget-object v0, v0, Lcom/pingan/domain/ExtensionDateBean$QueueInfo;->agentOnline:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 597
    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_4

    .line 598
    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->ceil:Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 606
    :goto_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 607
    const/16 v2, 0xd2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 608
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 610
    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->ceil:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 612
    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 592
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v1, v2

    goto :goto_1

    .line 600
    :cond_4
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->ceil:Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 603
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$6;->ceil:Ljava/lang/Double;

    goto :goto_2
.end method
