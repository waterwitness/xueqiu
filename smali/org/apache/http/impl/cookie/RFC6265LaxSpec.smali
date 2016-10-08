.class public Lorg/apache/http/impl/cookie/RFC6265LaxSpec;
.super Lorg/apache/http/impl/cookie/RFC6265CookieSpecBase;
.source "RFC6265LaxSpec.java"


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/http/impl/cookie/LaxMaxAgeHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/LaxMaxAgeHandler;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/http/impl/cookie/LaxExpiresHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/LaxExpiresHandler;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecBase;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    .line 50
    return-void
.end method

.method varargs constructor <init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecBase;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    .line 54
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "rfc6265-lax"

    return-object v0
.end method
