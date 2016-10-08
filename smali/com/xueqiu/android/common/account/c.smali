.class public final Lcom/xueqiu/android/common/account/c;
.super Ljava/lang/Object;
.source "ThirdAuthHelp.java"


# instance fields
.field protected a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field b:Lcom/xueqiu/android/common/account/f;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J

.field protected g:Lcom/tencent/tauth/Tencent;

.field protected h:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field protected i:Ljava/lang/String;

.field j:Landroid/content/BroadcastReceiver;

.field k:Lcom/xueqiu/android/common/account/LoginActivity;

.field l:Landroid/content/BroadcastReceiver;

.field private m:Lcom/sina/weibo/sdk/auth/WeiboAuth;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/xueqiu/android/common/account/c;->m:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    .line 68
    iput-object v2, p0, Lcom/xueqiu/android/common/account/c;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 73
    const-string v0, "sina"

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/common/account/c;->f:J

    .line 78
    iput-object v2, p0, Lcom/xueqiu/android/common/account/c;->g:Lcom/tencent/tauth/Tencent;

    .line 83
    new-instance v0, Lcom/xueqiu/android/common/account/c$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/c$1;-><init>(Lcom/xueqiu/android/common/account/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->j:Landroid/content/BroadcastReceiver;

    .line 403
    new-instance v0, Lcom/xueqiu/android/common/account/c$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/c$4;-><init>(Lcom/xueqiu/android/common/account/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object p1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1386
    new-instance v0, Lcom/xueqiu/android/common/account/f;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/f;-><init>(Lcom/xueqiu/android/common/account/c;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->b:Lcom/xueqiu/android/common/account/f;

    .line 1387
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1388
    const-string v1, "com.tencent.auth.BROWSER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1389
    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->b:Lcom/xueqiu/android/common/account/f;

    .line 1504
    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v2, v1, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1135
    const-string v1, "com.xueqiu.android.intent.action.LOGGED_IN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 1136
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 1142
    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 1143
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateOnlyWifi(Z)V

    .line 1144
    invoke-static {v5}, Lcom/umeng/update/UmengUpdateAgent;->setUpdateAutoPopup(Z)V

    .line 1146
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboAuth;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    const-string v2, "669111051"

    const-string v3, "http://xueqiu.com"

    const-string v4, "follow_app_official_microblog,email"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->m:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    .line 1147
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->m:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 1148
    const-string v0, "100229413"

    .line 4476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 1148
    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->g:Lcom/tencent/tauth/Tencent;

    .line 5476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 1150
    const-string v1, "wx8be10642d9baf61f"

    invoke-static {v0, v1, v5}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/c;->h:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 1151
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->h:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wx8be10642d9baf61f"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 6476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 1154
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    .line 1155
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1156
    const-string v2, "wechat_intent_login"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1157
    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/c;)V
    .locals 7

    .prologue
    .line 59
    .line 8162
    const v0, 0x7f070216

    .line 8480
    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 8162
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/c;->a(Ljava/lang/String;)V

    .line 8163
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v5

    .line 8164
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 8165
    new-instance v6, Lcom/xueqiu/android/common/account/c$2;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/common/account/c$2;-><init>(Lcom/xueqiu/android/common/account/c;)V

    .line 8185
    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    const-string v2, "wc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8186
    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/common/account/c;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    :goto_0
    return-void

    .line 8188
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/c;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 59
    .line 9512
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/account/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/c;)V
    .locals 4

    .prologue
    .line 9355
    new-instance v0, Landroid/content/Intent;

    .line 9476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 9355
    const-class v2, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9356
    const-string v1, "extra_register_by"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9357
    const-string v1, "extra_oauth_expirein"

    iget-wide v2, p0, Lcom/xueqiu/android/common/account/c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 9358
    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    const-string v2, "wc"

    if-ne v1, v2, :cond_0

    .line 9359
    const-string v1, "extra_oauth_userid"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9360
    const-string v1, "extra_wechat_openid"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9364
    :goto_0
    const-string v1, "extra_oauth_token"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9365
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9366
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/c;->a(Landroid/content/Intent;)V

    .line 9367
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 59
    return-void

    .line 9362
    :cond_0
    const-string v1, "extra_oauth_userid"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->h()Landroid/app/Dialog;

    .line 497
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->h:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    const v0, 0x7f07057a

    .line 6480
    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 417
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 418
    const-string v1, "wx_login_state"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->h:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    goto :goto_0
.end method

.method protected final a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->g:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 401
    return-void
.end method

.method final a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/account/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/account/LoginActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 493
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lcom/xueqiu/android/common/account/d;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/d;-><init>(Lcom/xueqiu/android/common/account/c;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 425
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "reg_bindWeibo"

    .line 7088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->a:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lcom/xueqiu/android/common/account/d;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/d;-><init>(Lcom/xueqiu/android/common/account/c;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 431
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/b/m;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/c;->g()V

    .line 436
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->g:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    const-string v2, "all"

    new-instance v3, Lcom/xueqiu/android/common/account/e;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/account/e;-><init>(Lcom/xueqiu/android/common/account/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 447
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "reg_bindQQ"

    .line 8088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    return-void

    .line 438
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    const-class v2, Lcom/xueqiu/android/common/SNBTAuthView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    const-string v1, "client_id"

    const-string v2, "100229413"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "scope"

    const-string v2, "get_user_info,add_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v1, "target"

    const-string v2, "_self"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "callback"

    const-string v2, "tencentauth://auth.qq.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/b/m;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->g:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    const-string v2, "all"

    new-instance v3, Lcom/xueqiu/android/common/account/e;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/account/e;-><init>(Lcom/xueqiu/android/common/account/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 453
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/c;->g()V

    .line 464
    :goto_0
    return-void

    .line 455
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    const-class v2, Lcom/xueqiu/android/common/SNBTAuthView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    const-string v1, "client_id"

    const-string v2, "100229413"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v1, "scope"

    const-string v2, "get_user_info,add_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v1, "target"

    const-string v2, "_self"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "callback"

    const-string v2, "tencentauth://auth.qq.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/c;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c;->h:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/c;->a()V

    .line 473
    :cond_0
    return-void
.end method
