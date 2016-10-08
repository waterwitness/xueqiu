.class Lorg/apache/http/impl/conn/CPoolProxy;
.super Ljava/lang/Object;
.source "CPoolProxy.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedHttpClientConnection;
.implements Lorg/apache/http/protocol/HttpContext;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private volatile poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/CPoolEntry;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 56
    return-void
.end method

.method public static detach(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 1

    .prologue
    .line 266
    invoke-static {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolProxy;->detach()Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public static getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 1

    .prologue
    .line 258
    invoke-static {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry()Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 262
    :cond_0
    return-object v0
.end method

.method private static getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;
    .locals 3

    .prologue
    .line 251
    const-class v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected connection proxy class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    const-class v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/CPoolProxy;

    return-object v0
.end method

.method public static newProxy(Lorg/apache/http/impl/conn/CPoolEntry;)Lorg/apache/http/HttpClientConnection;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/CPoolProxy;-><init>(Lorg/apache/http/impl/conn/CPoolEntry;)V

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 138
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->closeConnection()V

    .line 90
    :cond_0
    return-void
.end method

.method detach()Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 65
    return-object v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->flush()V

    .line 178
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 208
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 209
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 70
    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method getPoolEntry()Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/CPoolEntry;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isResponseAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 173
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 226
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 163
    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 158
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 218
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->setSocketTimeout(I)V

    .line 123
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->shutdownConnection()V

    .line 98
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPoolProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    const-string v1, "detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
