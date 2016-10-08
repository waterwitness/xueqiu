.class final Lcom/pingan/paphone/extension/MCPExtension2$4;
.super Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;
.source "MCPExtension2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/MCPExtension2;->callDo(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic val$callId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/pingan/paphone/extension/MCPExtension2$4;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 457
    const-string v0, "-------\u4fdd\u5b58\u6d41\u6c34\u53f7\u5230mcp\u5931\u8d25"

    invoke-static {v0}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;)V

    .line 458
    # ++operator for: Lcom/pingan/paphone/extension/MCPExtension2;->callDoCount:I
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$504()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$4;->val$callId:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->callDo(Ljava/lang/String;)V

    .line 463
    :goto_0
    const-string v0, "MCPExtension"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    return-void

    .line 461
    :cond_0
    const-string v0, "MCPExtension"

    const-string v1, "MCPExtension---calldo\u4e09\u6b21\u91cd\u8bd5\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onSuccess(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 452
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fdd\u5b58\u6d41\u6c34\u53f7\u5230mcp--response -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method
