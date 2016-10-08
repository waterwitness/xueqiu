.class public Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "GroupAPI.java"


# static fields
.field public static final FEATURE_ALL:I = 0x0

.field public static final FEATURE_MUSICE:I = 0x4

.field public static final FEATURE_ORIGINAL:I = 0x1

.field public static final FEATURE_PICTURE:I = 0x2

.field public static final FEATURE_VIDEO:I = 0x3

.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/friendships/groups"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 44
    return-void
.end method

.method private buildeMembersParams(JJ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 281
    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 282
    const-string v1, "uid"

    invoke-virtual {v0, v1, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 283
    return-object v0
.end method


# virtual methods
.method public addMember(JJLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->buildeMembersParams(JJ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 220
    const-string v1, "https://api.weibo.com/2/friendships/groups/members/add.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 221
    return-void
.end method

.method public addMemberBatch(JLjava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 232
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->buildeMembersParams(JJ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 233
    const-string v1, "group_descriptions"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "https://api.weibo.com/2/friendships/groups/members/add_batch.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 235
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 165
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    const-string v1, "tags"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    const-string v1, "https://api.weibo.com/2/friendships/groups/create.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 173
    return-void
.end method

.method public deleteGroup(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 207
    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 208
    const-string v1, "https://api.weibo.com/2/friendships/groups/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 209
    return-void
.end method

.method public deleteMembers(JJLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->buildeMembersParams(JJ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 262
    const-string v1, "https://api.weibo.com/2/friendships/groups/members/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 263
    return-void
.end method

.method public groups(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 55
    const-string v1, "https://api.weibo.com/2/friendships/groups.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 56
    return-void
.end method

.method public isMember(JJLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->buildeMembersParams(JJ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 125
    const-string v1, "https://api.weibo.com/2/friendships/groups/is_member.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 126
    return-void
.end method

.method public listed()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public memberDescriptionPatch()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public members(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 102
    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 103
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 104
    const-string v1, "cursor"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 105
    const-string v1, "https://api.weibo.com/2/friendships/groups/members.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 106
    return-void
.end method

.method public membersIds()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public order(Ljava/lang/String;ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 274
    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 276
    const-string v1, "https://api.weibo.com/2/friendships/groups/order.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 277
    return-void
.end method

.method public showGroup(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 139
    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 140
    const-string v1, "https://api.weibo.com/2/friendships/groups/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 141
    return-void
.end method

.method public showGroupBatch(Ljava/lang/String;JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 4

    .prologue
    .line 151
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->buildeMembersParams(JJ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 152
    const-string v1, "https://api.weibo.com/2/friendships/groups/show_batch.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 153
    return-void
.end method

.method public timeline(JJJIIZILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 77
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 78
    const-string v0, "list_id"

    invoke-virtual {v1, v0, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 79
    const-string v0, "since_id"

    invoke-virtual {v1, v0, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 80
    const-string v0, "max_id"

    invoke-virtual {v1, v0, p5, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 81
    const-string v0, "count"

    invoke-virtual {v1, v0, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 82
    const-string v0, "page"

    invoke-virtual {v1, v0, p8}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 83
    const-string v2, "base_app"

    if-eqz p9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 84
    const-string v0, "feature"

    invoke-virtual {v1, v0, p10}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 85
    const-string v0, "https://api.weibo.com/2/friendships/groups/timeline.json"

    const-string v2, "GET"

    invoke-virtual {p0, v0, v1, v2, p11}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 86
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public timelineIds()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public update(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 186
    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 187
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    const-string v1, "description"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    const-string v1, "tags"

    invoke-virtual {v0, v1, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    const-string v1, "https://api.weibo.com/2/friendships/groups/update.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 197
    return-void
.end method

.method public updateMembers(JJLjava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->buildeMembersParams(JJ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 247
    invoke-static {p5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string v1, "group_description"

    invoke-virtual {v0, v1, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    const-string v1, "https://api.weibo.com/2/friendships/groups/members/update.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/GroupAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 251
    return-void
.end method
