.class final Lcom/tencent/tauth/c;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tauth/DownloadFileFromWeiyun;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 256
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 257
    const/16 v2, 0x3a98

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 258
    const/16 v2, 0x4e20

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 260
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 261
    const-string v2, "UTF-8"

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 262
    const-string v2, "TX_QQF_ANDROID"

    invoke-static {v3, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_port:I
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/ftn_handler/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_encrypt_url:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$100(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    :cond_0
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 270
    const/4 v8, 0x0

    .line 271
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$900(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const/high16 v3, 0x40000

    new-array v12, v3, [B

    .line 286
    const-wide/16 v6, 0x0

    .line 288
    const/4 v3, 0x0

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->isOriginal:Z
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v4

    const-wide/32 v14, 0x40000

    cmp-long v4, v4, v14

    if-lez v4, :cond_2

    const-wide/32 v4, 0x40000

    .line 291
    :goto_0
    const-wide/16 v14, 0x0

    add-long/2addr v4, v14

    move-wide/from16 v18, v4

    move-wide v4, v6

    move-object v6, v8

    move-wide/from16 v8, v18

    .line 292
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v7}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v14

    cmp-long v7, v8, v14

    if-gtz v7, :cond_3

    .line 293
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v13, "Accept-Encoding"

    const-string v14, "gzip"

    invoke-interface {v7, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v13, "Host"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;
    invoke-static {v14}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-interface {v7, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v13, "Cookie"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_name:Ljava/lang/String;
    invoke-static {v15}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_value:Ljava/lang/String;
    invoke-static {v15}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$300(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v13, "Pragma"

    const-string v14, "no-cache"

    invoke-interface {v7, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v13, "RANGE"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bytes="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :try_start_1
    invoke-interface {v10, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 303
    const-string v13, "weiyun_test"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "uploadFileToWeiyun doDownloadPic response:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    .line 307
    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 308
    const/16 v14, 0xc8

    if-eq v13, v14, :cond_1

    const/16 v14, 0xce

    if-ne v13, v14, :cond_3

    .line 309
    :cond_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 311
    :goto_2
    invoke-virtual {v6, v12}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4

    .line 312
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    int-to-long v14, v7

    add-long/2addr v4, v14

    goto :goto_2

    .line 275
    :catch_0
    move-exception v2

    .line 277
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 279
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    :goto_3
    return-void

    .line 290
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v4

    goto/16 :goto_0

    .line 320
    :catch_1
    move-exception v7

    .line 321
    add-int/lit8 v3, v3, 0x1

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->MAX_ERROR_TIMES:I
    invoke-static {v13}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I

    move-result v13

    if-le v3, v13, :cond_4

    .line 323
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    const-string v2, "weiyun_test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uploadFileToWeiyun doDownloadPic error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 327
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    :cond_3
    :goto_4
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 384
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 394
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 395
    const-string v3, "\u4e0b\u8f7d\u6587\u4ef6\u6210\u529f"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 333
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v7}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v14

    sub-long v8, v14, v8

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-lez v7, :cond_3

    .line 337
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v7}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/32 v14, 0x40000

    cmp-long v7, v8, v14

    if-lez v7, :cond_5

    const-wide/32 v8, 0x40000

    .line 338
    :goto_5
    add-long/2addr v8, v4

    .line 339
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 340
    const/4 v13, 0x2

    iput v13, v7, Landroid/os/Message;->what:I

    .line 341
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v14, 0x64

    mul-long/2addr v14, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    move-object/from16 v16, v0

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static/range {v16 .. v16}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v16

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 337
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J
    invoke-static {v7}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J

    move-result-wide v8

    sub-long/2addr v8, v4

    goto :goto_5

    .line 347
    :cond_6
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v3, v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v2, "Host"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v3, v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v2, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_name:Ljava/lang/String;
    invoke-static {v5}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_value:Ljava/lang/String;
    invoke-static {v5}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$300(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v2, "Pragma"

    const-string v4, "no-cache"

    invoke-interface {v3, v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :try_start_3
    invoke-interface {v10, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 356
    const-string v3, "weiyun_test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uploadFileToWeiyun doDownloadPic response:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 360
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 361
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_7

    const/16 v4, 0xce

    if-ne v3, v4, :cond_9

    .line 362
    :cond_7
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 364
    :goto_6
    invoke-virtual {v8, v12}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_9

    .line 365
    const/4 v3, 0x0

    invoke-virtual {v11, v12, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 369
    :catch_2
    move-exception v2

    .line 371
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->MAX_ERROR_TIMES:I
    invoke-static {v4}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I

    move-result v4

    if-le v3, v4, :cond_8

    .line 372
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    const-string v3, "weiyun_test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uploadFileToWeiyun doDownloadPic error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 376
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    move-object v6, v8

    goto/16 :goto_4

    :cond_9
    move-object v6, v8

    .line 380
    goto/16 :goto_4

    .line 385
    :catch_3
    move-exception v2

    .line 386
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 388
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/tauth/DownloadFileFromWeiyun;

    # getter for: Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3
.end method
