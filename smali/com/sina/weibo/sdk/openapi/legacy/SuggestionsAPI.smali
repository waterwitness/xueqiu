.class public Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "SuggestionsAPI.java"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/suggestions"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 45
    return-void
.end method

.method private builderCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 133
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 134
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 135
    return-object v0
.end method


# virtual methods
.method public byStatus(Ljava/lang/String;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 86
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "num"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 88
    const-string v1, "https://api.weibo.com/2/suggestions/users/may_interested.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 89
    return-void
.end method

.method public favoritesHot(IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->builderCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 116
    const-string v1, "https://api.weibo.com/2/suggestions/favorites/hot.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 117
    return-void
.end method

.method public mayInterested(IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->builderCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 74
    const-string v1, "https://api.weibo.com/2/suggestions/users/may_interested.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 75
    return-void
.end method

.method public notInterested(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 127
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 128
    const-string v1, "https://api.weibo.com/2/suggestions/users/not_interested.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 129
    return-void
.end method

.method public statusesHot(Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;ZIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 101
    invoke-direct {p0, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->builderCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v1

    .line 102
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 103
    const-string v2, "is_pic"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 104
    const-string v0, "https://api.weibo.com/2/suggestions/statuses/hot.json"

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 105
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usersHot(Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$USER_CATEGORY;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 61
    const-string v1, "category"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$USER_CATEGORY;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "https://api.weibo.com/2/suggestions/users/hot.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 63
    return-void
.end method
