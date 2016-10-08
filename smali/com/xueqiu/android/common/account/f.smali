.class public final Lcom/xueqiu/android/common/account/f;
.super Landroid/content/BroadcastReceiver;
.source "ThirdAuthHelp.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/c;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/account/c;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 251
    const-string v1, "raw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 254
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 255
    const-string v4, "access_token="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    iget-object v4, p0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1059
    iput-object v3, v4, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const-string v4, "expires_in="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2059
    iput-wide v2, v0, Lcom/xueqiu/android/common/account/c;->f:J

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    .line 3059
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 263
    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    .line 4059
    const v1, 0x7f070216

    .line 4480
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 5059
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/c;->a(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/common/account/f;->a:Lcom/xueqiu/android/common/account/c;

    .line 6059
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 266
    new-instance v1, Lcom/xueqiu/android/common/account/f$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/f$1;-><init>(Lcom/xueqiu/android/common/account/f;)V

    invoke-static {v0, v1}, Lcom/tencent/tauth/TencentOpenAPI;->openid(Ljava/lang/String;Lcom/tencent/tauth/http/Callback;)V

    .line 291
    :cond_3
    return-void
.end method
