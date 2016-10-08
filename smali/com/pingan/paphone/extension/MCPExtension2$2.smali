.class final Lcom/pingan/paphone/extension/MCPExtension2$2;
.super Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;
.source "MCPExtension2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/pingan/paphone/extension/MCPExtension2$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 281
    const-string v0, "MCPExtension"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    # ++operator for: Lcom/pingan/paphone/extension/MCPExtension2;->releaseCount:I
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$304()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->releaseByPost(Landroid/os/Handler;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v0, "MCPExtension"

    const-string v1, "MCPExtension-->\u91ca\u653e\u5206\u673a\u53f7\u4e09\u6b21\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "MCPExtension"

    const-string v1, "\u91ca\u653e\u5206\u673a\u53f7error--handler send GET_EXTENSION_RELEASE  "

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$2;->val$handler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onSuccess(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/pingan/paphone/extension/MCPExtension2;->releaseCount:I
    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->access$302(I)I

    .line 251
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    # setter for: Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;
    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->access$002(Lcom/google/gson/Gson;)Lcom/google/gson/Gson;

    .line 252
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->gson:Lcom/google/gson/Gson;
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/pingan/domain/ExtensionDateBean;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/domain/ExtensionDateBean;

    .line 255
    if-eqz v0, :cond_0

    .line 259
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91ca\u653e\u5206\u673a\u53f7\u6210\u529f--response -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "MCPExtension"

    const-string v1, "\u91ca\u653e\u5206\u673a\u53f7--handler send GET_EXTENSION_RELEASE  "

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$2;->val$handler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 269
    const-string v0, "MCPExtension"

    const-string v1, "\u91ca\u653e\u5206\u673a\u53f7--json\u683c\u5f0f\u9519\u8bef "

    invoke-static {v0, v1}, Lcom/pingan/paphone/utils/LogM;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :catch_1
    move-exception v0

    .line 271
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u91ca\u653e\u5206\u673a\u53f7--->Exception--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pingan/paphone/utils/LogM;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
