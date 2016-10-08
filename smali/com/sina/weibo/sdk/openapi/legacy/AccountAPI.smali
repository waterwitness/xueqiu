.class public Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "AccountAPI.java"


# static fields
.field public static final SCHOOL_TYPE_COLLEGE:I = 0x1

.field public static final SCHOOL_TYPE_JUNIOR:I = 0x4

.field public static final SCHOOL_TYPE_PRIMARY:I = 0x5

.field public static final SCHOOL_TYPE_SENIOR:I = 0x2

.field public static final SCHOOL_TYPE_TECHNICAL:I = 0x3

.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/account"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 50
    return-void
.end method


# virtual methods
.method public endSession(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 124
    const-string v0, "https://api.weibo.com/2/account/end_session.json"

    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    const-string v2, "POST"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 125
    return-void
.end method

.method public getEmail(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 62
    const-string v0, "https://api.weibo.com/2/account/profile/email.json"

    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 63
    return-void
.end method

.method public getPrivacy(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "https://api.weibo.com/2/account/get_privacy.json"

    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 59
    return-void
.end method

.method public getUid(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "https://api.weibo.com/2/account/get_uid.json"

    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 116
    return-void
.end method

.method public rateLimitStatus(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "https://api.weibo.com/2/account/rate_limit_status.json"

    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 107
    return-void
.end method

.method public schoolList(IIIILcom/sina/weibo/sdk/openapi/legacy/AccountAPI$CAPITAL;Ljava/lang/String;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 87
    const-string v1, "province"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 88
    const-string v1, "city"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 89
    const-string v1, "area"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 90
    const-string v1, "type"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p5}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI$CAPITAL;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const-string v1, "capital"

    invoke-virtual {p5}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI$CAPITAL;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    const-string v1, "count"

    invoke-virtual {v0, v1, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 97
    const-string v1, "https://api.weibo.com/2/account/profile/school_list.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p8}, Lcom/sina/weibo/sdk/openapi/legacy/AccountAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 98
    return-void

    .line 93
    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "keyword"

    invoke-virtual {v0, v1, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
