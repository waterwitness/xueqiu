.class public Lorg/apache/http/impl/cookie/PublicSuffixListParser;
.super Ljava/lang/Object;
.source "PublicSuffixListParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;

.field private final parser:Lorg/apache/http/conn/util/PublicSuffixListParser;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/cookie/PublicSuffixFilter;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;

    .line 52
    new-instance v0, Lorg/apache/http/conn/util/PublicSuffixListParser;

    invoke-direct {v0}, Lorg/apache/http/conn/util/PublicSuffixListParser;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->parser:Lorg/apache/http/conn/util/PublicSuffixListParser;

    .line 53
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->parser:Lorg/apache/http/conn/util/PublicSuffixListParser;

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/util/PublicSuffixListParser;->parse(Ljava/io/Reader;)Lorg/apache/http/conn/util/PublicSuffixList;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;

    invoke-virtual {v0}, Lorg/apache/http/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->setPublicSuffixes(Ljava/util/Collection;)V

    .line 66
    iget-object v1, p0, Lorg/apache/http/impl/cookie/PublicSuffixListParser;->filter:Lorg/apache/http/impl/cookie/PublicSuffixFilter;

    invoke-virtual {v0}, Lorg/apache/http/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->setExceptions(Ljava/util/Collection;)V

    .line 67
    return-void
.end method
