.class public Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "SearchAPI.java"


# static fields
.field public static final FRIEND_TYPE_ATTENTIONS:I = 0x0

.field public static final FRIEND_TYPE_FELLOWS:I = 0x1

.field public static final RANGE_ALL:I = 0x2

.field public static final RANGE_ATTENTIONS:I = 0x0

.field public static final RANGE_ATTENTION_TAGS:I = 0x1

.field public static final SCHOOL_TYPE_COLLEGE:I = 0x1

.field public static final SCHOOL_TYPE_JUNIOR:I = 0x4

.field public static final SCHOOL_TYPE_PRIMARY:I = 0x5

.field public static final SCHOOL_TYPE_SENIOR:I = 0x2

.field public static final SCHOOL_TYPE_TECHNICAL:I = 0x3

.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/search"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 51
    return-void
.end method

.method private buildBaseParams(Ljava/lang/String;I)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 147
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 149
    return-object v0
.end method


# virtual methods
.method public apps(Ljava/lang/String;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->buildBaseParams(Ljava/lang/String;I)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 119
    const-string v1, "https://api.weibo.com/2/search/suggestions/apps.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 120
    return-void
.end method

.method public atUsers(Ljava/lang/String;IIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 138
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 140
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 141
    const-string v1, "range"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 142
    const-string v1, "https://api.weibo.com/2/search/suggestions/at_users.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 143
    return-void
.end method

.method public companies(Ljava/lang/String;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->buildBaseParams(Ljava/lang/String;I)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 107
    const-string v1, "https://api.weibo.com/2/search/suggestions/companies.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 108
    return-void
.end method

.method public schools(Ljava/lang/String;IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->buildBaseParams(Ljava/lang/String;I)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 94
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 95
    const-string v1, "https://api.weibo.com/2/search/suggestions/schools.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 96
    return-void
.end method

.method public statuses(Ljava/lang/String;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->buildBaseParams(Ljava/lang/String;I)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 76
    const-string v1, "https://api.weibo.com/2/search/suggestions/statuses.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 77
    return-void
.end method

.method public users(Ljava/lang/String;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->buildBaseParams(Ljava/lang/String;I)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 64
    const-string v1, "https://api.weibo.com/2/search/suggestions/users.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/SearchAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 65
    return-void
.end method
