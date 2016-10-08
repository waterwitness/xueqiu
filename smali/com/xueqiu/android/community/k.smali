.class public final Lcom/xueqiu/android/community/k;
.super Landroid/content/BroadcastReceiver;
.source "RewardActivity.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RewardActivity;

.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/RewardActivity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/xueqiu/android/community/k;->a:Lcom/xueqiu/android/community/RewardActivity;

    .line 244
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/xueqiu/android/community/k;->b:Landroid/webkit/WebView;

    .line 246
    iput-object p3, p0, Lcom/xueqiu/android/community/k;->c:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lcom/xueqiu/android/community/k;->d:Ljava/lang/String;

    .line 248
    iput-object p5, p0, Lcom/xueqiu/android/community/k;->e:Ljava/lang/String;

    .line 249
    iput-object p6, p0, Lcom/xueqiu/android/community/k;->f:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 254
    const-string v0, "state_key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "solory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state  : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/community/k;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xueqiu/android/community/k;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/RewardActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/k;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xueqiu/android/community/k;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/RewardActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 265
    return-void

    .line 259
    :cond_1
    const-string v1, "erro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/xueqiu/android/community/k;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xueqiu/android/community/k;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/RewardActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    const-string v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/community/k;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xueqiu/android/community/k;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/RewardActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
