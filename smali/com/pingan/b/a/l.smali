.class public final Lcom/pingan/b/a/l;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ResponseHandler.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/pingan/b/a/j;

.field private c:Lcom/pingan/b/a/e;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private volatile h:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pingan/b/a/e;Lcom/pingan/b/a/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object v1, p0, Lcom/pingan/b/a/l;->e:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/pingan/b/a/l;->f:I

    .line 53
    iput-object v1, p0, Lcom/pingan/b/a/l;->g:Ljava/lang/String;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pingan/b/a/l;->h:J

    .line 61
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pingan/b/a/l;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    iput v1, p0, Lcom/pingan/b/a/l;->f:I

    .line 64
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingan/b/a/l;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iput-object p2, p0, Lcom/pingan/b/a/l;->c:Lcom/pingan/b/a/e;

    .line 70
    iput-object p3, p0, Lcom/pingan/b/a/l;->b:Lcom/pingan/b/a/j;

    .line 71
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "N/A"

    iput-object v1, p0, Lcom/pingan/b/a/l;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(I[Lorg/apache/http/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/pingan/b/a/m;
    .locals 17

    .prologue
    .line 76
    if-eqz p11, :cond_0

    move-object/from16 v0, p11

    instance-of v2, v0, Lcom/pingan/b/a/d;

    if-eqz v2, :cond_0

    .line 77
    invoke-static {}, Lcom/pingan/b/a/m;->a()Lcom/pingan/b/a/m;

    move-result-object v3

    .line 139
    :goto_0
    return-object v3

    .line 80
    :cond_0
    const/4 v5, 0x0

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v7, 0x0

    .line 83
    if-eqz p1, :cond_7

    .line 84
    move-object/from16 v0, p1

    array-length v8, v0

    const/4 v2, 0x0

    move-object v3, v6

    move-object v4, v5

    move v5, v2

    move-object v2, v7

    :goto_1
    if-ge v5, v8, :cond_6

    aget-object v6, p1, v5

    .line 85
    const-string v7, "X-Reqid"

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 86
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 84
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 87
    :cond_2
    const-string v7, "X-Log"

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 88
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 89
    :cond_3
    const-string v7, "X-Via"

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 90
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 91
    :cond_4
    const-string v7, "X-Px"

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 93
    :cond_5
    const-string v7, "Fw-Via"

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v7, v2

    move-object v6, v3

    move-object v5, v4

    .line 99
    :cond_7
    const/4 v4, 0x0

    .line 100
    const/16 v2, 0xc8

    move/from16 v0, p0

    if-eq v0, v2, :cond_11

    .line 101
    if-eqz p2, :cond_9

    .line 103
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v2, "utf-8"

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v4, "error"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    move-object/from16 v16, v3

    .line 121
    :goto_3
    if-nez p0, :cond_f

    .line 122
    const/4 v4, -0x1

    .line 123
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 124
    move-object/from16 v0, p11

    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_8

    .line 125
    if-eqz v2, :cond_a

    const-string v3, "UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 126
    const/16 v4, -0x3eb

    .line 139
    :cond_8
    :goto_4
    new-instance v3, Lcom/pingan/b/a/m;

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/pingan/b/a/m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v16, v3

    .line 110
    goto :goto_3

    .line 109
    :catch_1
    move-exception v2

    move-object v3, v4

    :goto_6
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object/from16 v16, v3

    .line 110
    goto :goto_3

    .line 112
    :cond_9
    if-eqz p11, :cond_11

    .line 113
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 114
    if-nez v3, :cond_10

    .line 115
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_3

    .line 127
    :cond_a
    if-eqz v2, :cond_b

    const-string v3, "Broken pipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 128
    const/16 v4, -0x3ed

    goto :goto_4

    .line 129
    :cond_b
    move-object/from16 v0, p11

    instance-of v2, v0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_c

    .line 130
    const/16 v4, -0x3ed

    goto :goto_4

    .line 131
    :cond_c
    move-object/from16 v0, p11

    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_d

    .line 132
    const/16 v4, -0x3e9

    goto :goto_4

    .line 133
    :cond_d
    move-object/from16 v0, p11

    instance-of v2, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v2, :cond_e

    move-object/from16 v0, p11

    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_8

    .line 134
    :cond_e
    const/16 v4, -0x3ec

    goto :goto_4

    .line 109
    :catch_2
    move-exception v2

    goto :goto_6

    .line 107
    :catch_3
    move-exception v2

    goto :goto_5

    :cond_f
    move/from16 v4, p0

    goto :goto_4

    :cond_10
    move-object/from16 v16, v3

    goto/16 :goto_3

    :cond_11
    move-object/from16 v16, v4

    goto/16 :goto_3
.end method


# virtual methods
.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 13

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pingan/b/a/l;->d:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v8, v0, v2

    .line 165
    iget-object v4, p0, Lcom/pingan/b/a/l;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/pingan/b/a/l;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/pingan/b/a/l;->e:Ljava/lang/String;

    iget v7, p0, Lcom/pingan/b/a/l;->f:I

    iget-wide v10, p0, Lcom/pingan/b/a/l;->h:J

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    invoke-static/range {v1 .. v12}, Lcom/pingan/b/a/l;->a(I[Lorg/apache/http/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/pingan/b/a/m;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/pingan/b/a/l;->c:Lcom/pingan/b/a/e;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/pingan/b/a/e;->a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 168
    return-void
.end method

.method public final onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public final onProgress(II)V
    .locals 4

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/pingan/b/a/l;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pingan/b/a/l;->h:J

    .line 172
    iget-object v0, p0, Lcom/pingan/b/a/l;->b:Lcom/pingan/b/a/j;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/pingan/b/a/l;->b:Lcom/pingan/b/a/j;

    invoke-interface {v0, p1, p2}, Lcom/pingan/b/a/j;->a(II)V

    .line 175
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pingan/b/a/l;->d:J

    .line 184
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 185
    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 15

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pingan/b/a/l;->d:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v10, v2, v4

    .line 150
    const/4 v3, 0x0

    .line 151
    const/4 v14, 0x0

    .line 1143
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v2, "utf-8"

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1144
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pingan/b/a/l;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/pingan/b/a/l;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/pingan/b/a/l;->e:Ljava/lang/String;

    iget v9, p0, Lcom/pingan/b/a/l;->f:I

    iget-wide v12, p0, Lcom/pingan/b/a/l;->h:J

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v14}, Lcom/pingan/b/a/l;->a(I[Lorg/apache/http/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/pingan/b/a/m;

    move-result-object v3

    .line 159
    iget-object v4, p0, Lcom/pingan/b/a/l;->c:Lcom/pingan/b/a/e;

    invoke-interface {v4, v3, v2}, Lcom/pingan/b/a/e;->a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v14

    move-object v2, v3

    goto :goto_0
.end method

.method protected final sendMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 203
    return-void

    .line 197
    :pswitch_0
    sget-object v0, Lcom/pingan/b/a/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/b/a/l;->e:Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/pingan/b/a/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
