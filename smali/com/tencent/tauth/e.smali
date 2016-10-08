.class final Lcom/tencent/tauth/e;
.super Landroid/webkit/WebViewClient;
.source "TAuthView.java"


# instance fields
.field final synthetic a:Lcom/tencent/tauth/TAuthView;


# direct methods
.method private constructor <init>(Lcom/tencent/tauth/TAuthView;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tauth/TAuthView;B)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/tencent/tauth/e;-><init>(Lcom/tencent/tauth/TAuthView;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$4(Lcom/tencent/tauth/TAuthView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$4(Lcom/tencent/tauth/TAuthView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$4(Lcom/tencent/tauth/TAuthView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 261
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 262
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->mCallback:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/tauth/TAuthView;->access$2(Lcom/tencent/tauth/TAuthView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # invokes: Lcom/tencent/tauth/TAuthView;->parseResult(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lcom/tencent/tauth/TAuthView;->access$3(Lcom/tencent/tauth/TAuthView;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/TAuthView;->access$4(Lcom/tencent/tauth/TAuthView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    iget-object v1, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # invokes: Lcom/tencent/tauth/TAuthView;->returnResult()V
    invoke-static {v1}, Lcom/tencent/tauth/TAuthView;->access$5(Lcom/tencent/tauth/TAuthView;)V

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/tencent/tauth/e;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/TAuthView;->access$4(Lcom/tencent/tauth/TAuthView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 243
    goto :goto_0
.end method
