.class final Lcom/tencent/open/v;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/open/i;


# direct methods
.method constructor <init>(Lcom/tencent/open/i;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/tencent/open/v;->a:Lcom/tencent/open/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 1148
    const-string v0, "openSDK_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenUi, handleMessage msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 1152
    const/4 v1, 0x0

    .line 1154
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "ret"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1160
    :goto_0
    if-nez v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/tencent/open/v;->a:Lcom/tencent/open/i;

    invoke-static {v0}, Lcom/tencent/open/i;->b(Lcom/tencent/open/i;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 1169
    :goto_1
    return-void

    .line 1157
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1158
    iget-object v0, p0, Lcom/tencent/open/v;->a:Lcom/tencent/open/i;

    invoke-static {v0}, Lcom/tencent/open/i;->a(Lcom/tencent/open/i;)V

    move v0, v1

    goto :goto_0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/v;->a:Lcom/tencent/open/i;

    invoke-static {v0}, Lcom/tencent/open/i;->a(Lcom/tencent/open/i;)V

    goto :goto_1

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/tencent/open/v;->a:Lcom/tencent/open/i;

    invoke-static {v0}, Lcom/tencent/open/i;->b(Lcom/tencent/open/i;)Lcom/tencent/tauth/IUiListener;

    move-result-object v1

    new-instance v2, Lcom/tencent/tauth/UiError;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_1
.end method
