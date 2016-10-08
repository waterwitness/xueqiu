.class final Lcom/tencent/open/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic a:Lcom/tencent/open/OpenUi;

.field private b:Lcom/tencent/tauth/IUiListener;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/tencent/open/OpenUi;Lcom/tencent/tauth/IUiListener;Z)V
    .locals 2

    .prologue
    .line 960
    iput-object p1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/OpenUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    iput-object p2, p0, Lcom/tencent/open/j;->b:Lcom/tencent/tauth/IUiListener;

    .line 962
    iput-boolean p3, p0, Lcom/tencent/open/j;->c:Z

    .line 963
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, TokenListener()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    .prologue
    .line 1037
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, TokenListener() onCancel"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/tencent/open/j;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 1039
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->b()V

    .line 1040
    return-void
.end method

.method public final onComplete(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 968
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, TokenListener() onComplete"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_0
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 971
    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    const-string v2, "openid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v3}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 980
    iget-object v3, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v3}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;Ljava/lang/String;)V

    .line 987
    :cond_0
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 988
    if-eqz v0, :cond_1

    .line 990
    :try_start_1
    iget-object v1, p0, Lcom/tencent/open/j;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v1}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 992
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pf"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1018
    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/tencent/open/j;->c:Z

    if-eqz v0, :cond_2

    .line 1019
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1024
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/open/j;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 1025
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->b()V

    .line 1026
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 995
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, TokenListener() onComplete error"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1020
    :catch_1
    move-exception v0

    .line 1021
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1022
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenUi, TokenListener() onComplete error"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .prologue
    .line 1030
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, TokenListener() onError"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/tencent/open/j;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 1032
    invoke-static {}, Lcom/tencent/record/debug/WnsClientLog;->a()Lcom/tencent/record/debug/WnsClientLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/record/debug/WnsClientLog;->b()V

    .line 1033
    return-void
.end method
