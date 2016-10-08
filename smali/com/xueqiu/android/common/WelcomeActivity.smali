.class public Lcom/xueqiu/android/common/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z

.field private f:Lcom/xueqiu/android/common/account/a;

.field private g:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-boolean v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->a:Z

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->c:Ljava/lang/String;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->d:J

    .line 93
    iput-boolean v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->e:Z

    .line 97
    iput-boolean v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->g:Z

    .line 131
    new-instance v0, Lcom/xueqiu/android/common/WelcomeActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/WelcomeActivity$1;-><init>(Lcom/xueqiu/android/common/WelcomeActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/WelcomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xueqiu/android/common/WelcomeActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const v12, 0x7f040016

    const v11, 0x7f040015

    const/16 v10, 0x3e8

    const/4 v9, 0x1

    .line 298
    invoke-static {}, Lcom/xueqiu/android/base/SnowBallApplication;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1421
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    .line 2218
    iget-boolean v0, v0, Lcom/xueqiu/android/base/b;->b:Z

    .line 1421
    if-nez v0, :cond_0

    .line 1422
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/common/WelcomeActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/common/WelcomeActivity$5;-><init>(Lcom/xueqiu/android/common/WelcomeActivity;I)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 1428
    const-string v0, "WelcomeActivity"

    const-string v1, "waiting to intent once"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->a:Z

    if-eqz v0, :cond_2

    .line 2433
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x6

    invoke-direct {v0, v10, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2434
    const-string v1, "ad_id"

    iget-wide v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 2435
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 4041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    .line 2436
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2437
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v6, "0x05"

    .line 2438
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v7, "WIFI"

    .line 2439
    :goto_2
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-wide v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->d:J

    const-string v4, "0x01"

    new-instance v8, Lcom/xueqiu/android/common/WelcomeActivity$6;

    invoke-direct {v8, p0}, Lcom/xueqiu/android/common/WelcomeActivity$6;-><init>(Lcom/xueqiu/android/common/WelcomeActivity;)V

    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 307
    :cond_2
    if-ne p1, v9, :cond_b

    .line 4316
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4317
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4318
    const-string v1, "xueqiu://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4319
    const-string v1, "xueqiu://"

    const-string v2, "https://xueqiu.com/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4321
    :cond_3
    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4322
    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 4323
    invoke-virtual {p0, v12, v11}, Lcom/xueqiu/android/common/WelcomeActivity;->overridePendingTransition(II)V

    .line 4324
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->finish()V

    goto/16 :goto_0

    .line 2437
    :cond_4
    const-string v6, "0x04"

    goto :goto_1

    .line 2438
    :cond_5
    const-string v7, "2G/3G"

    goto :goto_2

    .line 5069
    :cond_6
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 5193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 4330
    if-nez v0, :cond_8

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 4332
    if-eqz v0, :cond_7

    .line 4333
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->f:Lcom/xueqiu/android/common/account/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/a;->a()V

    goto/16 :goto_0

    .line 4335
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4336
    const-string v1, "extra_mode"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 4337
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4338
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4339
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 4340
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->finish()V

    goto/16 :goto_0

    .line 4344
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4347
    iget-boolean v1, p0, Lcom/xueqiu/android/common/WelcomeActivity;->g:Z

    if-nez v1, :cond_9

    .line 4348
    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4349
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 4350
    invoke-virtual {p0, v12, v11}, Lcom/xueqiu/android/common/WelcomeActivity;->overridePendingTransition(II)V

    .line 4351
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->finish()V

    .line 4354
    :cond_9
    iget-boolean v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->g:Z

    if-eqz v0, :cond_a

    .line 4355
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->finish()V

    .line 4356
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/WelcomeActivity;->overridePendingTransition(II)V

    .line 7053
    :cond_a
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 4359
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xe

    invoke-direct {v1, v10, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 7364
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7368
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 7369
    if-nez v0, :cond_c

    .line 7370
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7371
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7372
    const-string v1, "extra_url"

    iget-object v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7373
    const-string v1, "extra_from_ad"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7374
    const-string v1, "extra_is_module"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7375
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 7386
    :cond_c
    :goto_3
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 8069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 8077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 7387
    iget-wide v4, p0, Lcom/xueqiu/android/common/WelcomeActivity;->d:J

    .line 7388
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/common/WelcomeActivity$4;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/common/WelcomeActivity$4;-><init>(Lcom/xueqiu/android/common/WelcomeActivity;)V

    .line 7386
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->d(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 7400
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 7401
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v10, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 7402
    const-string v1, "ad_id"

    iget-wide v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 7403
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 7404
    invoke-virtual {p0, v12, v11}, Lcom/xueqiu/android/common/WelcomeActivity;->overridePendingTransition(II)V

    .line 7405
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->finish()V

    goto/16 :goto_0

    .line 7377
    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7378
    const-class v1, Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7379
    const-string v1, "extra_from_ad"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7380
    const-string v1, "extra_url_path"

    iget-object v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7381
    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7382
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/xueqiu/android/common/WelcomeActivity;)V
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    .line 9167
    iget-boolean v3, p0, Lcom/xueqiu/android/common/WelcomeActivity;->e:Z

    if-eqz v3, :cond_8

    .line 9168
    iput-boolean v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->a:Z

    .line 9178
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->c()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 9179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 9181
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 9170
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    iget v1, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v14, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    .line 9184
    :cond_1
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 9185
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 9188
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 9192
    const-string v3, "image"

    invoke-static {v4, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 9193
    const-string v2, "image"

    invoke-virtual {v4, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 9194
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 9196
    :goto_2
    const-string v5, "timer"

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9197
    const-string v5, "timer"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    iput v5, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    .line 9199
    :cond_2
    const-string v5, "promotion_id"

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 9200
    const-string v5, "promotion_id"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/xueqiu/android/common/WelcomeActivity;->d:J

    .line 9202
    :cond_3
    if-eqz v3, :cond_0

    .line 9205
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 9206
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9207
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9214
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    .line 9216
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    .line 9217
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    .line 9218
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    .line 9219
    sub-long/2addr v10, v12

    sub-long/2addr v8, v10

    .line 9221
    long-to-float v8, v8

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v8, v9

    float-to-long v8, v8

    .line 9223
    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 9224
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 9225
    const/4 v1, 0x2

    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move v1, v0

    .line 9228
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9230
    const v0, 0x7f0e0388

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    .line 9231
    if-nez v1, :cond_7

    const-string v1, ".gif"

    .line 9232
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".GIF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9233
    :cond_5
    new-instance v1, Lpl/droidsonroids/gif/b;

    invoke-direct {v1, v3}, Lpl/droidsonroids/gif/b;-><init>(Ljava/io/File;)V

    .line 9234
    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9240
    :goto_3
    const v1, 0x7f0e0127

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 9242
    const v2, 0x7f040007

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 9244
    const-wide/16 v6, 0x514

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9245
    const v3, 0x7f040008

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 9247
    const-wide/16 v6, 0x514

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9249
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 9250
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 9252
    invoke-virtual {v0, v2}, Lpl/droidsonroids/gif/GifImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9253
    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9254
    const-string v1, "link"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "link"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_6

    .line 9255
    const-string v1, "link"

    invoke-virtual {v4, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 9256
    if-eqz v1, :cond_6

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 9257
    new-instance v2, Lcom/xueqiu/android/common/WelcomeActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/common/WelcomeActivity$2;-><init>(Lcom/xueqiu/android/common/WelcomeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lpl/droidsonroids/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9267
    :cond_6
    const v0, 0x7f0e0389

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9268
    const v1, 0x7f070391

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/common/WelcomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9269
    new-instance v1, Lcom/xueqiu/android/common/WelcomeActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/WelcomeActivity$3;-><init>(Lcom/xueqiu/android/common/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9276
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9277
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 9280
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 9281
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 9236
    :cond_7
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 9237
    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 9172
    :cond_8
    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->a(I)V

    goto/16 :goto_1

    :cond_9
    move-object v3, v2

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/xueqiu/android/common/WelcomeActivity;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/WelcomeActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/common/WelcomeActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 67
    .line 9287
    iget v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    .line 9288
    const v0, 0x7f0e0389

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9289
    if-eqz v0, :cond_0

    .line 9290
    const v1, 0x7f070391

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/common/WelcomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9292
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->b:I

    if-le v0, v5, :cond_1

    .line 9293
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/common/WelcomeActivity;)V
    .locals 1

    .prologue
    .line 67
    .line 10163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->a(I)V

    .line 67
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/common/WelcomeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 104
    const v0, 0x7f0300e8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sina.weibo.sdk.action.ACTION_SDK_RESP_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1170
    iput-object v1, v0, Lcom/xueqiu/android/base/b;->a:Landroid/os/Bundle;

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_just_show_welcome"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->g:Z

    .line 113
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->g:Z

    if-eqz v0, :cond_2

    .line 114
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/WelcomeActivity;->overridePendingTransition(II)V

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "first_publish_logo"

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/xueqiu/android/common/WelcomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    const v0, 0x7f0e038a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :cond_3
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->e:Z

    .line 127
    iget-object v2, p0, Lcom/xueqiu/android/common/WelcomeActivity;->h:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->e:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    new-instance v0, Lcom/xueqiu/android/common/account/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/account/a;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->f:Lcom/xueqiu/android/common/account/a;

    .line 129
    return-void

    .line 127
    :cond_4
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/xueqiu/android/common/WelcomeActivity;->f:Lcom/xueqiu/android/common/account/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/a;->b()V

    .line 416
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 417
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 411
    return-void
.end method
