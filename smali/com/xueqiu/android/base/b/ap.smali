.class public final Lcom/xueqiu/android/base/b/ap;
.super Ljava/lang/Object;
.source "WeiBoAuthorize.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/g;


# instance fields
.field a:Landroid/app/Activity;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field f:Lcom/xueqiu/android/base/b/h;

.field private g:Lcom/sina/weibo/sdk/auth/WeiboAuth;

.field private h:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->a:Landroid/app/Activity;

    .line 26
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->g:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    .line 27
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->h:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 29
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->b:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->c:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->e:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->f:Lcom/xueqiu/android/base/b/h;

    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ap;->a:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/xueqiu/android/base/b/ap;->f:Lcom/xueqiu/android/base/b/h;

    .line 39
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboAuth;

    iget-object v1, p0, Lcom/xueqiu/android/base/b/ap;->a:Landroid/app/Activity;

    const-string v2, "669111051"

    const-string v3, "http://xueqiu.com"

    const-string v4, "follow_app_official_microblog,email"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/WeiboAuth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->g:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    .line 40
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/xueqiu/android/base/b/ap;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xueqiu/android/base/b/ap;->g:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/b/ap;->h:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ap;->h:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lcom/xueqiu/android/base/b/aq;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/aq;-><init>(Lcom/xueqiu/android/base/b/ap;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 46
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ap;->h:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ap;->h:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 115
    :cond_0
    return-void
.end method

.method public final a(Lcom/xueqiu/android/base/b/i;)V
    .locals 6

    .prologue
    .line 82
    new-instance v0, Lcom/sina/weibo/sdk/openapi/UsersAPI;

    new-instance v1, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    iget-object v2, p0, Lcom/xueqiu/android/base/b/ap;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xueqiu/android/base/b/ap;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/openapi/UsersAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 83
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ap;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/base/b/ap$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/base/b/ap$1;-><init>(Lcom/xueqiu/android/base/b/ap;Lcom/xueqiu/android/base/b/i;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/sina/weibo/sdk/openapi/UsersAPI;->show(JLcom/sina/weibo/sdk/net/RequestListener;)V

    .line 108
    return-void
.end method
