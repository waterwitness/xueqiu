.class public Lorg/apache/http/cookie/CookiePriorityComparator;
.super Ljava/lang/Object;
.source "CookiePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/cookie/CookiePriorityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/http/cookie/CookiePriorityComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookiePriorityComparator;-><init>()V

    sput-object v0, Lorg/apache/http/cookie/CookiePriorityComparator;->INSTANCE:Lorg/apache/http/cookie/CookiePriorityComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPathLength(Lorg/apache/http/cookie/Cookie;)I
    .locals 1

    .prologue
    .line 49
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    check-cast p2, Lorg/apache/http/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookiePriorityComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/http/cookie/CookiePriorityComparator;->getPathLength(Lorg/apache/http/cookie/Cookie;)I

    move-result v0

    .line 56
    invoke-direct {p0, p2}, Lorg/apache/http/cookie/CookiePriorityComparator;->getPathLength(Lorg/apache/http/cookie/Cookie;)I

    move-result v1

    .line 58
    sub-int v0, v1, v0

    .line 59
    if-nez v0, :cond_0

    instance-of v1, p1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v1, :cond_0

    .line 60
    check-cast p1, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    .line 61
    check-cast p2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    .line 62
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 66
    :cond_0
    return v0
.end method
