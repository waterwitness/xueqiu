.class public Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;
.super Lcom/tencent/tauth/http/BaseRequestListener;
.source "UploadPicListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadPicListener"


# instance fields
.field private mCallback:Lcom/tencent/tauth/http/Callback;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/http/Callback;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/tauth/http/BaseRequestListener;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    .line 22
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/high16 v7, -0x80000000

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tencent/tauth/http/BaseRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/tencent/tauth/http/ParseResoneJson;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 30
    const/4 v0, 0x0

    .line 31
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_0 .. :try_end_0} :catch_3

    .line 33
    :try_start_1
    const-string v2, "ret"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    const-string v2, "msg"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 39
    :goto_0
    if-nez v1, :cond_0

    .line 40
    :try_start_2
    new-instance v0, Lcom/tencent/tauth/bean/Pic;

    const-string v1, "albumid"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "lloc"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string v3, "sloc"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v4, "width"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 44
    const-string v6, "height"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/tencent/tauth/bean/Pic;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 45
    iget-object v1, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/http/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_2 .. :try_end_2} :catch_3

    .line 59
    :goto_1
    const-string v0, "UploadPicListener"

    invoke-static {v0, p1}, Lcom/tencent/tauth/http/TDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    :catch_0
    move-exception v2

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_0

    .line 47
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    invoke-interface {v2, v1, v0}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/tencent/tauth/http/CommonException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    iget-object v1, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 55
    :catch_3
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    invoke-virtual {v0}, Lcom/tencent/tauth/http/CommonException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/tencent/tauth/http/CommonException;->printStackTrace()V

    goto :goto_1
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    const/high16 v1, -0x80000000

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;->mCallback:Lcom/tencent/tauth/http/Callback;

    const/high16 v1, -0x80000000

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/tauth/http/Callback;->onFail(ILjava/lang/String;)V

    .line 70
    return-void
.end method
