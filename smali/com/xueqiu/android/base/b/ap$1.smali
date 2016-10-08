.class final Lcom/xueqiu/android/base/b/ap$1;
.super Ljava/lang/Object;
.source "WeiBoAuthorize.java"

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ap;->a(Lcom/xueqiu/android/base/b/i;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/i;

.field final synthetic b:Lcom/xueqiu/android/base/b/ap;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ap;Lcom/xueqiu/android/base/b/i;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ap$1;->b:Lcom/xueqiu/android/base/b/ap;

    iput-object p2, p0, Lcom/xueqiu/android/base/b/ap$1;->a:Lcom/xueqiu/android/base/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "screen_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "profile_image_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/xueqiu/android/base/b/ap$1;->b:Lcom/xueqiu/android/base/b/ap;

    const-string v2, "screen_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    iput-object v0, v1, Lcom/xueqiu/android/base/b/ap;->e:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ap$1;->b:Lcom/xueqiu/android/base/b/ap;

    .line 2023
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ap;->a:Landroid/app/Activity;

    .line 91
    new-instance v1, Lcom/xueqiu/android/base/b/ap$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/ap$1$1;-><init>(Lcom/xueqiu/android/base/b/ap$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3

    .prologue
    .line 105
    const-string v0, "WeiBoAuthorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request weibo user info failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
