.class public Lorg/apache/http/client/utils/HttpClientUtils;
.super Ljava/lang/Object;
.source "HttpClientUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static closeQuietly(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 71
    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Lorg/apache/http/client/HttpClient;)V
    .locals 1

    .prologue
    .line 139
    if-eqz p0, :cond_0

    .line 140
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Lorg/apache/http/client/methods/CloseableHttpResponse;)V
    .locals 1

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 108
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
