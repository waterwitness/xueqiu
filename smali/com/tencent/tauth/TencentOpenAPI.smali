.class public Lcom/tencent/tauth/TencentOpenAPI;
.super Ljava/lang/Object;
.source "TencentOpenAPI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TencentOpenAPI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/Callback;)V
    .locals 2

    .prologue
    .line 148
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "access_token"

    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "oauth_consumer_key"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "openid"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "https://graph.qq.com/photo/add_album"

    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/AddAlbumListener;

    invoke-direct {v1, p4}, Lcom/tencent/tauth/http/RequestListenerImpl/AddAlbumListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, p3, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncPost(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 154
    return-void
.end method

.method public static addShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/Callback;)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "source"

    const-string v1, "2"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "access_token"

    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "oauth_consumer_key"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "openid"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "https://graph.qq.com/share/add_share"

    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/AddShareListener;

    invoke-direct {v1, p4}, Lcom/tencent/tauth/http/RequestListenerImpl/AddShareListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, p3, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncPost(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 85
    return-void
.end method

.method public static addTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/Callback;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "access_token"

    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "oauth_consumer_key"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "openid"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "https://graph.qq.com/shuoshuo/add_topic"

    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/AddTopicListener;

    invoke-direct {v1, p4}, Lcom/tencent/tauth/http/RequestListenerImpl/AddTopicListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, p3, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncPost(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 117
    return-void
.end method

.method private static asyncPost(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V
    .locals 1

    .prologue
    .line 183
    const-string v0, "TencentOpenAPI"

    invoke-static {v0, p0}, Lcom/tencent/tauth/http/TDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/tencent/tauth/http/AsyncHttpPostRunner;

    invoke-direct {v0}, Lcom/tencent/tauth/http/AsyncHttpPostRunner;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/tauth/http/AsyncHttpPostRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 185
    return-void
.end method

.method private static asyncRequest(Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;)V
    .locals 2

    .prologue
    .line 178
    const-string v0, "TencentOpenAPI"

    invoke-static {v0, p0}, Lcom/tencent/tauth/http/TDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/tencent/tauth/http/AsyncHttpRequestRunner;

    invoke-direct {v0}, Lcom/tencent/tauth/http/AsyncHttpRequestRunner;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/tencent/tauth/http/AsyncHttpRequestRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 180
    return-void
.end method

.method public static listAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V
    .locals 3

    .prologue
    .line 131
    const-string v0, "https://graph.qq.com/photo/list_album?access_token=%s&oauth_consumer_key=%s&openid=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;

    invoke-direct {v1, p3}, Lcom/tencent/tauth/http/RequestListenerImpl/ListAlbumListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncRequest(Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 133
    return-void
.end method

.method public static openid(Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V
    .locals 3

    .prologue
    .line 37
    const-string v0, "https://graph.qq.com/oauth2.0/me?access_token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/OpenIDListener;

    invoke-direct {v1, p1}, Lcom/tencent/tauth/http/RequestListenerImpl/OpenIDListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncRequest(Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 39
    return-void
.end method

.method public static uploadPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/Callback;)V
    .locals 2

    .prologue
    .line 169
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "access_token"

    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "oauth_consumer_key"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "openid"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "https://graph.qq.com/photo/upload_pic"

    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;

    invoke-direct {v1, p4}, Lcom/tencent/tauth/http/RequestListenerImpl/UploadPicListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, p3, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncPost(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 175
    return-void
.end method

.method public static userInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V
    .locals 3

    .prologue
    .line 49
    const-string v0, "https://graph.qq.com/user/get_user_info?access_token=%s&oauth_consumer_key=%s&openid=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/UserInfoListener;

    invoke-direct {v1, p3}, Lcom/tencent/tauth/http/RequestListenerImpl/UserInfoListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncRequest(Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 51
    return-void
.end method

.method public static userProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V
    .locals 3

    .prologue
    .line 63
    const-string v0, "https://graph.qq.com/user/get_user_profile?access_token=%s&oauth_consumer_key=%s&openid=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/tencent/tauth/http/RequestListenerImpl/UserProfileListener;

    invoke-direct {v1, p3}, Lcom/tencent/tauth/http/RequestListenerImpl/UserProfileListener;-><init>(Lcom/tencent/tauth/http/Callback;)V

    invoke-static {v0, v1}, Lcom/tencent/tauth/TencentOpenAPI;->asyncRequest(Ljava/lang/String;Lcom/tencent/tauth/http/IRequestListener;)V

    .line 65
    return-void
.end method
