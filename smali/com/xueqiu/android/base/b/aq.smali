.class final Lcom/xueqiu/android/base/b/aq;
.super Ljava/lang/Object;
.source "WeiBoAuthorize.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ap;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ap;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/base/b/aq;->a:Lcom/xueqiu/android/base/b/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final onComplete(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/base/b/aq;->a:Lcom/xueqiu/android/base/b/ap;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    iput-object v1, v0, Lcom/xueqiu/android/base/b/ap;->b:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/base/b/aq;->a:Lcom/xueqiu/android/base/b/ap;

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2023
    iput-object v1, v0, Lcom/xueqiu/android/base/b/ap;->c:Ljava/lang/String;

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/aq;->a:Lcom/xueqiu/android/base/b/ap;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3023
    iput-wide v2, v0, Lcom/xueqiu/android/base/b/ap;->d:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/aq;->a:Lcom/xueqiu/android/base/b/ap;

    .line 4023
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ap;->a:Landroid/app/Activity;

    .line 60
    new-instance v1, Lcom/xueqiu/android/base/b/aq$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/b/aq$1;-><init>(Lcom/xueqiu/android/base/b/aq;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auth exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->b(Ljava/lang/String;)V

    .line 78
    return-void
.end method
