.class final Lcom/pingan/paphone/extension/MCPExtension2$7;
.super Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;
.source "MCPExtension2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/MCPExtension2;->fetchCallUuId(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# instance fields
.field msg:Landroid/os/Message;

.field final synthetic val$callUuid:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 698
    iput-object p1, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$callUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;-><init>()V

    .line 699
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->msg:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 721
    sget v0, Lcom/pingan/paphone/extension/MCPExtension2;->callIdCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 722
    sget v0, Lcom/pingan/paphone/extension/MCPExtension2;->callIdCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pingan/paphone/extension/MCPExtension2;->callIdCount:I

    .line 723
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchCallUuId---\u547c\u53eb\u53f7\u4fdd\u5b58\u91cd\u8bd5 callIdCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/pingan/paphone/extension/MCPExtension2;->callIdCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$callUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/pingan/paphone/extension/MCPExtension2;->fetchCallUuId(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 731
    :goto_0
    return-void

    .line 726
    :cond_0
    const-string v0, "MCPExtension"

    const-string v1, "fetchCallUuId---\u547c\u53eb\u53f7\u4fdd\u5b58\u91cd\u8bd55\u6b21\u5747\u5931\u8d25\u3002"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->msg:Landroid/os/Message;

    const/16 v1, 0x12e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 729
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onSuccess(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 703
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchCallUuId-->\u547c\u53eb\u53f7\u4fdd\u5b58-->response="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x0

    sput v0, Lcom/pingan/paphone/extension/MCPExtension2;->callIdCount:I

    .line 705
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$mContext:Landroid/content/Context;

    const-string v1, "15-\u89c6\u9891\u8ba4\u8bc1\u9875\u9762"

    const-string v2, "1504-\u4e0a\u4f20\u6d41\u6c34\u53f7"

    invoke-static {v0, v1, v2}, Lcom/pingan/paphone/utils/CommonUtil;->TDOnEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 708
    const-string v1, "error_no"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error_no="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->msg:Landroid/os/Message;

    const/16 v2, 0x12d

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 711
    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->msg:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$7;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    const-string v1, "MCPExtension"

    const-string v2, "fetchCallUuId-->\u547c\u53eb\u53f7ee\u4fdd\u5b58-->\u7ed3\u679cjson\u89e3\u6790\u5931\u8d25\u3002"

    invoke-static {v1, v2}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
