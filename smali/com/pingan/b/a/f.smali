.class public final Lcom/pingan/b/a/f;
.super Ljava/lang/Object;
.source "HttpManager.java"


# instance fields
.field a:Lcom/pingan/b/a/a;

.field public b:Lcom/pingan/b/a/g;

.field private c:Ljava/lang/String;

.field private d:Lcom/pingan/b/a/p;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pingan/b/a/f;-><init>(B)V

    .line 31
    return-void
.end method

.method private constructor <init>(B)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 34
    const/16 v4, 0xa

    const/16 v5, 0x1e

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/pingan/b/a/f;-><init>(Lcom/pingan/b/a/k;Lcom/pingan/b/a/g;Ljava/lang/String;IILcom/pingan/b/a/p;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/pingan/b/a/k;Lcom/pingan/b/a/g;Ljava/lang/String;IILcom/pingan/b/a/p;)V
    .locals 5

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p3, p0, Lcom/pingan/b/a/f;->c:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/pingan/b/a/a;->a()Lcom/pingan/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    .line 46
    iget-object v0, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    mul-int/lit16 v1, p4, 0x3e8

    invoke-virtual {v0, v1}, Lcom/pingan/b/a/a;->setConnectTimeout(I)V

    .line 47
    iget-object v0, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    mul-int/lit16 v1, p5, 0x3e8

    invoke-virtual {v0, v1}, Lcom/pingan/b/a/a;->setResponseTimeout(I)V

    .line 48
    iget-object v0, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    invoke-static {}, Lcom/pingan/b/a/q;->a()Lcom/pingan/b/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pingan/b/a/q;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pingan/b/a/a;->setUserAgent(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pingan/b/a/a;->setEnableRedirects(Z)V

    .line 50
    iget-object v0, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    new-instance v1, Lcom/pingan/b/a/o;

    invoke-direct {v1}, Lcom/pingan/b/a/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pingan/b/a/a;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 51
    const-class v0, Lcom/pingan/b/a/d;

    invoke-static {v0}, Lcom/pingan/b/a/a;->blockRetryExceptionClass(Ljava/lang/Class;)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    iget-object v1, p1, Lcom/pingan/b/a/k;->a:Ljava/lang/String;

    iget v2, p1, Lcom/pingan/b/a/k;->b:I

    iget-object v3, p1, Lcom/pingan/b/a/k;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/pingan/b/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pingan/b/a/a;->setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/pingan/b/a/f;->b:Lcom/pingan/b/a/g;

    .line 56
    if-nez p2, :cond_1

    .line 57
    new-instance v0, Lcom/pingan/b/a/f$1;

    invoke-direct {v0, p0}, Lcom/pingan/b/a/f$1;-><init>(Lcom/pingan/b/a/f;)V

    iput-object v0, p0, Lcom/pingan/b/a/f;->b:Lcom/pingan/b/a/g;

    .line 75
    :cond_1
    iput-object p6, p0, Lcom/pingan/b/a/f;->d:Lcom/pingan/b/a/p;

    .line 76
    return-void
.end method

.method private a(Lcom/pingan/b/a/e;)Lcom/pingan/b/a/e;
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/pingan/b/a/f$3;

    invoke-direct {v0, p0, p1}, Lcom/pingan/b/a/f$3;-><init>(Lcom/pingan/b/a/f;Lcom/pingan/b/a/e;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/pingan/b/a/i;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Lcom/pingan/b/a/c;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v3, Lcom/pingan/b/a/h;

    invoke-direct {v3}, Lcom/pingan/b/a/h;-><init>()V

    .line 183
    iget-object v0, p2, Lcom/pingan/b/a/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2099
    const-string v5, "UTF-8"

    .line 2100
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "text/plain; charset="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3087
    :try_start_0
    iget-object v6, v3, Lcom/pingan/b/a/h;->c:Ljava/io/ByteArrayOutputStream;

    iget-object v7, v3, Lcom/pingan/b/a/h;->b:[B

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 3088
    iget-object v6, v3, Lcom/pingan/b/a/h;->c:Ljava/io/ByteArrayOutputStream;

    .line 3157
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Content-Disposition: form-data; name="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3158
    invoke-static {v7, v1}, Lcom/pingan/b/a/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    const-string v1, "\r\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingan/b/d/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 3088
    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 3089
    iget-object v1, v3, Lcom/pingan/b/a/h;->c:Ljava/io/ByteArrayOutputStream;

    invoke-static {v5}, Lcom/pingan/b/a/h;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 3090
    iget-object v1, v3, Lcom/pingan/b/a/h;->c:Ljava/io/ByteArrayOutputStream;

    sget-object v5, Lcom/pingan/b/a/h;->a:[B

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 3091
    iget-object v1, v3, Lcom/pingan/b/a/h;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 3092
    iget-object v0, v3, Lcom/pingan/b/a/h;->c:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lcom/pingan/b/a/h;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3093
    :catch_0
    move-exception v0

    .line 3094
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 186
    :cond_0
    iget-object v0, p2, Lcom/pingan/b/a/i;->a:[B

    if-eqz v0, :cond_2

    .line 187
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p2, Lcom/pingan/b/a/i;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    :try_start_1
    const-string v1, "file"

    iget-object v4, p2, Lcom/pingan/b/a/i;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/pingan/b/a/i;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v0, v5}, Lcom/pingan/b/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :cond_1
    invoke-virtual {v3, p3, p5}, Lcom/pingan/b/a/h;->a(Lcom/pingan/b/a/j;Lcom/pingan/b/a/c;)Lcom/pingan/b/a/b;

    move-result-object v2

    .line 204
    iget-object v0, p0, Lcom/pingan/b/a/f;->b:Lcom/pingan/b/a/g;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/http/Header;

    invoke-interface {v0, v1}, Lcom/pingan/b/a/g;->a([Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p6

    .line 205
    invoke-virtual/range {v0 .. v6}, Lcom/pingan/b/a/f;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Z)V

    .line 206
    :goto_1
    return-void

    .line 190
    :catch_1
    move-exception v0

    .line 191
    invoke-static {v0}, Lcom/pingan/b/a/m;->a(Ljava/lang/Exception;)Lcom/pingan/b/a/m;

    move-result-object v0

    invoke-interface {p4, v0, v2}, Lcom/pingan/b/a/e;->a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 196
    :cond_2
    :try_start_2
    const-string v0, "file"

    iget-object v1, p2, Lcom/pingan/b/a/i;->b:Ljava/io/File;

    iget-object v4, p2, Lcom/pingan/b/a/i;->e:Ljava/lang/String;

    const-string v5, "filename"

    .line 4113
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4116
    :try_start_3
    invoke-virtual {v3, v0, v5, v6, v4}, Lcom/pingan/b/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v2

    .line 4120
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 4121
    if-eqz v0, :cond_1

    .line 4122
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 197
    :catch_2
    move-exception v0

    .line 198
    invoke-static {v0}, Lcom/pingan/b/a/m;->a(Ljava/lang/Exception;)Lcom/pingan/b/a/m;

    move-result-object v0

    invoke-interface {p4, v0, v2}, Lcom/pingan/b/a/e;->a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 4118
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lorg/apache/http/HttpEntity;[Lorg/apache/http/Header;Lcom/pingan/b/a/j;Lcom/pingan/b/a/e;Z)V
    .locals 15

    .prologue
    .line 116
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/pingan/b/a/f;->a(Lcom/pingan/b/a/e;)Lcom/pingan/b/a/e;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/pingan/b/a/f;->b:Lcom/pingan/b/a/g;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/pingan/b/a/g;->a([Lorg/apache/http/Header;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 119
    iget-object v2, p0, Lcom/pingan/b/a/f;->d:Lcom/pingan/b/a/p;

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/pingan/b/a/f;->d:Lcom/pingan/b/a/p;

    invoke-interface {v2}, Lcom/pingan/b/a/p;->a()Ljava/lang/String;

    move-result-object v3

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/pingan/b/a/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pingan/b/a/f;->d:Lcom/pingan/b/a/p;

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    new-instance v7, Lcom/pingan/b/a/l;

    move-object/from16 v0, p4

    invoke-direct {v7, v3, v1, v0}, Lcom/pingan/b/a/l;-><init>(Ljava/lang/String;Lcom/pingan/b/a/e;Lcom/pingan/b/a/j;)V

    .line 125
    iget-object v1, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/pingan/b/a/a;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 168
    :goto_1
    return-void

    .line 131
    :cond_1
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 133
    if-eqz p6, :cond_2

    .line 134
    iget-object v8, p0, Lcom/pingan/b/a/f;->c:Ljava/lang/String;

    .line 139
    :goto_2
    array-length v2, v4

    add-int/lit8 v2, v2, 0x1

    new-array v13, v2, [Lorg/apache/http/Header;

    .line 140
    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v2, v13, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v9

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 148
    array-length v2, v4

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "Host"

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v13, v2

    .line 150
    new-instance v14, Lcom/pingan/b/a/l;

    new-instance v4, Lcom/pingan/b/a/f$2;

    move-object v5, p0

    move-object v6, v1

    move-object/from16 v7, p5

    move-object/from16 v9, p4

    move-object v10, v13

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/pingan/b/a/f$2;-><init>(Lcom/pingan/b/a/f;Ljava/net/URI;Lcom/pingan/b/a/e;Ljava/lang/String;Lcom/pingan/b/a/j;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v4}, Lcom/pingan/b/a/f;->a(Lcom/pingan/b/a/e;)Lcom/pingan/b/a/e;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-direct {v14, v3, v1, v0}, Lcom/pingan/b/a/l;-><init>(Ljava/lang/String;Lcom/pingan/b/a/e;Lcom/pingan/b/a/j;)V

    .line 167
    iget-object v1, p0, Lcom/pingan/b/a/f;->a:Lcom/pingan/b/a/a;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, p2

    move-object v7, v14

    invoke-virtual/range {v1 .. v7}, Lcom/pingan/b/a/a;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 145
    :catch_0
    move-exception v1

    .line 146
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_3
    move-object/from16 v3, p1

    goto/16 :goto_0
.end method
