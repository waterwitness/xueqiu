.class public Lcom/tencent/tauth/TencentOpenHost;
.super Ljava/lang/Object;
.source "TencentOpenHost.java"


# static fields
.field public static final GRAPH_ACCESS_TOKEN_URL:Ljava/lang/String; = "https://graph.qq.com/oauth2.0/authorize?response_type=token&display=mobile&client_id=%s&scope=%s&redirect_uri=%s&status_userip=%s&status_os=%s&status_machine=%s&status_version=%s"

.field public static final GRAPH_ADD_ALBUM:Ljava/lang/String; = "https://graph.qq.com/photo/add_album"

.field public static final GRAPH_ADD_SHARE:Ljava/lang/String; = "https://graph.qq.com/share/add_share"

.field public static final GRAPH_ADD_TOPIC:Ljava/lang/String; = "https://graph.qq.com/shuoshuo/add_topic"

.field static final GRAPH_ADD_WEIBO:Ljava/lang/String; = "https://graph.qq.com/wb/add_weibo"

.field public static final GRAPH_LIST_ALBUM:Ljava/lang/String; = "https://graph.qq.com/photo/list_album?access_token=%s&oauth_consumer_key=%s&openid=%s"

.field public static final GRAPH_OPENID_URL:Ljava/lang/String; = "https://graph.qq.com/oauth2.0/me?access_token=%s"

.field public static final GRAPH_UPLOAD_PIC:Ljava/lang/String; = "https://graph.qq.com/photo/upload_pic"

.field public static final GRAPH_USERINFO_URL:Ljava/lang/String; = "https://graph.qq.com/user/get_user_info?access_token=%s&oauth_consumer_key=%s&openid=%s"

.field public static final GRAPH_USERPROFILE_URL:Ljava/lang/String; = "https://graph.qq.com/user/get_user_profile?access_token=%s&oauth_consumer_key=%s&openid=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
