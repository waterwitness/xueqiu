.class final Lcom/tencent/open/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic a:Lcom/tencent/open/OpenUi;

.field private b:Lcom/tencent/tauth/IUiListener;

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/open/OpenUi;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    new-instance v0, Lcom/tencent/open/v;

    invoke-direct {v0, p0}, Lcom/tencent/open/v;-><init>(Lcom/tencent/open/i;)V

    iput-object v0, p0, Lcom/tencent/open/i;->i:Landroid/os/Handler;

    .line 1055
    iput-object p2, p0, Lcom/tencent/open/i;->c:Landroid/app/Activity;

    .line 1056
    iput-object p3, p0, Lcom/tencent/open/i;->d:Landroid/os/Bundle;

    .line 1057
    iput-object p4, p0, Lcom/tencent/open/i;->b:Lcom/tencent/tauth/IUiListener;

    .line 1058
    iput-object p5, p0, Lcom/tencent/open/i;->e:Ljava/lang/String;

    .line 1059
    iput-object p6, p0, Lcom/tencent/open/i;->f:Ljava/lang/String;

    .line 1060
    iput-object p7, p0, Lcom/tencent/open/i;->g:Ljava/lang/String;

    .line 1061
    iput-object p8, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    .line 1062
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1123
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener() relogin()"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v0}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/open/TContext;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    iget-object v1, p0, Lcom/tencent/open/i;->c:Landroid/app/Activity;

    const-string v2, "action_login"

    iget-object v3, p0, Lcom/tencent/open/i;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/i;->b:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/OpenUi;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    .line 1128
    return-void
.end method

.method static synthetic a(Lcom/tencent/open/i;)V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/tencent/open/i;->a()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/open/i;)Lcom/tencent/tauth/IUiListener;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/tencent/open/i;->b:Lcom/tencent/tauth/IUiListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/open/i;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/tencent/open/i;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    .prologue
    .line 1113
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener() onCancel"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    const-string v1, "action_check_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-direct {p0}, Lcom/tencent/open/i;->a()V

    .line 1119
    :cond_0
    return-void
.end method

.method public final onComplete(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 1067
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener() onComplete"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/4 v0, 0x0

    .line 1071
    :try_start_0
    const-string v1, "encry_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1078
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    const-string v2, "action_check_token"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1080
    const-string v0, "openSDK_LOG"

    const-string v2, "OpenUi, EncrytokenListener() onComplete validToken"

    invoke-static {v0, v2}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v0, "openSDK_LOG"

    const-string v2, "OpenUi, EncrytokenListener() validToken()"

    invoke-static {v0, v2}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    new-instance v0, Lcom/tencent/open/OpenApi;

    iget-object v2, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v2}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/open/OpenApi;-><init>(Lcom/tencent/open/TContext;)V

    .line 2135
    const-string v2, "https://openmobile.qq.com/user/user_login_statis"

    .line 2136
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2137
    const-string v4, "oauth_consumer_key"

    iget-object v5, p0, Lcom/tencent/open/i;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    const-string v4, "openid"

    iget-object v5, p0, Lcom/tencent/open/i;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    const-string v4, "access_token"

    iget-object v5, p0, Lcom/tencent/open/i;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    const-string v4, "encrytoken"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v1, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    invoke-static {v1}, Lcom/tencent/open/OpenUi;->a(Lcom/tencent/open/OpenUi;)Lcom/tencent/open/TContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    const-string v4, "POST"

    new-instance v5, Lcom/tencent/open/l;

    invoke-direct {v5, p0}, Lcom/tencent/open/l;-><init>(Lcom/tencent/open/i;)V

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V

    .line 1097
    :cond_0
    :goto_1
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener() onComplete writeEncryToken"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    invoke-virtual {v0}, Lcom/tencent/open/OpenUi;->a()V

    .line 1099
    return-void

    .line 1072
    :catch_0
    move-exception v1

    .line 1073
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1074
    const-string v2, "openSDK_LOG"

    const-string v3, "OpenUi, EncrytokenListener() onComplete error"

    invoke-static {v2, v3, v1}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 1083
    :cond_1
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener() onComplete relogin"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-direct {p0}, Lcom/tencent/open/i;->a()V

    goto :goto_1

    .line 1086
    :cond_2
    const-string v0, "action_challenge"

    iget-object v2, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "action_story"

    iget-object v2, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "action_invite"

    iget-object v2, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "action_brag"

    iget-object v2, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "action_ask"

    iget-object v2, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "action_gift"

    iget-object v2, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/i;->d:Landroid/os/Bundle;

    const-string v2, "encrytoken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/tencent/open/i;->a:Lcom/tencent/open/OpenUi;

    iget-object v1, p0, Lcom/tencent/open/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/open/i;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/i;->b:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/OpenUi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I

    .line 1095
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener() onComplete showDialog"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .prologue
    .line 1103
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenUi, EncrytokenListener() onError"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/tencent/open/i;->h:Ljava/lang/String;

    const-string v1, "action_check_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-direct {p0}, Lcom/tencent/open/i;->a()V

    .line 1109
    :cond_0
    return-void
.end method
