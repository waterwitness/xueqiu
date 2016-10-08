.class public final Lcom/xueqiu/android/base/b/a/a;
.super Ljava/lang/Object;
.source "RequestUtil.java"


# direct methods
.method public static a(Lcom/android/volley/k;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/volley/k;->c:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    if-eqz v0, :cond_1

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/android/volley/k;->b:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/volley/k;->c:Ljava/util/Map;

    invoke-static {v3}, Lcom/xueqiu/android/base/b/a/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 30
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    new-instance v0, Lcom/android/volley/m;

    invoke-direct {v0}, Lcom/android/volley/m;-><init>()V

    throw v0

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 36
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 37
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 46
    :goto_1
    return-object v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/volley/k;->b:[B

    iget-object v2, p0, Lcom/android/volley/k;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/xueqiu/android/base/b/a/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1
.end method
