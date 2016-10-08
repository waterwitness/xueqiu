.class public final Lcom/xueqiu/android/base/b;
.super Ljava/lang/Object;
.source "AppEngine.java"


# static fields
.field private static d:Lcom/xueqiu/android/base/b;

.field private static e:Landroid/app/Application;


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Z

.field public c:Z

.field private f:Landroid/content/SharedPreferences;

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/xueqiu/android/base/b;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b;-><init>()V

    sput-object v0, Lcom/xueqiu/android/base/b;->d:Lcom/xueqiu/android/base/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/b;->a:Landroid/os/Bundle;

    .line 75
    iput v1, p0, Lcom/xueqiu/android/base/b;->g:I

    .line 76
    iput v1, p0, Lcom/xueqiu/android/base/b;->h:I

    .line 78
    iput-boolean v2, p0, Lcom/xueqiu/android/base/b;->b:Z

    .line 79
    iput-boolean v2, p0, Lcom/xueqiu/android/base/b;->c:Z

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/base/b;->i:J

    .line 84
    return-void
.end method

.method public static a()Lcom/xueqiu/android/base/b;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AppEngine has not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/b;->d:Lcom/xueqiu/android/base/b;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 95
    sput-object p0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "AppEngine already has create,there is something wrong "

    invoke-static {v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    return-object v0
.end method

.method public static e()Landroid/app/Application;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    return-object v0
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 26588
    invoke-virtual {v0}, Lcom/d/a/b/f;->c()V

    .line 26589
    iget-object v0, v0, Lcom/d/a/b/f;->b:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    invoke-interface {v0}, Lcom/d/a/a/b/c;->b()V

    .line 187
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 188
    return-void
.end method

.method public static i()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    const v2, 0x7f0701e0

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 27155
    sget-object v3, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 213
    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getInt(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v2

    .line 214
    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static j()Lcom/d/a/b/f;
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/d/a/b/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-static {}, Lcom/xueqiu/android/base/b;->m()V

    .line 226
    :cond_0
    return-object v0
.end method

.method public static k()V
    .locals 3

    .prologue
    .line 380
    sget-boolean v0, Lcom/xueqiu/android/message/client/MessageService;->a:Z

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 29155
    sget-object v1, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 381
    const-class v2, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 30155
    sget-object v1, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 382
    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 383
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xueqiu/android/message/client/MessageService;->a:Z

    .line 385
    :cond_0
    return-void
.end method

.method public static l()V
    .locals 3

    .prologue
    .line 388
    sget-boolean v0, Lcom/xueqiu/android/message/client/MessageService;->a:Z

    if-nez v0, :cond_0

    .line 31069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 31193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 388
    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 32155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 393
    :cond_0
    return-void
.end method

.method private static m()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/d/a/b/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 28155
    sget-object v1, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 260
    invoke-static {v1}, Lcom/xueqiu/android/base/util/n;->a(Landroid/content/Context;)Lcom/d/a/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/d/a/b/f;->a(Lcom/d/a/b/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 14

    .prologue
    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 396
    iget-boolean v0, p0, Lcom/xueqiu/android/base/b;->c:Z

    if-ne v0, p1, :cond_1

    .line 44144
    :cond_0
    :goto_0
    return-void

    .line 32403
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 33155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 32405
    if-eqz p1, :cond_2

    .line 32406
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.xueqiu.android.action.requestPrimary"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 32407
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.xueqiu.android.intent.action.USER_ONLINE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 32415
    :goto_1
    iput-boolean p1, p0, Lcom/xueqiu/android/base/b;->c:Z

    .line 35438
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/b/ai;->a(Z)V

    .line 32417
    invoke-static {p1}, Lcom/xueqiu/android/base/util/ax;->a(Z)V

    .line 32423
    if-nez p1, :cond_3

    .line 32424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/base/b;->i:J

    goto :goto_0

    .line 32409
    :cond_2
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.xueqiu.android.intent.action.USER_OFFLINE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 34053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 32410
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v4, 0x3e8

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 35053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 32412
    invoke-virtual {v0}, Lcom/xueqiu/android/base/h;->c()V

    goto :goto_1

    .line 32426
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 32427
    iget-wide v0, p0, Lcom/xueqiu/android/base/b;->i:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_5

    move v1, v2

    .line 32428
    :goto_2
    if-nez v1, :cond_4

    iget-wide v6, p0, Lcom/xueqiu/android/base/b;->i:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x493e0

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    .line 36128
    :cond_4
    iget-boolean v0, p0, Lcom/xueqiu/android/base/b;->b:Z

    if-nez v0, :cond_6

    .line 36129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must first init base components"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v1, v3

    .line 32427
    goto :goto_2

    .line 36367
    :cond_6
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getTokenExpiresIn()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    sub-long/2addr v4, v6

    .line 36368
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getFetchTokenTime()J

    move-result-wide v6

    .line 36369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_7

    .line 37069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 36370
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->b()V

    .line 36132
    :cond_7
    invoke-static {}, Lcom/xueqiu/android/base/s;->a()Lcom/xueqiu/android/base/s;

    move-result-object v4

    .line 37155
    sget-object v5, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 38102
    sget-boolean v0, Lcom/xueqiu/android/base/s;->c:Z

    if-eqz v0, :cond_8

    .line 38106
    const-string v0, "android_apk_version_config"

    const-string v6, "{}"

    invoke-static {v0, v6, v5}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38107
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/google/gson/JsonObject;

    invoke-virtual {v6, v0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 38108
    const-string v6, "android_apk_version_cancel_time"

    invoke-static {v6, v10, v11, v5}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getLong(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v6

    .line 38109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 39041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    .line 38111
    invoke-static {v5}, Lcom/xueqiu/android/base/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 38112
    const-string v11, "apk_version"

    const-string v12, ""

    invoke-static {v0, v11, v12}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 39197
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 38116
    if-nez v12, :cond_a

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    sub-long v6, v8, v6

    const-wide/32 v8, 0xf731400

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    .line 38117
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 38118
    const-string v6, "downloadUrl"

    .line 40106
    invoke-static {v0, v6, v13}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 38119
    const-string v7, "changeLog"

    .line 41106
    invoke-static {v0, v7, v13}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38120
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/xueqiu/android/base/s;->a:Ljava/lang/String;

    .line 38121
    iput-object v11, v4, Lcom/xueqiu/android/base/s;->b:Ljava/lang/String;

    .line 38122
    invoke-virtual {v4, v5, v6, v0, v3}, Lcom/xueqiu/android/base/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36133
    :cond_8
    :goto_3
    invoke-static {}, Lcom/xueqiu/android/base/b;->l()V

    .line 36134
    new-instance v0, Lcom/xueqiu/android/base/util/av;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/av;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/base/util/av;->a()V

    .line 42084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 36135
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/base/h5/e;->a(Z)V

    .line 42358
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v3, Lcom/xueqiu/android/base/b$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/b$3;-><init>(Lcom/xueqiu/android/base/b;)V

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5, v6}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 36137
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->b(Landroid/content/Context;)Lcom/xueqiu/android/base/n;

    move-result-object v0

    .line 43167
    iget-boolean v3, v0, Lcom/xueqiu/android/base/n;->c:Z

    if-nez v3, :cond_b

    .line 43175
    iget-object v3, v0, Lcom/xueqiu/android/base/n;->a:Landroid/content/Context;

    new-instance v4, Lcom/xueqiu/android/base/n$1;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/base/n$1;-><init>(Lcom/xueqiu/android/base/n;)V

    invoke-virtual {v0, v3, v4}, Lcom/xueqiu/android/base/n;->a(Landroid/content/Context;Lcom/xueqiu/android/base/o;)V

    .line 36139
    :goto_4
    const-string v0, "AppEngine"

    const-string v3, "executedTasksWhenAppInForeground"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32433
    :cond_9
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    iget-wide v4, p0, Lcom/xueqiu/android/base/b;->i:J

    .line 44124
    if-nez v1, :cond_c

    .line 44129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 44130
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 44131
    sub-long v4, v6, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 44132
    sget-object v1, Lcom/xueqiu/android/base/a;->a:Ljava/lang/String;

    const-string v3, "should show ad here"

    invoke-static {v1, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44133
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 44155
    sget-object v3, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 44133
    const-class v4, Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44135
    const-string v3, "extra_just_show_welcome"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44136
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44137
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 45155
    sget-object v2, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 44137
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44138
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/xueqiu/android/base/a$1;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/base/a$1;-><init>(Lcom/xueqiu/android/base/a;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 38124
    :cond_a
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 38125
    new-instance v6, Lcom/xueqiu/android/base/s$1;

    invoke-direct {v6, v4, v5}, Lcom/xueqiu/android/base/s$1;-><init>(Lcom/xueqiu/android/base/s;Landroid/content/Context;)V

    invoke-virtual {v0, v10, v6}, Lcom/xueqiu/android/base/b/ai;->j(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_3

    .line 43170
    :cond_b
    invoke-virtual {v0}, Lcom/xueqiu/android/base/n;->b()V

    goto :goto_4

    .line 44146
    :cond_c
    invoke-virtual {v0}, Lcom/xueqiu/android/base/a;->b()V

    goto/16 :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xueqiu/android/base/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 2041
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    .line 111
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 5084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v3

    .line 111
    invoke-static {v0, v3}, Lcom/xueqiu/android/base/s;->a(Landroid/content/Context;Lcom/xueqiu/android/base/h5/e;)Lcom/xueqiu/android/base/s;

    .line 112
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 6041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v3

    .line 112
    invoke-static {v0, v3}, Lcom/xueqiu/android/base/q;->a(Landroid/content/Context;Lcom/xueqiu/android/base/f;)Lcom/xueqiu/android/base/q;

    .line 113
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/c/b;->a(Landroid/content/Context;Lcom/xueqiu/android/base/q;)Lcom/xueqiu/android/base/c/b;

    .line 7041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 6268
    invoke-virtual {v0}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v0

    .line 6269
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->getUmengKey()Ljava/lang/String;

    move-result-object v3

    .line 6270
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 6271
    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Ljava/lang/String;)V

    .line 6272
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 6273
    invoke-static {v3}, Lcom/umeng/update/UpdateConfig;->setAppkey(Ljava/lang/String;)V

    .line 6274
    invoke-static {v0}, Lcom/umeng/update/UpdateConfig;->setChannel(Ljava/lang/String;)V

    .line 6276
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    .line 6277
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 6278
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateAutoPopup(Z)V

    .line 6279
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateCheckConfig(Z)V

    .line 7242
    new-instance v0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .line 8155
    sget-object v3, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 7242
    invoke-direct {v0, v3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 7243
    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v4, v5}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppReportDelay(J)Lcom/tencent/bugly/BuglyStrategy;

    .line 9041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v3

    .line 7244
    invoke-virtual {v3}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ClientInfo;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;

    .line 7245
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setDeviceID(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7247
    :try_start_2
    sget-object v3, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7248
    invoke-virtual {v0, v3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10041
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v3

    .line 7251
    invoke-virtual {v3}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ClientInfo;->getBuglyAppId()Ljava/lang/String;

    move-result-object v3

    .line 7252
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 10155
    sget-object v4, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 7252
    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 11077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 7253
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 6232
    invoke-static {}, Lcom/xueqiu/android/base/b;->m()V

    .line 6233
    invoke-static {}, Lcom/xueqiu/android/base/l;->a()Lcom/xueqiu/android/base/l;

    invoke-static {}, Lcom/xueqiu/android/base/l;->b()Lcom/xueqiu/android/base/m;

    .line 12041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 11283
    invoke-virtual {v0}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->getFlurryApiKey()Ljava/lang/String;

    move-result-object v0

    .line 12155
    sget-object v3, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 11284
    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 13069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 13077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 11285
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setUserId(Ljava/lang/String;)V

    .line 6236
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14159
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 13298
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 13299
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 15159
    sget-object v3, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 13300
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 13301
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 13302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 13303
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 13289
    :goto_2
    if-eqz v0, :cond_2

    .line 16041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 13290
    invoke-virtual {v0}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->getMiId()Ljava/lang/String;

    move-result-object v0

    .line 17041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v1

    .line 13291
    invoke-virtual {v1}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/ClientInfo;->getMiKey()Ljava/lang/String;

    move-result-object v1

    .line 17159
    sget-object v2, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 13292
    invoke-static {v2, v0, v1}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17311
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 18155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 17311
    new-instance v1, Lcom/xueqiu/android/base/p;

    invoke-direct {v1}, Lcom/xueqiu/android/base/p;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17312
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 19155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 17312
    new-instance v1, Lcom/xueqiu/android/base/p;

    invoke-direct {v1}, Lcom/xueqiu/android/base/p;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17313
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 20155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 17313
    new-instance v1, Lcom/xueqiu/android/base/p;

    invoke-direct {v1}, Lcom/xueqiu/android/base/p;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17315
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 21155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 17315
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    .line 17316
    new-instance v1, Lcom/xueqiu/android/trade/h;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/h;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 17318
    new-instance v1, Lcom/xueqiu/android/base/b$1;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b$1;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.envirnmentChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 17329
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 22155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 17329
    new-instance v1, Lcom/xueqiu/android/base/p;

    invoke-direct {v1}, Lcom/xueqiu/android/base/p;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.intent.action.SCHEDULED_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17330
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 23155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 17330
    const-string v1, "alarm"

    .line 17331
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 17332
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.intent.action.SCHEDULED_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17333
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 24155
    sget-object v2, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 17333
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 17334
    const/4 v1, 0x2

    const-wide/32 v2, 0x1b7740

    const-wide/32 v4, 0x1b7740

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24340
    :try_start_4
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 25155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 24340
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 24341
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 24342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 24343
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 25159
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 24343
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_3

    .line 24344
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xueqiu/android/base/b$2;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :cond_3
    :goto_3
    :try_start_5
    const-string v0, "AppEngine"

    const-string v1, "init base components finished"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/b;->b:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v2

    .line 13307
    goto/16 :goto_2

    .line 24353
    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/xueqiu/android/base/b;->b:Z

    if-nez v0, :cond_0

    .line 26149
    iget-boolean v0, p0, Lcom/xueqiu/android/base/b;->b:Z

    if-nez v0, :cond_0

    .line 26150
    invoke-virtual {p0}, Lcom/xueqiu/android/base/b;->b()V

    .line 146
    :cond_0
    return-void
.end method

.method public final f()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/base/b;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 26155
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    .line 164
    const-string v1, "logon_user_info_file_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/b;->f:Landroid/content/SharedPreferences;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/xueqiu/android/base/b;->g:I

    if-gez v0, :cond_0

    .line 192
    sget-object v0, Lcom/xueqiu/android/base/b;->e:Landroid/app/Application;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 193
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 194
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 195
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 197
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/xueqiu/android/base/b;->g:I

    goto :goto_0
.end method
