.class final Lcom/xueqiu/android/base/b/ao$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "WeChatAuthorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/ao$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/ao$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/ao$1;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 41
    check-cast p1, Lorg/json/JSONObject;

    .line 1049
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao$1;->a:Lcom/xueqiu/android/base/b/ao;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2024
    iput-object v1, v0, Lcom/xueqiu/android/base/b/ao;->b:Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao$1;->a:Lcom/xueqiu/android/base/b/ao;

    const-string v1, "openid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3024
    iput-object v1, v0, Lcom/xueqiu/android/base/b/ao;->c:Ljava/lang/String;

    .line 1051
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao$1;->a:Lcom/xueqiu/android/base/b/ao;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4024
    iput-wide v2, v0, Lcom/xueqiu/android/base/b/ao;->d:J

    .line 1052
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao$1;->a:Lcom/xueqiu/android/base/b/ao;

    .line 5024
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao;->b:Ljava/lang/String;

    .line 1052
    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao$1;->a:Lcom/xueqiu/android/base/b/ao;

    .line 6024
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao;->f:Lcom/xueqiu/android/base/b/h;

    .line 1053
    invoke-interface {v0}, Lcom/xueqiu/android/base/b/h;->a()V

    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao$1;->a:Lcom/xueqiu/android/base/b/ao;

    .line 7024
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ao;->a:Landroid/app/Activity;

    .line 1055
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/b/ao$1$1;->a:Lcom/xueqiu/android/base/b/ao$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/b/ao$1;->a:Lcom/xueqiu/android/base/b/ao;

    .line 8024
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ao;->g:Landroid/content/BroadcastReceiver;

    .line 1055
    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
