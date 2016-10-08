.class Lorg/apache/http/impl/execchain/ResponseEntityProxy;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "ResponseEntityProxy.java"

# interfaces
.implements Lorg/apache/http/conn/EofSensorWatcher;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 61
    iput-object p2, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    .line 62
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 68
    :cond_0
    return-void
.end method

.method public static enchance(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .locals 2

    .prologue
    .line 53
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 55
    new-instance v1, Lorg/apache/http/impl/execchain/ResponseEntityProxy;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V

    .line 96
    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 114
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 118
    const/4 v0, 0x0

    return v0

    .line 116
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/conn/EofSensorInputStream;

    iget-object v1, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_1

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 80
    :cond_1
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReleased()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 128
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 129
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 138
    return v1

    :cond_1
    move v0, v1

    .line 124
    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    if-eqz v0, :cond_0

    .line 132
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResponseEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0
.end method
