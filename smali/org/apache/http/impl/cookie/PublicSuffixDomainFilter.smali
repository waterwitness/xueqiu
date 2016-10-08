.class public Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;
.super Ljava/lang/Object;
.source "PublicSuffixDomainFilter.java"

# interfaces
.implements Lorg/apache/http/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixList;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "Cookie handler"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string v0, "Public suffix list"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    .line 67
    new-instance v0, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-virtual {p2}, Lorg/apache/http/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "Cookie handler"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    .line 59
    const-string v0, "Public suffix matcher"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    .line 60
    return-void
.end method

.method public static decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;
    .locals 1

    .prologue
    .line 100
    const-string v0, "Cookie attribute handler"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;-><init>(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 2

    .prologue
    .line 75
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->handler:Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CommonCookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 91
    return-void
.end method
