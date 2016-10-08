.class public Lorg/apache/http/client/methods/HttpRequestWrapper;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "HttpRequestWrapper.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field private final original:Lorg/apache/http/HttpRequest;

.field private final target:Lorg/apache/http/HttpHost;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 64
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequest;

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    .line 65
    iput-object p2, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->target:Lorg/apache/http/HttpHost;

    .line 66
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    .line 67
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    .line 68
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    .line 73
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setHeaders([Lorg/apache/http/Header;)V

    .line 74
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpRequestWrapper$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;-><init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V

    return-void
.end method

.method public static wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lorg/apache/http/client/methods/HttpRequestWrapper;
    .locals 1

    .prologue
    .line 187
    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/client/methods/HttpRequestWrapper$HttpEntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;Lorg/apache/http/HttpHost;)V

    .line 191
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpRequestWrapper;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/client/methods/HttpRequestWrapper;-><init>(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal()Lorg/apache/http/HttpRequest;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    const-string v0, "/"

    .line 120
    :cond_1
    new-instance v1, Lorg/apache/http/message/BasicRequestLine;

    iget-object v2, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->method:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v1

    .line 115
    :cond_2
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->original:Lorg/apache/http/HttpRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTarget()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->target:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->version:Lorg/apache/http/ProtocolVersion;

    .line 83
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->uri:Ljava/net/URI;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestWrapper;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
