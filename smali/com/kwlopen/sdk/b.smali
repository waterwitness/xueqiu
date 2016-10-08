.class public abstract Lcom/kwlopen/sdk/b;
.super Lorg/apache/cordova/g;
.source "KwlOpenCordovaPlugin.java"


# instance fields
.field private d:Lorg/apache/cordova/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lorg/apache/cordova/g;

.field private i:Lorg/apache/cordova/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/g;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/kwlopen/sdk/b;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kwlopen/sdk/b;)Lorg/apache/cordova/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->d:Lorg/apache/cordova/b;

    return-object v0
.end method

.method private a(Lorg/apache/cordova/f;Lorg/apache/cordova/g;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/b;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    iput-object p1, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    .line 76
    iput-object p2, p0, Lcom/kwlopen/sdk/b;->h:Lorg/apache/cordova/g;

    .line 77
    iput-object p5, p0, Lcom/kwlopen/sdk/b;->d:Lorg/apache/cordova/b;

    .line 78
    const-string v2, "capture"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "vercode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kwlopen/sdk/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v2}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/kwlopen/sdk/activity/CaptureVideo;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1181
    const-string v2, "vercode"

    iget-object v3, p0, Lcom/kwlopen/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    iget-object v2, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    iget-object v3, p0, Lcom/kwlopen/sdk/b;->h:Lorg/apache/cordova/g;

    const/4 v4, 0x2

    invoke-interface {v2, v3, v0, v4}, Lorg/apache/cordova/f;->startActivityForResult(Lorg/apache/cordova/g;Landroid/content/Intent;I)V

    move v0, v1

    .line 152
    :cond_0
    :goto_1
    return v0

    .line 83
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 88
    :cond_1
    const-string v2, "uploadImage"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2171
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    iget-object v2, p0, Lcom/kwlopen/sdk/b;->h:Lorg/apache/cordova/g;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    .line 2172
    invoke-interface {v4}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/kwlopen/sdk/activity/SelectPicActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2171
    invoke-interface {v0, v2, v3, v1}, Lorg/apache/cordova/f;->startActivityForResult(Lorg/apache/cordova/g;Landroid/content/Intent;I)V

    move v0, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const-string v2, "showToast"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3158
    iget-wide v4, p0, Lcom/kwlopen/sdk/b;->g:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 3159
    iget-object v4, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v4}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "\u8bf7\u518d\u6309\u4e00\u6b21"

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3160
    iput-wide v2, p0, Lcom/kwlopen/sdk/b;->g:J

    :goto_2
    move v0, v1

    .line 97
    goto :goto_1

    .line 3162
    :cond_3
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 98
    :cond_4
    const-string v2, "refresh"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    const-string v2, "DIYCamera"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    const-string v2, "post"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 107
    const-string v2, "http://192.168.14.47:8088/kow/qwopenacct.do"

    .line 111
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "param"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 3292
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3298
    :try_start_2
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 3301
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3303
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 3305
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3306
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 3307
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->d:Lorg/apache/cordova/b;

    .line 4072
    new-instance v3, Lorg/apache/cordova/z;

    sget v4, Lorg/apache/cordova/aa;->b:I

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/z;-><init>(ILorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lorg/apache/cordova/b;->a(Lorg/apache/cordova/z;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    move v0, v1

    .line 117
    goto/16 :goto_1

    .line 3310
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 114
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 3313
    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 3316
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_3

    .line 3319
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 118
    :cond_7
    const-string v2, "openAccountFinish"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 121
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "company"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 124
    :catch_6
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 128
    :cond_8
    const-string v2, "openAccountSafeExit"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v2, "captureAnychatVideo"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "anychatServerAddr"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "anychatServerPort"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 134
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "anychatRemoteUserId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 135
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "mobileTel"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 138
    const-string v6, "anychatServerAddr"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v0, "anychatServerPort"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v0, "anychatRemoteUserId"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v0, "mobileTel"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    const/4 v2, 0x5

    invoke-interface {v0, p2, v5, v2}, Lorg/apache/cordova/f;->startActivityForResult(Lorg/apache/cordova/g;Landroid/content/Intent;I)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_7

    :goto_4
    move v0, v1

    .line 149
    goto/16 :goto_1

    .line 146
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic b(Lcom/kwlopen/sdk/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 332
    .line 335
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 338
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 344
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 186
    const-string v0, "onActivityResult cordovaOlugin"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    .line 189
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 191
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 192
    const-string v0, "errcode"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 193
    const-string v1, "errmsg"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v2}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 198
    :cond_0
    if-nez v0, :cond_5

    .line 200
    const-string v0, "flag"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult ---videoFragment="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    .line 202
    if-eqz v0, :cond_4

    .line 208
    if-ne v0, v4, :cond_3

    .line 210
    const-string v2, "errmsg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    const-string v2, "\u89c6\u9891\u89c1\u8bc1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kwlopen/sdk/b$1;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/b$1;-><init>(Lcom/kwlopen/sdk/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 4370
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    const-string v2, "\u5f71\u50cf\u4e0a\u4f20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/kwlopen/sdk/b$2;

    invoke-direct {v2, p0, v0}, Lcom/kwlopen/sdk/b$2;-><init>(Lcom/kwlopen/sdk/b;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u89c6\u9891\u8ba4\u8bc1\u4e0d\u901a\u8fc7\uff0c\u8bf7\u7ee7\u7eed\u8ba4\u8bc1"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 238
    :cond_4
    iget-object v1, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/kwlopen/sdk/b$3;

    invoke-direct {v2, p0, v0}, Lcom/kwlopen/sdk/b$3;-><init>(Lcom/kwlopen/sdk/b;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/kwlopen/sdk/b$4;

    invoke-direct {v2, p0, v0}, Lcom/kwlopen/sdk/b$4;-><init>(Lcom/kwlopen/sdk/b;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 259
    :cond_6
    if-ne p1, v4, :cond_7

    .line 260
    const-string v0, "photo_path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 264
    const-string v0, "videoPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4353
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4358
    :try_start_0
    invoke-static {v0}, Lcom/kwlopen/sdk/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 4359
    invoke-static {v0}, Lcom/b/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/b;->f:Ljava/lang/String;

    .line 4362
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kwlopen/sdk/b$6;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/b$6;-><init>(Lcom/kwlopen/sdk/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4369
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 270
    :cond_8
    if-eqz v0, :cond_1

    .line 275
    :try_start_1
    invoke-static {v0}, Lcom/kwlopen/sdk/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/b/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/b;->f:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/kwlopen/sdk/b;->i:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kwlopen/sdk/b$5;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/b$5;-><init>(Lcom/kwlopen/sdk/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 284
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/b;)Z
    .locals 6

    .prologue
    .line 70
    iget-object v1, p0, Lcom/kwlopen/sdk/b;->b:Lorg/apache/cordova/f;

    move-object v0, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwlopen/sdk/b;->a(Lorg/apache/cordova/f;Lorg/apache/cordova/g;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/b;)Z

    move-result v0

    return v0
.end method

.method public abstract refresh()V
.end method
