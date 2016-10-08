.class public Lcom/sina/weibo/sdk/openapi/LogoutAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "LogoutAPI.java"


# static fields
.field private static final REVOKE_OAUTH_URL:Ljava/lang/String; = "https://api.weibo.com/oauth2/revokeoauth2"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 41
    return-void
.end method


# virtual methods
.method public logout(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 49
    const-string v0, "https://api.weibo.com/oauth2/revokeoauth2"

    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sina/weibo/sdk/openapi/LogoutAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 50
    return-void
.end method
