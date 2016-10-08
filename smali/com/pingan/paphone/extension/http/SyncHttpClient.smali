.class public abstract Lcom/pingan/paphone/extension/http/SyncHttpClient;
.super Lcom/pingan/paphone/extension/http/AsyncHttpClient;
.source "SyncHttpClient.java"


# instance fields
.field private responseCode:I

.field protected responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

.field protected result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/pingan/paphone/extension/http/AsyncHttpClient;-><init>()V

    .line 18
    new-instance v0, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;

    invoke-direct {v0, p0}, Lcom/pingan/paphone/extension/http/SyncHttpClient$1;-><init>(Lcom/pingan/paphone/extension/http/SyncHttpClient;)V

    iput-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/pingan/paphone/extension/http/SyncHttpClient;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseCode:I

    return p1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 122
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 117
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0, p1, p3}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 79
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 92
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 87
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseCode:I

    return v0
.end method

.method public abstract onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 112
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 107
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->put(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 102
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->responseHandler:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/pingan/paphone/extension/http/SyncHttpClient;->put(Ljava/lang/String;Lcom/pingan/paphone/extension/http/RequestParams;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 97
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    if-eqz p4, :cond_0

    .line 63
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v0, Lcom/pingan/paphone/extension/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/pingan/paphone/extension/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V

    .line 70
    invoke-virtual {v0}, Lcom/pingan/paphone/extension/http/AsyncHttpRequest;->run()V

    .line 71
    return-void
.end method
