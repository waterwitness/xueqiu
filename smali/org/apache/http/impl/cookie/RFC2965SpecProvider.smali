.class public Lorg/apache/http/impl/cookie/RFC2965SpecProvider;
.super Ljava/lang/Object;
.source "RFC2965SpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation

.annotation build Lorg/apache/http/annotation/Obsolete;
.end annotation


# instance fields
.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    .line 59
    iput-object p1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    .line 60
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_1

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965Spec;

    iget-boolean v1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    const/16 v2, 0x9

    new-array v2, v2, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v5, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v4, v5}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    .line 87
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
