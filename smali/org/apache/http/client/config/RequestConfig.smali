.class public Lorg/apache/http/client/config/RequestConfig;
.super Ljava/lang/Object;
.source "RequestConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/client/config/RequestConfig;


# instance fields
.field private final authenticationEnabled:Z

.field private final circularRedirectsAllowed:Z

.field private final connectTimeout:I

.field private final connectionRequestTimeout:I

.field private final contentCompressionEnabled:Z

.field private final cookieSpec:Ljava/lang/String;

.field private final expectContinueEnabled:Z

.field private final localAddress:Ljava/net/InetAddress;

.field private final maxRedirects:I

.field private final proxy:Lorg/apache/http/HttpHost;

.field private final proxyPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final redirectsEnabled:Z

.field private final relativeRedirectsAllowed:Z

.field private final socketTimeout:I

.field private final staleConnectionCheckEnabled:Z

.field private final targetPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/apache/http/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lorg/apache/http/client/config/RequestConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    sput-object v0, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    return-void
.end method

.method protected constructor <init>()V
    .locals 17

    .prologue
    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lorg/apache/http/client/config/RequestConfig;-><init>(ZLorg/apache/http/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZ)V

    .line 68
    return-void
.end method

.method constructor <init>(ZLorg/apache/http/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/http/HttpHost;",
            "Ljava/net/InetAddress;",
            "Z",
            "Ljava/lang/String;",
            "ZZZIZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig;->expectContinueEnabled:Z

    .line 89
    iput-object p2, p0, Lorg/apache/http/client/config/RequestConfig;->proxy:Lorg/apache/http/HttpHost;

    .line 90
    iput-object p3, p0, Lorg/apache/http/client/config/RequestConfig;->localAddress:Ljava/net/InetAddress;

    .line 91
    iput-boolean p4, p0, Lorg/apache/http/client/config/RequestConfig;->staleConnectionCheckEnabled:Z

    .line 92
    iput-object p5, p0, Lorg/apache/http/client/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    .line 93
    iput-boolean p6, p0, Lorg/apache/http/client/config/RequestConfig;->redirectsEnabled:Z

    .line 94
    iput-boolean p7, p0, Lorg/apache/http/client/config/RequestConfig;->relativeRedirectsAllowed:Z

    .line 95
    iput-boolean p8, p0, Lorg/apache/http/client/config/RequestConfig;->circularRedirectsAllowed:Z

    .line 96
    iput p9, p0, Lorg/apache/http/client/config/RequestConfig;->maxRedirects:I

    .line 97
    iput-boolean p10, p0, Lorg/apache/http/client/config/RequestConfig;->authenticationEnabled:Z

    .line 98
    iput-object p11, p0, Lorg/apache/http/client/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    .line 99
    iput-object p12, p0, Lorg/apache/http/client/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    .line 100
    iput p13, p0, Lorg/apache/http/client/config/RequestConfig;->connectionRequestTimeout:I

    .line 101
    iput p14, p0, Lorg/apache/http/client/config/RequestConfig;->connectTimeout:I

    .line 102
    move/from16 v0, p15

    iput v0, p0, Lorg/apache/http/client/config/RequestConfig;->socketTimeout:I

    .line 103
    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->contentCompressionEnabled:Z

    .line 104
    return-void
.end method

.method public static copy(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lorg/apache/http/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lorg/apache/http/client/config/RequestConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isExpectContinueEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setLocalAddress(Ljava/net/InetAddress;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCookieSpec(Ljava/lang/String;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isRelativeRedirectsAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRelativeRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCircularRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setMaxRedirects(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setAuthenticationEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getTargetPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getProxyPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isDecompressionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setDecompressionEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->isContentCompressionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setContentCompressionEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lorg/apache/http/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lorg/apache/http/client/config/RequestConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/apache/http/client/config/RequestConfig;->clone()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/http/client/config/RequestConfig;
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/config/RequestConfig;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/apache/http/client/config/RequestConfig;->connectTimeout:I

    return v0
.end method

.method public getConnectionRequestTimeout()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lorg/apache/http/client/config/RequestConfig;->connectionRequestTimeout:I

    return v0
.end method

.method public getCookieSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/http/client/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/http/client/config/RequestConfig;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMaxRedirects()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/apache/http/client/config/RequestConfig;->maxRedirects:I

    return v0
.end method

.method public getProxy()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/http/client/config/RequestConfig;->proxy:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public getProxyPreferredAuthSchemes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/http/client/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lorg/apache/http/client/config/RequestConfig;->socketTimeout:I

    return v0
.end method

.method public getTargetPreferredAuthSchemes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/http/client/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    return-object v0
.end method

.method public isAuthenticationEnabled()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->authenticationEnabled:Z

    return v0
.end method

.method public isCircularRedirectsAllowed()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->circularRedirectsAllowed:Z

    return v0
.end method

.method public isContentCompressionEnabled()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->contentCompressionEnabled:Z

    return v0
.end method

.method public isDecompressionEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->contentCompressionEnabled:Z

    return v0
.end method

.method public isExpectContinueEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->expectContinueEnabled:Z

    return v0
.end method

.method public isRedirectsEnabled()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->redirectsEnabled:Z

    return v0
.end method

.method public isRelativeRedirectsAllowed()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->relativeRedirectsAllowed:Z

    return v0
.end method

.method public isStaleConnectionCheckEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig;->staleConnectionCheckEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, "expectContinueEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/client/config/RequestConfig;->expectContinueEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/config/RequestConfig;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, ", localAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/config/RequestConfig;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, ", cookieSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ", redirectsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/client/config/RequestConfig;->redirectsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, ", relativeRedirectsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/client/config/RequestConfig;->relativeRedirectsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, ", maxRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/client/config/RequestConfig;->maxRedirects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    const-string v1, ", circularRedirectsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/client/config/RequestConfig;->circularRedirectsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, ", authenticationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/client/config/RequestConfig;->authenticationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, ", targetPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, ", proxyPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/client/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, ", connectionRequestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/client/config/RequestConfig;->connectionRequestTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/client/config/RequestConfig;->connectTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, ", socketTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/client/config/RequestConfig;->socketTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    const-string v1, ", contentCompressionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/http/client/config/RequestConfig;->contentCompressionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
