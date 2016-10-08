.class final Lcom/xueqiu/android/common/account/c$2;
.super Lcom/xueqiu/android/base/b/p;
.source "ThirdAuthHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/c;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/xueqiu/android/common/account/c$2;->a:Lcom/xueqiu/android/common/account/c;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 168
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_1

    .line 169
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 1064
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 170
    if-eqz v0, :cond_0

    const-string v0, "20607"

    .line 2064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$2;->a:Lcom/xueqiu/android/common/account/c;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/c;->b(Lcom/xueqiu/android/common/account/c;)V

    .line 3476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 172
    const v1, 0x7f070511

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 165
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 4181
    iget-object v0, p0, Lcom/xueqiu/android/common/account/c$2;->a:Lcom/xueqiu/android/common/account/c;

    .line 5476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 5193
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 5197
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 5198
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getExpiresIn()J

    move-result-wide v2

    .line 5199
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 5200
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    .line 5202
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    .line 5203
    new-instance v6, Lcom/xueqiu/android/community/model/UserLogonData;

    invoke-direct {v6}, Lcom/xueqiu/android/community/model/UserLogonData;-><init>()V

    .line 5204
    invoke-virtual {v6, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setAccessToken(Ljava/lang/String;)V

    .line 5205
    invoke-virtual {v6, v4}, Lcom/xueqiu/android/community/model/UserLogonData;->setRefreshToken(Ljava/lang/String;)V

    .line 5206
    invoke-virtual {v6, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setExpiresInByInMillis(J)V

    .line 5207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setGetTokenTime(J)V

    .line 5208
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setUserId(J)V

    .line 5209
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setAnonymousUser(Z)V

    .line 5211
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getUserState()J

    move-result-wide v2

    const-wide/32 v8, 0x1adb2

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 5212
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setSpamUser(Z)V

    .line 5213
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getTelephoneBinded()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setTelephone(Ljava/lang/String;)V

    .line 6069
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 5215
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/community/model/UserLogonData;)V

    .line 5217
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 5219
    iget-object v1, v0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 6476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 5220
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 5221
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    .line 7069
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 5224
    invoke-virtual {v1}, Lcom/xueqiu/android/base/t;->a()V

    .line 5225
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/xueqiu/android/common/account/c$3;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/common/account/c$3;-><init>(Lcom/xueqiu/android/common/account/c;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7500
    iget-object v1, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 5235
    new-instance v1, Landroid/content/Intent;

    .line 8476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 5235
    const-class v3, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5236
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5237
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/c;->a(Landroid/content/Intent;)V

    .line 9476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 4182
    const v1, 0x7f070503

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 165
    return-void
.end method
