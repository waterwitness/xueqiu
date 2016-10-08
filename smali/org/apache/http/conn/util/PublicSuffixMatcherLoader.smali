.class public final Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;
.super Ljava/lang/Object;
.source "PublicSuffixMatcherLoader.java"


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static volatile DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .locals 5

    .prologue
    .line 81
    sget-object v0, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    if-nez v0, :cond_0

    .line 84
    const-class v0, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;

    const-string v2, "/mozilla/public-suffix-list.txt"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 86
    if-eqz v0, :cond_2

    .line 88
    :try_start_1
    invoke-static {v0}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->load(Ljava/net/URL;)Lorg/apache/http/conn/util/PublicSuffixMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_1
    sget-object v0, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    :try_start_3
    const-class v2, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 92
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const-string v3, "Failure loading public suffix list from default resource"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 97
    :cond_2
    :try_start_4
    new-instance v0, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static load(Ljava/io/File;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .locals 2

    .prologue
    .line 69
    const-string v0, "File"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    :try_start_0
    invoke-static {v0}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private static load(Ljava/io/InputStream;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lorg/apache/http/conn/util/PublicSuffixListParser;

    invoke-direct {v0}, Lorg/apache/http/conn/util/PublicSuffixListParser;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/util/PublicSuffixListParser;->parseByType(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    .line 55
    new-instance v1, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-direct {v1, v0}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static load(Ljava/net/URL;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .locals 2

    .prologue
    .line 59
    const-string v0, "URL"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 62
    :try_start_0
    invoke-static {v0}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
