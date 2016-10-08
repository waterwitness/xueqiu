.class final Lcom/tencent/open/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# instance fields
.field final synthetic a:Lcom/tencent/open/i;


# direct methods
.method public constructor <init>(Lcom/tencent/open/i;)V
    .locals 2

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    return-void
.end method


# virtual methods
.method public final onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1259
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onComplete"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1262
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1263
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1264
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1265
    return-void
.end method

.method public final onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1249
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onConnectTimeoutException"

    invoke-static {v0, v1, p1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1251
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1252
    const/4 v1, -0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1254
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1255
    return-void
.end method

.method public final onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1239
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onHttpStatusException"

    invoke-static {v0, v1, p1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1241
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1242
    const/16 v1, -0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/open/HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1244
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1245
    return-void
.end method

.method public final onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1229
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onIOException"

    invoke-static {v0, v1, p1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1231
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1232
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1234
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1235
    return-void
.end method

.method public final onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1219
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onJSONException"

    invoke-static {v0, v1, p1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1221
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1222
    const/4 v1, -0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1224
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1225
    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1211
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1212
    const/4 v1, -0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1214
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1215
    return-void
.end method

.method public final onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1201
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onNetworkUnavailableException"

    invoke-static {v0, v1, p1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1203
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1204
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/open/NetworkUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1206
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1207
    return-void
.end method

.method public final onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1191
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onSocketTimeoutException"

    invoke-static {v0, v1, p1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1193
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1194
    const/4 v1, -0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1196
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1197
    return-void
.end method

.method public final onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1181
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, RequestListener() onUnknowException"

    invoke-static {v0, v1, p1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1183
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1184
    const/4 v1, -0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1186
    iget-object v1, p0, Lcom/tencent/open/l;->a:Lcom/tencent/open/i;

    invoke-static {v1}, Lcom/tencent/open/i;->c(Lcom/tencent/open/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1187
    return-void
.end method
