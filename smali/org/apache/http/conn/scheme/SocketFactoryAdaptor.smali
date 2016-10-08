.class Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/scheme/SchemeSocketFactory;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    .line 48
    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    if-nez p4, :cond_0

    if-lez p5, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_2

    :goto_0
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 66
    :cond_1
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 68
    iget-object v1, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, p1, v2, v0, p6}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 64
    :cond_2
    const/4 p5, 0x0

    goto :goto_0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 53
    iget-object v1, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->createSocket(Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 85
    :cond_0
    if-ne p0, p1, :cond_1

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, p1, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    check-cast p1, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;

    iget-object v1, p1, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SocketFactoryAdaptor;->factory:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
