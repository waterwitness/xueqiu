.class final Lcom/xueqiu/android/common/account/a$1;
.super Lcom/xueqiu/android/base/b/p;
.source "AnonymousHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/SNBJSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget v0, v0, Lcom/xueqiu/android/common/account/a;->a:I

    if-ne v0, v1, :cond_1

    .line 73
    invoke-static {p1, v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/xueqiu/android/common/b;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 81
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v2, v2, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    const/high16 v1, 0x7f040000

    const v2, 0x7f040001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 67
    check-cast p1, Lcom/xueqiu/android/common/model/SNBJSONObject;

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    .line 2114
    :try_start_0
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/account/a;->d:Ljava/lang/String;

    .line 2115
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/account/a;->f:Ljava/lang/String;

    .line 2116
    const-string v1, "refresh_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/account/a;->e:Ljava/lang/String;

    .line 2117
    new-instance v1, Lcom/xueqiu/android/common/model/parser/UserParser;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/parser/UserParser;-><init>()V

    const-string v2, "user"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/model/parser/UserParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/account/a;->g:Lcom/xueqiu/android/community/model/User;

    .line 2119
    iget-object v1, v0, Lcom/xueqiu/android/common/account/a;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    .line 2121
    new-instance v1, Lcom/xueqiu/android/community/model/UserLogonData;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/UserLogonData;-><init>()V

    .line 2122
    iget-object v4, v0, Lcom/xueqiu/android/common/account/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/community/model/UserLogonData;->setAccessToken(Ljava/lang/String;)V

    .line 2123
    iget-object v4, v0, Lcom/xueqiu/android/common/account/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xueqiu/android/community/model/UserLogonData;->setRefreshToken(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setExpiresInByInMillis(J)V

    .line 2125
    iget-object v2, v0, Lcom/xueqiu/android/common/account/a;->g:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setUserId(J)V

    .line 2126
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/model/UserLogonData;->setAnonymousUser(Z)V

    .line 2127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setGetTokenTime(J)V

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 2128
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/community/model/UserLogonData;)V

    .line 2129
    iget-object v1, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    const-string v2, "key_is_new_user"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/account/a;->c:Z

    .line 2130
    iget-boolean v1, v0, Lcom/xueqiu/android/common/account/a;->c:Z

    if-nez v1, :cond_0

    .line 2132
    const-string v1, "is_new"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/account/a;->c:Z

    .line 2134
    iget-boolean v1, v0, Lcom/xueqiu/android/common/account/a;->c:Z

    if-eqz v1, :cond_0

    .line 2135
    iget-object v1, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    const-string v2, "key_is_new_user"

    iget-boolean v3, v0, Lcom/xueqiu/android/common/account/a;->c:Z

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3148
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/common/account/a;->g:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 3150
    invoke-virtual {v1}, Lcom/xueqiu/android/base/t;->a()V

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3151
    iget-object v1, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xueqiu/android/base/t;->a(Landroid/content/Context;)V

    .line 3153
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3154
    iget v2, v0, Lcom/xueqiu/android/common/account/a;->a:I

    if-ne v2, v6, :cond_2

    .line 3155
    iget-object v2, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    const-class v3, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3162
    :goto_0
    iget-object v2, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3163
    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1092
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget v0, v0, Lcom/xueqiu/android/common/account/a;->a:I

    if-ne v0, v6, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/xueqiu/android/common/b;

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$1;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 67
    :cond_1
    return-void

    .line 2139
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3157
    :cond_2
    iget-boolean v2, v0, Lcom/xueqiu/android/common/account/a;->h:Z

    if-eqz v2, :cond_3

    .line 3158
    const-string v2, "extra_need_login"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3160
    :cond_3
    iget-object v2, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    const-class v3, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method
