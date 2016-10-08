.class public final Lcom/xueqiu/android/base/b/o;
.super Landroid/content/BroadcastReceiver;
.source "QQAuthorize.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/m;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/m;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    const-string v1, "raw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 90
    const-string v4, "access_token="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1030
    iput-object v3, v4, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const-string v4, "expires_in="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2030
    iput-wide v2, v0, Lcom/xueqiu/android/base/b/m;->e:J

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    .line 3030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    .line 97
    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    .line 4030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->g:Lcom/xueqiu/android/base/b/h;

    .line 98
    invoke-interface {v0}, Lcom/xueqiu/android/base/b/h;->a()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    .line 5030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    .line 100
    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    .line 6030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    .line 101
    iget-object v1, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    .line 7030
    iget-object v1, v1, Lcom/xueqiu/android/base/b/m;->h:Lcom/xueqiu/android/base/b/o;

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/base/b/o;->a:Lcom/xueqiu/android/base/b/m;

    .line 8030
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xueqiu/android/base/b/m;->h:Lcom/xueqiu/android/base/b/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
