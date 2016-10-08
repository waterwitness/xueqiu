.class public final Lcom/android/volley/toolbox/a;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/h;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/android/volley/toolbox/g;

.field protected final c:Lcom/android/volley/toolbox/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/volley/z;->b:Z

    sput-boolean v0, Lcom/android/volley/toolbox/a;->a:Z

    .line 56
    const/16 v0, 0xbb8

    sput v0, Lcom/android/volley/toolbox/a;->d:I

    .line 58
    const/16 v0, 0x1000

    sput v0, Lcom/android/volley/toolbox/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/g;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/volley/toolbox/b;

    sget v1, Lcom/android/volley/toolbox/a;->e:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/a;-><init>(Lcom/android/volley/toolbox/g;Lcom/android/volley/toolbox/b;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/android/volley/toolbox/g;Lcom/android/volley/toolbox/b;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/volley/toolbox/a;->b:Lcom/android/volley/toolbox/g;

    .line 79
    iput-object p2, p0, Lcom/android/volley/toolbox/a;->c:Lcom/android/volley/toolbox/b;

    .line 80
    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 260
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lcom/android/volley/n;Lcom/android/volley/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n",
            "<*>;",
            "Lcom/android/volley/y;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    .line 6523
    iget-object v0, p1, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 191
    invoke-virtual {p1}, Lcom/android/volley/n;->h()I

    move-result v1

    .line 194
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/volley/v;->a(Lcom/android/volley/y;)V
    :try_end_0
    .catch Lcom/android/volley/y; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 201
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 198
    throw v0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 226
    new-instance v2, Lcom/android/volley/toolbox/p;

    iget-object v0, p0, Lcom/android/volley/toolbox/a;->c:Lcom/android/volley/toolbox/b;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/android/volley/toolbox/p;-><init>(Lcom/android/volley/toolbox/b;I)V

    .line 228
    const/4 v1, 0x0

    .line 230
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/android/volley/w;

    invoke-direct {v0}, Lcom/android/volley/w;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :catchall_0
    move-exception v0

    .line 243
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :goto_0
    iget-object v3, p0, Lcom/android/volley/toolbox/a;->c:Lcom/android/volley/toolbox/b;

    invoke-virtual {v3, v1}, Lcom/android/volley/toolbox/b;->a([B)V

    .line 250
    invoke-virtual {v2}, Lcom/android/volley/toolbox/p;->close()V

    throw v0

    .line 234
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/volley/toolbox/a;->c:Lcom/android/volley/toolbox/b;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/android/volley/toolbox/b;->a(I)[B

    move-result-object v1

    .line 236
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 237
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/volley/toolbox/p;->write([BII)V

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {v2}, Lcom/android/volley/toolbox/p;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 243
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 249
    :goto_2
    iget-object v3, p0, Lcom/android/volley/toolbox/a;->c:Lcom/android/volley/toolbox/b;

    invoke-virtual {v3, v1}, Lcom/android/volley/toolbox/b;->a([B)V

    .line 250
    invoke-virtual {v2}, Lcom/android/volley/toolbox/p;->close()V

    return-object v0

    .line 247
    :catch_0
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/volley/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/volley/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/volley/n;)Lcom/android/volley/k;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/n",
            "<*>;)",
            "Lcom/android/volley/k;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 86
    :goto_0
    const/4 v3, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1322
    iget-object v4, p1, Lcom/android/volley/n;->k:Lcom/android/volley/c;

    .line 2205
    if-eqz v4, :cond_1

    .line 2209
    iget-object v5, v4, Lcom/android/volley/c;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2210
    const-string v5, "If-None-Match"

    iget-object v8, v4, Lcom/android/volley/c;->b:Ljava/lang/String;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    :cond_0
    iget-wide v8, v4, Lcom/android/volley/c;->c:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    .line 2214
    new-instance v5, Ljava/util/Date;

    iget-wide v8, v4, Lcom/android/volley/c;->c:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 2215
    const-string v4, "If-Modified-Since"

    invoke-static {v5}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/android/volley/toolbox/a;->b:Lcom/android/volley/toolbox/g;

    invoke-interface {v4, p1, v0}, Lcom/android/volley/toolbox/g;->a(Lcom/android/volley/n;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 94
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 95
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 97
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/a;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    .line 99
    const/16 v0, 0x130

    if-ne v5, v0, :cond_3

    .line 100
    new-instance v0, Lcom/android/volley/k;

    const/16 v5, 0x130

    .line 2322
    iget-object v4, p1, Lcom/android/volley/n;->k:Lcom/android/volley/c;

    .line 100
    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    const/4 v8, 0x1

    invoke-direct {v0, v5, v4, v1, v8}, Lcom/android/volley/k;-><init>(I[BLjava/util/Map;Z)V

    .line 127
    :goto_2
    return-object v0

    .line 3322
    :cond_2
    iget-object v4, p1, Lcom/android/volley/n;->k:Lcom/android/volley/c;

    .line 100
    iget-object v4, v4, Lcom/android/volley/c;->a:[B

    goto :goto_1

    .line 106
    :cond_3
    const/16 v0, 0x12d

    if-eq v5, v0, :cond_4

    const/16 v0, 0x12e

    if-ne v5, v0, :cond_5

    .line 107
    :cond_4
    const-string v0, "Location"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4297
    iput-object v0, p1, Lcom/android/volley/n;->c:Ljava/lang/String;

    .line 112
    :cond_5
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 113
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/a;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 121
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 5175
    sget-boolean v0, Lcom/android/volley/toolbox/a;->a:Z

    if-nez v0, :cond_6

    sget v0, Lcom/android/volley/toolbox/a;->d:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_7

    .line 5176
    :cond_6
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v0

    const/4 v8, 0x2

    if-eqz v2, :cond_a

    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    aput-object v0, v11, v8

    const/4 v0, 0x3

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v0

    const/4 v0, 0x4

    .line 5523
    iget-object v4, p1, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 5176
    invoke-interface {v4}, Lcom/android/volley/v;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v0

    invoke-static {v10, v11}, Lcom/android/volley/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_7
    const/16 v0, 0xc8

    if-lt v5, v0, :cond_8

    const/16 v0, 0x12b

    if-le v5, v0, :cond_b

    .line 125
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 129
    :catch_0
    move-exception v0

    const-string v0, "socket"

    new-instance v1, Lcom/android/volley/x;

    invoke-direct {v1}, Lcom/android/volley/x;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/a;->a(Ljava/lang/String;Lcom/android/volley/n;Lcom/android/volley/y;)V

    goto/16 :goto_0

    .line 117
    :cond_9
    const/4 v0, 0x0

    :try_start_1
    new-array v2, v0, [B

    goto :goto_3

    .line 5176
    :cond_a
    const-string v0, "null"

    goto :goto_4

    .line 127
    :cond_b
    new-instance v0, Lcom/android/volley/k;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v2, v1, v4}, Lcom/android/volley/k;-><init>(I[BLjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 131
    :catch_1
    move-exception v0

    const-string v0, "connection"

    new-instance v1, Lcom/android/volley/x;

    invoke-direct {v1}, Lcom/android/volley/x;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/a;->a(Ljava/lang/String;Lcom/android/volley/n;Lcom/android/volley/y;)V

    goto/16 :goto_0

    .line 132
    :catch_2
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 134
    :catch_3
    move-exception v0

    .line 137
    if-eqz v3, :cond_e

    .line 138
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 142
    const/16 v3, 0x12d

    if-eq v0, v3, :cond_c

    const/16 v3, 0x12e

    if-ne v0, v3, :cond_f

    .line 144
    :cond_c
    const-string v3, "Request at %s has been redirected to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6290
    iget-object v8, p1, Lcom/android/volley/n;->b:Ljava/lang/String;

    .line 144
    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/volley/n;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lcom/android/volley/z;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :goto_5
    if-eqz v2, :cond_13

    .line 149
    new-instance v3, Lcom/android/volley/k;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/android/volley/k;-><init>(I[BLjava/util/Map;Z)V

    .line 151
    const/16 v1, 0x191

    if-eq v0, v1, :cond_d

    const/16 v1, 0x193

    if-ne v0, v1, :cond_10

    .line 153
    :cond_d
    const-string v0, "auth"

    new-instance v1, Lcom/android/volley/a;

    invoke-direct {v1, v3}, Lcom/android/volley/a;-><init>(Lcom/android/volley/k;)V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/a;->a(Ljava/lang/String;Lcom/android/volley/n;Lcom/android/volley/y;)V

    goto/16 :goto_0

    .line 140
    :cond_e
    new-instance v1, Lcom/android/volley/l;

    invoke-direct {v1, v0}, Lcom/android/volley/l;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_f
    const-string v3, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/volley/n;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lcom/android/volley/z;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 155
    :cond_10
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_11

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_12

    .line 157
    :cond_11
    const-string v0, "redirect"

    new-instance v1, Lcom/android/volley/a;

    invoke-direct {v1, v3}, Lcom/android/volley/a;-><init>(Lcom/android/volley/k;)V

    invoke-static {v0, p1, v1}, Lcom/android/volley/toolbox/a;->a(Ljava/lang/String;Lcom/android/volley/n;Lcom/android/volley/y;)V

    goto/16 :goto_0

    .line 161
    :cond_12
    new-instance v0, Lcom/android/volley/w;

    invoke-direct {v0, v3}, Lcom/android/volley/w;-><init>(Lcom/android/volley/k;)V

    throw v0

    .line 164
    :cond_13
    new-instance v0, Lcom/android/volley/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/volley/j;-><init>(B)V

    throw v0
.end method
