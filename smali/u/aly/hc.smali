.class public final Lu/aly/hc;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# instance fields
.field a:Lu/aly/hg;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lu/aly/gr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lu/aly/hc;->b:I

    .line 60
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lu/aly/hc;->d:Ljava/lang/String;

    .line 61
    const/16 v0, 0x50

    iput v0, p0, Lu/aly/hc;->e:I

    .line 68
    iput-object p1, p0, Lu/aly/hc;->f:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lu/aly/gt;->b(Landroid/content/Context;)Lu/aly/gr;

    move-result-object v0

    iput-object v0, p0, Lu/aly/hc;->g:Lu/aly/gr;

    .line 70
    invoke-static {p1}, Lu/aly/hc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/hc;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    const-string v0, "Android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v0, "5.2.4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    invoke-static {p0}, Lu/aly/er;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-static {p0}, Lu/aly/er;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-static {p0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/ex;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lu/aly/hc;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v4, p0, Lu/aly/hc;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 110
    :cond_0
    :try_start_0
    iget-object v0, p0, Lu/aly/hc;->f:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    const-string v3, "cmwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3gwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "uniwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 117
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method private a([BLjava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 131
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 133
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 138
    const-string v2, "X-Umeng-Sdk"

    iget-object v4, p0, Lu/aly/hc;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "Msg-Type"

    const-string v4, "envelope"

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_0
    invoke-direct {p0}, Lu/aly/hc;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lu/aly/hc;->d:Ljava/lang/String;

    iget v5, p0, Lu/aly/hc;->e:I

    invoke-direct {v2, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 144
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 145
    const-string v5, "http.route.default-proxy"

    .line 144
    invoke-interface {v4, v5, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 149
    :cond_0
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    .line 150
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    array-length v5, p1

    int-to-long v6, v5

    .line 149
    invoke-direct {v2, v4, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 152
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 155
    iget-object v2, p0, Lu/aly/hc;->a:Lu/aly/hg;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/hc;->a:Lu/aly/hg;

    .line 1067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lu/aly/hg;->e:J

    .line 157
    :cond_1
    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lu/aly/hc;->a:Lu/aly/hg;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lu/aly/hc;->a:Lu/aly/hg;

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lu/aly/hg;->e:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v2, Lu/aly/hg;->c:I

    .line 161
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 163
    const-string v3, "MobclickAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "status code : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lu/aly/es;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 165
    const-string v2, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sent message to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/aly/es;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_3

    .line 170
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 173
    :try_start_1
    invoke-static {v2}, Lu/aly/ex;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 175
    :try_start_2
    invoke-static {v2}, Lu/aly/ex;->c(Ljava/io/InputStream;)V

    .line 190
    :goto_0
    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    invoke-static {v2}, Lu/aly/ex;->c(Ljava/io/InputStream;)V

    .line 176
    throw v0
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v2, "MobclickAgent"

    .line 186
    const-string v3, "ClientProtocolException,Failed to send message."

    .line 185
    invoke-static {v2, v3, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 187
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 179
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 181
    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    const-string v2, "MobclickAgent"

    const-string v3, "IOException,Failed to send message."

    invoke-static {v2, v3, v0}, Lu/aly/es;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 190
    goto :goto_0
.end method

.method private b([B)I
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 224
    new-instance v5, Lu/aly/dg;

    invoke-direct {v5}, Lu/aly/dg;-><init>()V

    .line 225
    new-instance v0, Lu/aly/fe;

    new-instance v2, Lu/aly/fu;

    invoke-direct {v2}, Lu/aly/fu;-><init>()V

    invoke-direct {v0, v2}, Lu/aly/fe;-><init>(Lu/aly/gd;)V

    .line 228
    :try_start_0
    invoke-virtual {v0, v5, p1}, Lu/aly/fe;->a(Lu/aly/fa;[B)V

    .line 230
    iget v0, v5, Lu/aly/dg;->a:I

    if-ne v0, v4, :cond_1

    .line 231
    iget-object v6, p0, Lu/aly/hc;->g:Lu/aly/gr;

    .line 1215
    iget-object v2, v5, Lu/aly/dg;->c:Lu/aly/bn;

    .line 2084
    if-eqz v2, :cond_0

    .line 3243
    iget-object v0, v2, Lu/aly/bn;->c:Ljava/lang/String;

    .line 3051
    invoke-static {v2}, Lu/aly/gr;->a(Lu/aly/bn;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 2089
    :goto_0
    if-eqz v0, :cond_0

    .line 2096
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    :try_start_1
    iget-object v3, v6, Lu/aly/gr;->b:Lu/aly/bn;

    .line 2100
    if-nez v3, :cond_7

    move-object v0, v2

    .line 2106
    :goto_1
    iput-object v0, v6, Lu/aly/gr;->b:Lu/aly/bn;

    .line 2096
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_0
    :try_start_2
    iget-object v0, p0, Lu/aly/hc;->g:Lu/aly/gr;

    .line 8166
    iget-object v1, v0, Lu/aly/gr;->b:Lu/aly/bn;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_1

    .line 8171
    :try_start_3
    new-instance v1, Lu/aly/fh;

    invoke-direct {v1}, Lu/aly/fh;-><init>()V

    iget-object v2, v0, Lu/aly/gr;->b:Lu/aly/bn;

    invoke-virtual {v1, v2}, Lu/aly/fh;->a(Lu/aly/fa;)[B

    move-result-object v1

    .line 8172
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lu/aly/gr;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, ".imprint"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lu/aly/ex;->a(Ljava/io/File;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 235
    :cond_1
    :goto_2
    :try_start_4
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send log:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8191
    iget-object v2, v5, Lu/aly/dg;->b:Ljava/lang/String;

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/es;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 240
    :goto_3
    iget v0, v5, Lu/aly/dg;->a:I

    if-ne v0, v4, :cond_b

    .line 241
    const/4 v0, 0x2

    .line 243
    :goto_4
    return v0

    .line 4196
    :cond_2
    :try_start_5
    iget-object v0, v2, Lu/aly/bn;->a:Ljava/util/Map;

    .line 3055
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    .line 3064
    goto :goto_0

    .line 3055
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bt;

    .line 4217
    iget-object v7, v0, Lu/aly/bt;->c:Ljava/lang/String;

    .line 3056
    invoke-static {v7}, Lu/aly/fb;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 5068
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 5069
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5194
    iget-wide v10, v0, Lu/aly/bt;->b:J

    .line 5070
    invoke-virtual {v8, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 5072
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 5073
    sget-object v9, Lu/aly/gr;->a:[B

    .line 5074
    const/4 v0, 0x4

    new-array v10, v0, [B

    move v0, v1

    .line 5076
    :goto_5
    if-lt v0, v13, :cond_5

    move v0, v1

    .line 3059
    :goto_6
    if-ge v0, v13, :cond_3

    .line 3060
    aget-byte v8, v7, v0

    aget-byte v9, v10, v0

    if-eq v8, v9, :cond_6

    move v0, v1

    goto/16 :goto_0

    .line 5077
    :cond_5
    aget-byte v11, v8, v0

    aget-byte v12, v9, v0

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 5076
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3059
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6111
    :cond_7
    if-nez v2, :cond_8

    move-object v0, v3

    .line 6112
    goto/16 :goto_1

    .line 6196
    :cond_8
    :try_start_6
    iget-object v7, v3, Lu/aly/bn;->a:Ljava/util/Map;

    .line 7196
    iget-object v0, v2, Lu/aly/bn;->a:Ljava/util/Map;

    .line 6118
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7220
    iget v0, v2, Lu/aly/bn;->b:I

    .line 7224
    iput v0, v3, Lu/aly/bn;->b:I

    .line 7225
    invoke-virtual {v3}, Lu/aly/bn;->a()V

    .line 6127
    invoke-static {v3}, Lu/aly/gr;->a(Lu/aly/bn;)Ljava/lang/String;

    move-result-object v0

    .line 7247
    iput-object v0, v3, Lu/aly/bn;->c:Ljava/lang/String;

    move-object v0, v3

    .line 6129
    goto/16 :goto_1

    .line 6118
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bt;

    invoke-virtual {v1}, Lu/aly/bt;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bt;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2096
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 237
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 6122
    :cond_a
    :try_start_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 8174
    :catch_1
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 243
    :cond_b
    const/4 v0, 0x3

    goto/16 :goto_4
.end method


# virtual methods
.method public final a([B)I
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 96
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_2
    return v0

    .line 86
    :cond_1
    sget-object v1, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v1}, Lu/aly/hc;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 87
    if-eqz v1, :cond_2

    .line 89
    iget-object v0, p0, Lu/aly/hc;->a:Lu/aly/hg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/hc;->a:Lu/aly/hg;

    .line 1057
    iget v2, v0, Lu/aly/hg;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lu/aly/hg;->a:I

    .line 1059
    iget-wide v2, v0, Lu/aly/hg;->e:J

    iput-wide v2, v0, Lu/aly/hg;->d:J

    goto :goto_1

    .line 93
    :cond_2
    iget-object v2, p0, Lu/aly/hc;->a:Lu/aly/hg;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lu/aly/hc;->a:Lu/aly/hg;

    .line 1063
    iget v3, v2, Lu/aly/hg;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lu/aly/hg;->b:I

    .line 84
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_4
    invoke-direct {p0, v1}, Lu/aly/hc;->b([B)I

    move-result v0

    goto :goto_2
.end method
