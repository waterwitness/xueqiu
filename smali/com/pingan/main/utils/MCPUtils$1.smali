.class Lcom/pingan/main/utils/MCPUtils$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MCPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/main/utils/MCPUtils;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 132
    if-eqz p3, :cond_0

    .line 133
    const-string v0, "MCPExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "MCPExtension"

    const-string v1, "\u8bf7\u6c42\u5931\u8d25\uff1aarg2=null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "GBK"

    invoke-direct {v0, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    const-string v1, "MCPExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u6c42\u6210\u529f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 104
    const-class v2, Lcom/pingan/main/utils/ExtensionDateBean;

    .line 103
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pingan/main/utils/ExtensionDateBean;

    .line 105
    if-nez v0, :cond_1

    .line 108
    const-string v0, "MCPExtension"

    const-string v1, "getExtension-->Json\u6570\u636e\u89e3\u6790\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 99
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    if-nez v1, :cond_2

    .line 112
    const-string v0, "MCPExtension"

    const-string v1, "getExtension-->Json\u6570\u636e\u89e3\u6790--data=null\uff01"

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v1, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->message:Ljava/lang/String;

    .line 116
    const-string v2, "MCPExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getExtension--->msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v3, v3, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-bucket="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v3, v3, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pingan/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "S"

    iget-object v2, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v2, v2, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->flag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v1, v1, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->bucketName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/pingan/main/utils/MCPUtils;->mUploadUtil:Lcom/pingan/a/a/g;

    iget-object v2, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v2, v2, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->bucketName:Ljava/lang/String;

    .line 1033
    iput-object v2, v1, Lcom/pingan/a/a/g;->c:Ljava/lang/String;

    .line 119
    sget-object v1, Lcom/pingan/main/utils/MCPUtils;->mUploadUtil:Lcom/pingan/a/a/g;

    iget-object v0, v0, Lcom/pingan/main/utils/ExtensionDateBean;->data:Lcom/pingan/main/utils/ExtensionDateBean$LdData;

    iget-object v0, v0, Lcom/pingan/main/utils/ExtensionDateBean$LdData;->token:Ljava/lang/String;

    .line 1037
    iput-object v0, v1, Lcom/pingan/a/a/g;->d:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/pingan/main/utils/MCPUtils;->mUploadUtil:Lcom/pingan/a/a/g;

    sget-object v1, Lcom/pingan/main/GlobalVarHolder;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pingan/a/a/g;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
