.class public final Lcom/xueqiu/android/base/t;
.super Ljava/lang/Object;
.source "SNBUserManager.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/trade/model/BrokerAccountToken;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public volatile e:Z

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method private constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    .line 50
    iput-boolean v6, p0, Lcom/xueqiu/android/base/t;->c:Z

    .line 52
    iput-boolean v7, p0, Lcom/xueqiu/android/base/t;->d:Z

    .line 54
    iput-boolean v6, p0, Lcom/xueqiu/android/base/t;->e:Z

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lcom/xueqiu/android/base/t;->g:Z

    .line 65
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 1238
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1239
    const-string v0, "access_token"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "access_token_encrypted"

    .line 1240
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    :cond_0
    const-string v0, "access_token"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1245
    invoke-static {}, Lcom/xueqiu/android/base/util/d;->a()Lcom/xueqiu/android/base/util/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/base/util/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1250
    :goto_0
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeAccessToken(Ljava/lang/String;)V

    .line 1251
    const-string v0, "userid"

    invoke-interface {v2, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeLogonUserId(J)V

    .line 1252
    const-string v0, "user_type_anonymous"

    invoke-interface {v2, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeUserIsAnonymous(Z)V

    .line 1253
    const-string v0, "expires_in"

    invoke-interface {v2, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeTokenExpiresIn(J)V

    .line 1254
    const-string v0, "refresh_token"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeRefreshToken(Ljava/lang/String;)V

    .line 1255
    const-string v0, "get_token_time"

    invoke-interface {v2, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeFetchTokenTime(J)V

    .line 1256
    const-string v0, "is_spam_user"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeIsSpamUser(Z)V

    .line 1257
    const-string v0, "user_telphone"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeUserTelephone(Ljava/lang/String;)V

    .line 1259
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1260
    const-string v2, "access_token"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1261
    const-string v2, "access_token_encrypted"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1262
    const-string v2, "userid"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1263
    const-string v2, "user_type_anonymous"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1264
    const-string v2, "expires_in"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1265
    const-string v2, "refresh_token"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1266
    const-string v2, "get_token_time"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1267
    const-string v2, "is_spam_user"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1268
    const-string v2, "user_telphone"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1203
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->isAnonymousUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/t;->d:Z

    .line 1204
    invoke-static {}, Lcom/xueqiu/android/base/t;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 1205
    iget-object v0, p0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v2, p0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1206
    iput-boolean v7, p0, Lcom/xueqiu/android/base/t;->c:Z

    .line 1207
    iget-boolean v0, p0, Lcom/xueqiu/android/base/t;->c:Z

    .line 1278
    if-eqz v0, :cond_2

    .line 1279
    const-string v0, "has_visited_user_guide"

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->e()Landroid/app/Application;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putBoolean(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1211
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    .line 1213
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/util/d;->a()Lcom/xueqiu/android/base/util/d;

    move-result-object v0

    const-string v2, "trade_tokens"

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/util/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 1214
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/t$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/t$2;-><init>(Lcom/xueqiu/android/base/t;)V

    .line 1216
    invoke-virtual {v2}, Lcom/xueqiu/android/base/t$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1214
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 1220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    .line 1223
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/t;->g:Z

    .line 66
    return-void

    .line 1247
    :cond_4
    const-string v0, "access_token_encrypted"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/xueqiu/android/base/t;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 158
    const-string v1, "extra_need_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 164
    const v0, 0x7f040012

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 166
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 376
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v1, "extra message"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "setMiUserAccount"

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/d;->a()Lcom/xueqiu/android/base/util/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/util/d;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    .line 285
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getAid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/xueqiu/android/base/t;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->isAnonymousUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/t;->d:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/t;->c:Z

    .line 84
    new-instance v0, Lcom/xueqiu/android/base/util/av;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/av;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/base/util/av;->a()V

    .line 85
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 1375
    invoke-static {}, Lcom/xueqiu/android/base/b;->k()V

    .line 1376
    invoke-static {}, Lcom/xueqiu/android/base/b;->l()V

    .line 86
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.intent.action.LOGGED_IN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 87
    return-void
.end method

.method public final a(Lcom/xueqiu/android/community/model/UserLogonData;)V
    .locals 8

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeLogonUserId(J)V

    .line 337
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->isAnonymousUser()Z

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeUserIsAnonymous(Z)V

    .line 338
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->isSpamUser()Z

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeIsSpamUser(Z)V

    .line 339
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeUserTelephone(Ljava/lang/String;)V

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->getExpiresInByInMillis()J

    move-result-wide v4

    .line 345
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/UserLogonData;->getFetchTokenTime()J

    move-result-wide v6

    move-object v1, p0

    .line 342
    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 346
    return-void
.end method

.method public final a(Lcom/xueqiu/android/trade/model/BrokerAccountToken;)V
    .locals 6

    .prologue
    .line 293
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setCreateTime(Ljava/util/Date;)V

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Lcom/xueqiu/android/base/t;->c()V

    .line 296
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    .line 327
    iput-object p1, p0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 328
    invoke-static {}, Lcom/xueqiu/android/base/util/d;->a()Lcom/xueqiu/android/base/util/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/base/util/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeAccessToken(Ljava/lang/String;)V

    .line 330
    invoke-static {p3, p4}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeTokenExpiresIn(J)V

    .line 331
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeRefreshToken(Ljava/lang/String;)V

    .line 332
    invoke-static {p5, p6}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->storeFetchTokenTime(J)V

    .line 333
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/xueqiu/android/base/t;->e:Z

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/t;->e:Z

    .line 124
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/t$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/t$1;-><init>(Lcom/xueqiu/android/base/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ai;->e(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    new-instance v2, Lcom/xueqiu/android/base/t$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/t$3;-><init>(Lcom/xueqiu/android/base/t;)V

    .line 300
    invoke-virtual {v2}, Lcom/xueqiu/android/base/t$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/xueqiu/android/base/util/d;->a()Lcom/xueqiu/android/base/util/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/util/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "trade_tokens"

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBytes(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 303
    return-void
.end method

.method public final logout()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 90
    iput-boolean v5, p0, Lcom/xueqiu/android/base/t;->c:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/t;->d:Z

    .line 92
    iput-object v4, p0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    const-string v1, "user_groups_cache_data"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v1, "investment_calendar_data_cache_obj"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v1, "last_update_friends_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v1, "bound_info"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v1, "hostory_Search"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v1, "pref_key_pattern_sha1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2306
    iget-object v0, p0, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2307
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 2308
    const-string v1, "trade_tokens"

    invoke-static {v0, v1, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBytes(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 2309
    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->clear()V

    .line 108
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->k()V

    .line 110
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 111
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 112
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.intent.action.LOGGED_OUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 115
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->c()V

    .line 116
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->d()V

    .line 117
    return-void
.end method
