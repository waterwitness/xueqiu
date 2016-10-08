.class final Lcom/xueqiu/android/common/account/d;
.super Ljava/lang/Object;
.source "ThirdAuthHelp.java"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/c;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public final onComplete(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3059
    iput-wide v2, v0, Lcom/xueqiu/android/common/account/c;->f:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    const-string v0, "OAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    .line 4059
    iget-object v2, v2, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    .line 5059
    iget-object v2, v2, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    .line 6059
    iget-wide v2, v2, Lcom/xueqiu/android/common/account/c;->f:J

    .line 336
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "sina"

    .line 7059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/xueqiu/android/common/account/d;->a:Lcom/xueqiu/android/common/account/c;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/c;->a(Lcom/xueqiu/android/common/account/c;)V

    .line 340
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auth exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 345
    return-void
.end method
